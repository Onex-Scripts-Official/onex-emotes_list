--  ██████╗ ███╗   ██╗███████╗██╗  ██╗    ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
-- ██╔═══██╗████╗  ██║██╔════╝╚██╗██╔╝    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- ██║   ██║██╔██╗ ██║█████╗   ╚███╔╝     ███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
-- ██║   ██║██║╚██╗██║██╔══╝   ██╔██╗     ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
-- ╚██████╔╝██║ ╚████║███████╗██╔╝ ██╗    ███████║╚██████╗██║  ██║██║██║        ██║   ███████║
--  ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝
-- ===================== Official Information ================================================
name 'Onex Resource Module : Player Animation Kit'
description 'Emote List For Onex Emotes by frostfire'
author 'Frostfire#3400'
PowerdBy 'Onex Scripts'
-- ====================== Game Configuration =================================================
fx_version 'cerulean'
game 'gta5'
version '0.0.1'
this_is_a_map 'yes'
-- ====================  Resource UI  ========================================================
files {'conditionalanims.meta'}
-- ==================== Resource Configuration ===============================================
shared_scripts {'locales.lua', 'client/client.lua', 'client/locales/*.lua', 'AnimList.lua'}
dependencies {'/server:7290', '/onesync'}

data_file 'DLC_ITYP_REQUEST' 'stream/rpemotesreborn_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/brummie_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_camp_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/apple_1.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/kaykaymods_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/knjgh_pizzas.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/natty_props_lollipops.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ultra_ringcase.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pata_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/vedere_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pnwsigns.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pprp_icefishing.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/scully_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/samnick_prop_lighter01.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_murderpack.ytyp'

-- ==================== Resource Code Configuration  =============================================
lua54 'yes'
