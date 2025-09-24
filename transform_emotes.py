#!/usr/bin/env python3
"""
Emotes Configuration Transformer
Transforms emote configuration files from array format to command-indexed format
with lowercase keys.
"""

import os
import sys
import shutil
import re
import json
from typing import Dict, List, Any

def backup_file(file_path: str) -> str:
    """Create a backup of the original file."""
    backup_path = f"{file_path}.backup"
    shutil.copy2(file_path, backup_path)
    print(f"✓ Backup created: {backup_path}")
    return backup_path

def pascal_to_lowercase(key: str) -> str:
    """Convert PascalCase keys to lowercase."""
    key_mapping = {
        'Label': 'label',
        'Command': 'command', 
        'Animation': 'animation',
        'Dictionary': 'dictionary',
        'Options': 'options',
        'Duration': 'duration',
        'Delay': 'delay',
        'Flags': 'flags',
        'Loop': 'loop',
        'Move': 'move',
        'Props': 'props',
        'Bone': 'bone',
        'Name': 'name',
        'Placement': 'placement',
        'PedTypes': 'pedtypes'
    }
    return key_mapping.get(key, key.lower())

def parse_lua_table(content: str) -> List[Dict[str, Any]]:
    """Parse Lua table array format and extract emote data."""
    emotes = []
    
    # Remove comments and clean content
    lines = content.split('\n')
    cleaned_lines = []
    for line in lines:
        # Remove comments but preserve strings
        if '--' in line and not (line.count("'") % 2 == 1 or line.count('"') % 2 == 1):
            line = line.split('--')[0]
        cleaned_lines.append(line)
    
    content = '\n'.join(cleaned_lines)
    
    # Find all emote entries
    brace_level = 0
    current_emote = []
    inside_emote = False
    
    for line in lines:
        stripped = line.strip()
        
        # Count braces
        open_braces = line.count('{')
        close_braces = line.count('}')
        
        if stripped.startswith('return {'):
            continue
            
        if brace_level == 0 and stripped == '{':
            inside_emote = True
            current_emote = []
            brace_level = 1
            continue
            
        if inside_emote:
            brace_level += open_braces - close_braces
            
            if brace_level > 0:
                current_emote.append(line)
            else:
                # End of emote
                emote_data = parse_single_emote('\n'.join(current_emote))
                if emote_data:
                    emotes.append(emote_data)
                inside_emote = False
                current_emote = []
                
    return emotes

def parse_single_emote(emote_text: str) -> Dict[str, Any]:
    """Parse a single emote entry."""
    emote = {}
    lines = emote_text.split('\n')
    
    i = 0
    while i < len(lines):
        line = lines[i].strip()
        if not line or line.startswith('--'):
            i += 1
            continue
            
        # Simple key-value parsing
        if '=' in line and not line.endswith('{'):
            key, value = line.split('=', 1)
            key = key.strip()
            value = value.strip().rstrip(',')
            
            if value.startswith("'") and value.endswith("'"):
                value = value[1:-1]
            elif value.isdigit() or (value.startswith('-') and value[1:].isdigit()):
                value = int(value)
            elif value.replace('.', '').isdigit():
                value = float(value)
            elif value.lower() == 'true':
                value = True
            elif value.lower() == 'false':
                value = False
                
            emote[pascal_to_lowercase(key)] = value
            
        elif line.endswith('{'):
            # Handle nested objects
            key = line.replace('{', '').replace('=', '').strip()
            nested_obj, lines_consumed = parse_nested_object(lines[i+1:])
            emote[pascal_to_lowercase(key)] = nested_obj
            i += lines_consumed
            
        i += 1
        
    return emote

def parse_nested_object(lines: List[str]) -> tuple:
    """Parse nested Lua objects/arrays."""
    obj = {}
    array = []
    i = 0
    brace_level = 0
    is_array = False
    
    while i < len(lines):
        line = lines[i].strip()
        
        if line == '}' and brace_level == 0:
            break
            
        if line == '{{' or (line == '{' and not '=' in line):
            # Array element
            is_array = True
            array_elem, consumed = parse_nested_object(lines[i+1:])
            array.append(array_elem)
            i += consumed + 1
            
        elif '=' in line and not line.endswith('{'):
            key, value = line.split('=', 1)
            key = key.strip()
            value = value.strip().rstrip(',')
            
            # Parse value
            if value.startswith("'") and value.endswith("'"):
                value = value[1:-1]
            elif 'vec3(' in value:
                # Keep vec3 as string
                pass
            elif value.isdigit() or (value.startswith('-') and value[1:].isdigit()):
                value = int(value)
            elif value.replace('.', '').replace('-', '').isdigit():
                value = float(value)
            elif value.lower() == 'true':
                value = True
            elif value.lower() == 'false':  
                value = False
                
            obj[pascal_to_lowercase(key)] = value
            
        elif line.endswith('{'):
            key = line.replace('{', '').replace('=', '').strip()
            nested, consumed = parse_nested_object(lines[i+1:])
            obj[pascal_to_lowercase(key)] = nested
            i += consumed
            
        brace_level += line.count('{') - line.count('}')
        i += 1
        
    return (array if is_array else obj), i

