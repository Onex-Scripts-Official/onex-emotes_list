return {
    carried3 = {
label = 'Carried 3',
        animation = 'couplepose2cmg_clip',
        dictionary = 'couplepose2cmg@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 0,
        otheremote = 'scarry3',
        placement = {vec3(0.01, 0.344, -0.01), vec3(180.0, 180.0, -1.999900)}
        }
        },
        synchronized = true
    },
    carry2 = {
label = 'Carry 2',
        animation = 'idle',
        dictionary = 'anim@heists@box_carry@',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        bone = 40269,
        otheremote = 'scarried2'
        }
        },
        skiprequest = true,
        synchronized = true
    },
    hugtip = {
label = 'Hug Pose Tippy Toes',
        animation = 'friendship007',
        dictionary = 'littlespoon@friendship007',
        options = {
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'hugtip2'
        }
        },
        synchronized = true
    },
    hugtip2 = {
label = 'Hug Pose Tippy Toes 2',
        animation = 'friendship008',
        dictionary = 'littlespoon@friendship008',
        options = {
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'hugtip'
        }
        },
        synchronized = true
    },
    sbaseball = {
label = 'Baseball',
        animation = 'baseball_a_player_a',
        dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        options = {
        shared = {
        otheremote = 'sbaseballthrow'
        }
        },
        synchronized = true
    },
    sbaseballthrow = {
label = 'Baseball Throw',
        animation = 'baseball_a_player_b',
        dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        options = {
        shared = {
        otheremote = 'sbaseball'
        }
        },
        synchronized = true
    },
    sbro = {
label = 'Bro',
        animation = 'hugs_guy_a',
        dictionary = 'mp_ped_interaction',
        options = {
        shared = {
        frontoffset = 1.14,
        otheremote = 'sbro2'
        }
        },
        synchronized = true
    },
    sbro2 = {
label = 'Bro 2',
        animation = 'hugs_guy_b',
        dictionary = 'mp_ped_interaction',
        options = {
        shared = {
        frontoffset = 1.14,
        otheremote = 'sbro'
        }
        },
        synchronized = true
    },
    scarried = {
label = 'Carried',
        animation = 'firemans_carry',
        dictionary = 'nm',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 40269,
        otheremote = 'scarry',
        placement = {vec3(-0.14, 0.15, 0.14), vec3(0.0, -59.0, -4.5)}
        }
        },
        synchronized = true
    },
    scarried2 = {
label = 'Carried 2',
        animation = 'base',
        dictionary = 'amb@code_human_in_car_idles@generic@ps@base',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 28252,
        otheremote = 'carry2',
        placement = {vec3(0.35, 0.15, -0.15), vec3(-42.5, -22.5, 22.5)}
        }
        },
        synchronized = true
    },
    scarry = {
label = 'Carry',
        animation = 'fin_c2_mcs_1_camman',
        dictionary = 'missfinale_c2mcs_1',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'scarried'
        }
        },
        skiprequest = true,
        synchronized = true
    },
    scarry3 = {
label = 'Carry 3',
        animation = 'couplepose1cmg_clip',
        dictionary = 'couplepose1cmg@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'carried3'
        }
        },
        synchronized = true
    },
    scbdog = {
label = 'Carry Big Dog',
        animation = 'idle',
        dictionary = 'anim@heists@box_carry@',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'scbdog2'
        }
        },
        synchronized = true
    },
    scbdog2 = {
label = 'Big Dog Carried',
        animation = 'sleep_in_kennel',
        dictionary = 'creatures@rottweiler@amb@sleep_in_kennel@',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        otheremote = 'scbdog',
        placement = {vec3(-0.1, 0.65, 0.43), vec3(0.0, 0.0, -100.0)}
        }
        },
        synchronized = true
    },
    scoupleanim = {
label = 'Couple Drinking (Wine Glasses)',
        animation = 'action_var_01_bank_manager',
        dictionary = 'anim@scripted@robbery@tun_prep_uni_ig1_couple@',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 60309,
        name = 'p_wine_glass_s',
        placement = {vec3(-0.05, -0.01, -0.17), vec3(0.0, 0.0, 0.0)}
        }},
        shared = {
        otheremote = 'scoupleanim2'
        }
        },
        synchronized = true
    },
    scoupleanim2 = {
label = 'Couple Drinking F (Wine Glasses)',
        animation = 'action_var_01_female',
        dictionary = 'anim@scripted@robbery@tun_prep_uni_ig1_couple@',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 28422,
        name = 'p_wine_glass_s',
        placement = {vec3(0.0, 0.0, 0.0), vec3(0.0, 0.0, 0.0)}
        }},
        shared = {
        frontoffset = 0.11,
        otheremote = 'scoupleanim',
        sideoffset = -0.04125
        }
        },
        synchronized = true
    },
    scprs = {
label = 'Give CPR',
        animation = 'cpr_pumpchest',
        dictionary = 'mini@cpr@char_a@cpr_str',
        options = {
        delay = 250,
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'scprs2'
        }
        },
        synchronized = true
    },
    scprs2 = {
label = 'Get CPR',
        animation = 'cpr_pumpchest',
        dictionary = 'mini@cpr@char_b@cpr_str',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        otheremote = 'scprs',
        placement = {vec3(0.35, 0.8, 0.0), vec3(0.0, 0.0, 270.0)}
        }
        },
        synchronized = true
    },
    scprs3 = {
label = 'Give CPR 2',
        animation = 'cpr_loop_paramedic',
        dictionary = 'missheistfbi3b_ig8_2',
        options = {
        delay = 250,
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'scprs4'
        }
        },
        synchronized = true
    },
    scprs4 = {
label = 'Get CPR 2',
        animation = 'cpr_loop_victim',
        dictionary = 'missheistfbi3b_ig8_2',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        otheremote = 'scprs3',
        placement = {vec3(0.35, 0.65, 0.0), vec3(0.0, 0.0, 270.0)}
        }
        },
        synchronized = true
    },
    sgive = {
label = 'Give',
        animation = 'givetake1_a',
        dictionary = 'mp_common',
        options = {
        duration = 2000,
        flags = {
        move = true
        },
        shared = {
        otheremote = 'sgive2'
        }
        },
        synchronized = true
    },
    sgive2 = {
label = 'Give 2',
        animation = 'givetake1_b',
        dictionary = 'mp_common',
        options = {
        duration = 2000,
        flags = {
        move = true
        },
        shared = {
        otheremote = 'sgive'
        }
        },
        synchronized = true
    },
    sgiveblowjob = {
label = 'Give Blowjob',
        animation = 'pimpsex_hooker',
        dictionary = 'misscarsteal2pimpsex',
        options = {
        duration = 3,
        shared = {
        frontoffset = 0.63,
        otheremote = 'sreceiveblowjob'
        }
        },
        nsfw = true,
        synchronized = true
    },
    shandshake = {
label = 'Handshake',
        animation = 'handshake_guy_a',
        dictionary = 'mp_ped_interaction',
        options = {
        duration = 3000,
        flags = {
        move = true
        },
        shared = {
        frontoffset = 0.9,
        otheremote = 'shandshake2'
        }
        },
        synchronized = true
    },
    shandshake2 = {
label = 'Handshake 2',
        animation = 'handshake_guy_b',
        dictionary = 'mp_ped_interaction',
        options = {
        duration = 3000,
        flags = {
        move = true
        },
        shared = {
        otheremote = 'shandshake'
        }
        },
        synchronized = true
    },
    sheadbutt = {
label = 'Headbutt',
        animation = 'plyr_takedown_front_headbutt',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        shared = {
        otheremote = 'sheadbutted'
        }
        },
        synchronized = true
    },
    sheadbutted = {
label = 'Headbutted',
        animation = 'victim_takedown_front_headbutt',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        shared = {
        otheremote = 'sheadbutt'
        }
        },
        synchronized = true
    },
    shostage = {
label = 'Take hostage',
        animation = 'perp_idle',
        dictionary = 'anim@gangops@hostage@',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'shostage2'
        }
        },
        synchronized = true
    },
    shostage2 = {
label = 'Be hostage',
        animation = 'victim_idle',
        dictionary = 'anim@gangops@hostage@',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        otheremote = 'shostage',
        placement = {vec3(-0.3, 0.1, 0.0), vec3(0.0, 0.0, 0.0)}
        }
        },
        synchronized = true
    },
    shug = {
label = 'Hug',
        animation = 'kisses_guy_a',
        dictionary = 'mp_ped_interaction',
        options = {
        duration = 5000,
        shared = {
        frontoffset = 1.05,
        otheremote = 'shug2'
        }
        },
        synchronized = true
    },
    shug2 = {
label = 'Hug 2',
        animation = 'kisses_guy_b',
        dictionary = 'mp_ped_interaction',
        options = {
        duration = 5000,
        shared = {
        frontoffset = 1.18,
        otheremote = 'shug'
        }
        },
        synchronized = true
    },
    shug3 = {
label = 'Hug Romantic 1',
        animation = 'chad_armsaround_chad',
        dictionary = 'misscarsteal2chad_goodbye',
        options = {
        flags = {
        loop = true
        },
        shared = {
        frontoffset = 0.52,
        otheremote = 'shug4',
        sideoffset = -0.05
        }
        },
        synchronized = true
    },
    shug4 = {
label = 'Hug Romantic 2',
        animation = 'chad_armsaround_girl',
        dictionary = 'misscarsteal2chad_goodbye',
        options = {
        flags = {
        loop = true
        },
        shared = {
        frontoffset = 0.52,
        otheremote = 'shug3',
        sideoffset = -0.05
        }
        },
        synchronized = true
    },
    skiss = {
label = 'Kiss',
        animation = 'cs_lestercrest_3_dual-20',
        dictionary = 'hs3_ext-20',
        options = {
        duration = 1,
        shared = {
        frontoffset = 0.08,
        otheremote = 'skiss2'
        }
        },
        synchronized = true
    },
    skiss2 = {
label = 'Kiss 2',
        animation = 'csb_georginacheng_dual-20',
        dictionary = 'hs3_ext-20',
        options = {
        duration = 1,
        shared = {
        frontoffset = 0.08,
        otheremote = 'skiss'
        }
        },
        synchronized = true
    },
    skiss3 = {
label = 'Kiss 3',
        animation = 'cs_lestercrest_3_dual-19',
        dictionary = 'hs3_ext-19',
        options = {
        duration = 1,
        shared = {
        frontoffset = 0.08,
        otheremote = 'skiss4'
        }
        },
        synchronized = true
    },
    skiss4 = {
label = 'Kiss 4',
        animation = 'csb_georginacheng_dual-19',
        dictionary = 'hs3_ext-19',
        options = {
        duration = 1,
        shared = {
        frontoffset = 0.08,
        otheremote = 'skiss3'
        }
        },
        synchronized = true
    },
    sliftme = {
label = 'Lift Me',
        animation = 'couplepose1pack1anim2_clip',
        dictionary = 'couplepose1pack1anim2@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'sliftme2'
        }
        },
        synchronized = true
    },
    sliftme2 = {
label = 'Lift Me 2',
        animation = 'couplepose1pack1anim1_clip',
        dictionary = 'couplepose1pack1anim1@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 0,
        otheremote = 'sliftme',
        placement = {vec3(0.002, 0.287, 0.25), vec3(0.0, 0.0, 180.0)}
        }
        },
        synchronized = true
    },
    sliftme3 = {
label = 'Lift Me 3',
        animation = 'couplepose2pack1anim2_clip',
        dictionary = 'couplepose2pack1anim2@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'sliftme4'
        }
        },
        synchronized = true
    },
    sliftme4 = {
label = 'Lift Me 4',
        animation = 'couplepose2pack1anim1_clip',
        dictionary = 'couplepose2pack1anim1@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 0,
        otheremote = 'sliftme3',
        placement = {vec3(0.01, 0.48, 0.53), vec3(0.0, 0.0, 180.0)}
        }
        },
        synchronized = true
    },
    sliftme5 = {
label = 'Lift Me 5',
        animation = 'couplepose3pack1anim2_clip',
        dictionary = 'couplepose3pack1anim2@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        otheremote = 'sliftme6'
        }
        },
        synchronized = true
    },
    sliftme6 = {
label = 'Lift Me 6',
        animation = 'couplepose3pack1anim1_clip',
        dictionary = 'couplepose3pack1anim1@animation',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 0,
        otheremote = 'sliftme5',
        placement = {vec3(-0.212, -0.54, -0.1), vec3(0.0, 0.0, 0.0)}
        }
        },
        synchronized = true
    },
    spback = {
label = 'Piggy Back',
        animation = 'mxclip_a',
        dictionary = 'mx@piggypack_a',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'spback2'
        }
        },
        synchronized = true
    },
    spback2 = {
label = 'Piggy Back 2',
        animation = 'mxanim_b',
        dictionary = 'mx@piggypack_b',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 0,
        otheremote = 'spback',
        placement = {vec3(0.02, -0.439900, 0.42), vec3(0.0, 0.0, 0.0)}
        }
        },
        synchronized = true
    },
    spback3 = {
label = 'Piggy Back 3',
        animation = 'piggyback_c_player_a',
        dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'spback2'
        }
        },
        synchronized = true
    },
    spback4 = {
label = 'Piggy Back 4',
        animation = 'piggyback_c_player_b',
        dictionary = 'anim@arena@celeb@flat@paired@no_props@',
        options = {
        flags = {
        loop = true
        },
        shared = {
        attach = true,
        bone = 0,
        otheremote = 'spback',
        placement = {vec3(0.0, -0.7, 0.4), vec3(0.0, 0.0, 0.0)}
        }
        },
        synchronized = true
    },
    spunch = {
label = 'Punch',
        animation = 'plyr_takedown_rear_lefthook',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        shared = {
        otheremote = 'spunched'
        }
        },
        synchronized = true
    },
    spunched = {
label = 'Punched',
        animation = 'victim_takedown_front_cross_r',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        shared = {
        otheremote = 'spunch'
        }
        },
        synchronized = true
    },
    sreceiveblowjob = {
label = 'Receive Blowjob',
        animation = 'pimpsex_punter',
        dictionary = 'misscarsteal2pimpsex',
        options = {
        duration = 3,
        shared = {
        frontoffset = 0.63,
        otheremote = 'sgiveblowjob'
        }
        },
        nsfw = true,
        synchronized = true
    },
    ssearch = {
label = 'Search',
        animation = 'police',
        dictionary = 'custom@police',
        options = {
        flags = {
        move = true
        },
        shared = {
        otheremote = 'ssearch2'
        }
        },
        synchronized = true
    },
    ssearch2 = {
label = 'Be searched',
        animation = 'a2_pose',
        dictionary = 'missfam5_yoga',
        options = {
        flags = {
        move = true
        },
        shared = {
        attach = true,
        otheremote = 'ssearch',
        placement = {vec3(0.0, 0.5, 0.0), vec3(0.0, 0.0, 0.0)}
        }
        },
        synchronized = true
    },
    sslap = {
label = 'Slap',
        animation = 'plyr_takedown_front_slap',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        duration = 2000,
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'sslapped'
        }
        },
        synchronized = true
    },
    sslap2 = {
label = 'Slap 2',
        animation = 'plyr_takedown_front_backslap',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        duration = 2000,
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'sslapped2'
        }
        },
        synchronized = true
    },
    sslapped = {
label = 'Slapped',
        animation = 'victim_takedown_front_slap',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        shared = {
        otheremote = 'sslap'
        }
        },
        synchronized = true
    },
    sslapped2 = {
label = 'Slapped 2',
        animation = 'victim_takedown_front_backslap',
        dictionary = 'melee@unarmed@streamed_variations',
        options = {
        shared = {
        otheremote = 'sslap2'
        }
        },
        synchronized = true
    },
    sstickup = {
label = 'Stick Up',
        animation = 'biker_02_stickup_loop',
        dictionary = 'random@countryside_gang_fight',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'sstickupscared'
        }
        },
        synchronized = true
    },
    sstickupscared = {
label = 'Stickup Scared',
        animation = 'handsup_base',
        dictionary = 'missminuteman_1ig_2',
        options = {
        flags = {
        loop = true,
        move = true
        },
        shared = {
        otheremote = 'sstickup'
        }
        },
        synchronized = true
    },
    sstreetsexfemale = {
label = 'Street Sex Female',
        animation = 'shagloop_hooker',
        dictionary = 'misscarsteal2pimpsex',
        options = {
        flags = {
        loop = true
        },
        shared = {
        frontoffset = 0.5,
        otheremote = 'sstreetsexmale'
        }
        },
        nsfw = true,
        synchronized = true
    },
    sstreetsexmale = {
label = 'Street Sex Male',
        animation = 'shagloop_pimp',
        dictionary = 'misscarsteal2pimpsex',
        options = {
        flags = {
        loop = true
        },
        shared = {
        frontoffset = 0.5,
        otheremote = 'sstreetsexfemale'
        }
        },
        nsfw = true,
        synchronized = true
    },
}
