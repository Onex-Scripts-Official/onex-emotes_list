--  ██████╗ ███╗   ██╗███████╗██╗  ██╗    ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
-- ██╔═══██╗████╗  ██║██╔════╝╚██╗██╔╝    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- ██║   ██║██╔██╗ ██║█████╗   ╚███╔╝     ███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
-- ██║   ██║██║╚██╗██║██╔══╝   ██╔██╗     ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
-- ╚██████╔╝██║ ╚████║███████╗██╔╝ ██╗    ███████║╚██████╗██║  ██║██║██║        ██║   ███████║
--  ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝
-- ===================== Official Information ================================================
name 'Onex Resource Module : Player Animation Kit'
description 'Modular Emote Configuration System for Onex Emotes by frostfire'
author 'Frostfire#3400'
PowerdBy 'Onex Scripts'
-- ====================== Game Configuration =================================================
fx_version 'cerulean'
game 'gta5'
version '0.0.1'
this_is_a_map 'yes'
-- ==================== Resource Configuration ===============================================
-- New modular config system with backward compatibility
shared_scripts { 'config/*.lua', 'config/emotes/*.lua' }
client_script 'imports.lua'
dependencies { '/server:7290', '/onesync' }
-- ==================== Resource Code Configuration  =============================================
lua54 'yes'