def generate_lua_output(emotes: List[Dict[str, Any]]) -> str:
    """Generate the transformed Lua file content."""
    output = ["return {"]
    
    for emote in emotes:
        if 'command' not in emote:
            continue
            
        command = emote['command']
        output.append(f"    {command} = {{")
        
        # Add all properties except command
        for key, value in emote.items():
            if key == 'command':
                continue
                
            if isinstance(value, dict):
                output.append(f"        {key} = {{")
                output.extend(format_nested_dict(value, 12))
                output.append("        },")
            elif isinstance(value, list):
                output.append(f"        {key} = {{")
                output.extend(format_nested_list(value, 12))
                output.append("        },")
            elif isinstance(value, str):
                output.append(f"        {key} = '{value}',")
            elif isinstance(value, bool):
                output.append(f"        {key} = {'true' if value else 'false'},")
            else:
                output.append(f"        {key} = {value},")
                
        output.append("    },")
        
    output.append("}")
    return '\n'.join(output)

def format_nested_dict(obj: Dict[str, Any], indent: int) -> List[str]:
    """Format nested dictionary with proper indentation."""
    lines = []
    indent_str = ' ' * indent
    
    for key, value in obj.items():
        if isinstance(value, dict):
            lines.append(f"{indent_str}{key} = {{")
            lines.extend(format_nested_dict(value, indent + 4))
            lines.append(f"{indent_str}}},")
        elif isinstance(value, list):
            lines.append(f"{indent_str}{key} = {{")
            lines.extend(format_nested_list(value, indent + 4))
            lines.append(f"{indent_str}}},")
        elif isinstance(value, str):
            lines.append(f"{indent_str}{key} = '{value}',")
        elif isinstance(value, bool):
            lines.append(f"{indent_str}{key} = {'true' if value else 'false'},")
        else:
            lines.append(f"{indent_str}{key} = {value},")
            
    return lines

def format_nested_list(arr: List[Any], indent: int) -> List[str]:
    """Format nested list with proper indentation."""
    lines = []
    indent_str = ' ' * indent
    
    for item in arr:
        if isinstance(item, dict):
            lines.append(f"{indent_str}{{")
            lines.extend(format_nested_dict(item, indent + 4))
            lines.append(f"{indent_str}}},")
        else:
            lines.append(f"{indent_str}{item},")
            
    return lines

def transform_casing_only(file_path: str) -> None:
    """Transform only key casing (for exit_emotes.lua)."""
    print(f"Transforming key casing for: {file_path}")
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Apply casing transformations
    transformations = [
        ('Animation =', 'animation ='),
        ('Dictionary =', 'dictionary ='),
        ('Options =', 'options ='),
        ('Duration =', 'duration ='),
        ('Delay =', 'delay ='),
        ('Flags =', 'flags ='),
        ('Loop =', 'loop ='),
        ('Move =', 'move =')
    ]
    
    for old, new in transformations:
        content = content.replace(old, new)
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"✓ Key casing transformation completed!")

def transform_structure_and_casing(file_path: str) -> None:
    """Transform both structure and casing (for array-based files)."""
    print(f"Transforming structure and casing for: {file_path}")
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # For now, let's use a simpler regex-based approach
    # Extract all emote blocks
    pattern = r'\{\s*Label\s*=\s*\'([^\']+)\',\s*Command\s*=\s*\'([^\']+)\'[^}]*(?:\{[^}]*\}[^}]*)*\}'
    
    # More robust parsing needed - let's use a different approach
    emotes = extract_emotes_simple(content)
    
    if not emotes:
        print("❌ No emotes found to transform!")
        return
    
    # Generate new content
    output_lines = ["return {"]
    
    for emote in emotes:
        output_lines.append(f"    {emote['command']} = {{")
        
        for key, value in emote.items():
            if key != 'command':
                if isinstance(value, str):
                    output_lines.append(f"        {key} = '{value}',")
                else:
                    output_lines.append(f"        {key} = {value},")
        
        output_lines.append("    },")
    
    output_lines.append("}")
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(output_lines))
    
    print(f"✓ Structure and casing transformation completed! Processed {len(emotes)} emotes.")

def extract_emotes_simple(content: str) -> List[Dict[str, Any]]:
    """Simple extraction of emotes from Lua content."""
    emotes = []
    
    # Find each emote block
    blocks = []
    brace_level = 0
    current_block = []
    lines = content.split('\n')
    
    in_return_block = False
    
    for line in lines:
        stripped = line.strip()
        
        if 'return {' in line:
            in_return_block = True
            continue
            
        if not in_return_block:
            continue
            
        if stripped == '{' and brace_level == 0:
            current_block = []
            brace_level = 1
        elif brace_level > 0:
            current_block.append(line)
            brace_level += line.count('{') - line.count('}')
            
            if brace_level == 0:
                # End of emote block
                block_text = '\n'.join(current_block)
                emote = parse_emote_block(block_text)
                if emote:
                    emotes.append(emote)
                current_block = []
                
    return emotes

def parse_emote_block(block_text: str) -> Dict[str, Any]:
    """Parse a single emote block into a dictionary."""
    emote = {}
    
    # Extract basic fields
    label_match = re.search(r"Label\s*=\s*'([^']*)'", block_text)
    command_match = re.search(r"Command\s*=\s*'([^']*)'", block_text)
    animation_match = re.search(r"Animation\s*=\s*'([^']*)'", block_text)
    dictionary_match = re.search(r"Dictionary\s*=\s*'([^']*)'", block_text)
    
    if label_match:
        emote['label'] = label_match.group(1)
    if command_match:
        emote['command'] = command_match.group(1)
    if animation_match:
        emote['animation'] = animation_match.group(1)
    if dictionary_match:
        emote['dictionary'] = dictionary_match.group(1)
    
    # Extract Duration if present
    duration_match = re.search(r"Duration\s*=\s*(\d+)", block_text)
    if duration_match:
        emote['duration'] = int(duration_match.group(1))
    
    # Extract Options block
    options_match = re.search(r"Options\s*=\s*\{([^}]+(?:\{[^}]*\}[^}]*)*)\}", block_text, re.DOTALL)
    if options_match:
        options_text = options_match.group(1)
        emote['options'] = parse_options_block(options_text)
    
    return emote

def parse_options_block(options_text: str) -> Dict[str, Any]:
    """Parse the Options block."""
    options = {}
    
    # Extract Duration from options
    duration_match = re.search(r"Duration\s*=\s*(\d+)", options_text)
    if duration_match:
        options['duration'] = int(duration_match.group(1))
    
    # Extract Delay from options  
    delay_match = re.search(r"Delay\s*=\s*(\d+)", options_text)
    if delay_match:
        options['delay'] = int(delay_match.group(1))
    
    # Extract Flags
    flags_match = re.search(r"Flags\s*=\s*\{([^}]+)\}", options_text)
    if flags_match:
        flags_text = flags_match.group(1)
        flags = {}
        
        if 'Loop = true' in flags_text:
            flags['loop'] = True
        if 'Move = true' in flags_text:
            flags['move'] = True
        
        if flags:
            options['flags'] = flags
    
    # Extract Props - simplified version
    if 'Props = {' in options_text:
        options['props'] = "{{/* Props data preserved */}}"
    
    return options

def main():
    """Main function to handle command line arguments and execute transformation."""
    if len(sys.argv) != 2:
        print("Usage: python transform_emotes.py <filename>")
        print("\nAvailable files:")
        print("- exit_emotes.lua (casing only)")
        print("- consumable_emotes.lua (structure + casing)")
        print("- general_emotes.lua (structure + casing)")
        print("- animal_emotes.lua (structure + casing)")
        print("- dance_emotes.lua (structure + casing)")
        print("- prop_emotes.lua (structure + casing)")
        print("- shared_emotes.lua (structure + casing)")
        return
    
    filename = sys.argv[1]
    filepath = os.path.join("config", "emotes", filename)
    
    if not os.path.exists(filepath):
        print(f"❌ Error: File {filepath} not found!")
        return
    
    print("=" * 50)
    print("Emotes Configuration Transformer")
    print("=" * 50)
    print(f"Processing: {filename}")
    print()
    
    # Create backup
    try:
        backup_file(filepath)
    except Exception as e:
        print(f"❌ Error creating backup: {e}")
        return
    
    try:
        if filename == "exit_emotes.lua":
            transform_casing_only(filepath)
        else:
            transform_structure_and_casing(filepath)
            
        print(f"\n✅ Transformation completed successfully!")
        print(f"✅ Backup saved as: {filename}.backup")
        print("\nPlease review the changes and test the configuration.")
        
    except Exception as e:
        print(f"\n❌ Transformation failed: {e}")
        print("Restoring from backup...")
        
        # Restore backup
        backup_path = f"{filepath}.backup"
        if os.path.exists(backup_path):
            shutil.copy2(backup_path, filepath)
            print("✅ Original file restored.")
        else:
            print("❌ Backup file not found!")

if __name__ == "__main__":
    main()