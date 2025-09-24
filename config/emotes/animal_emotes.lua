return {
    bdogbark = {
label = 'Bark (big dog)',
        animation = 'idle_a',
        dictionary = 'creatures@rottweiler@amb@world_dog_barking@idle_a',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogbeg = {
label = 'Beg (big dog)',
        animation = 'beg_loop',
        dictionary = 'creatures@rottweiler@tricks@',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogbeg2 = {
label = 'Beg 2 (big dog)',
        animation = 'paw_right_loop',
        dictionary = 'creatures@rottweiler@tricks@',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogdump = {
label = 'Dump (big dog)',
        animation = 'dump_loop',
        dictionary = 'creatures@rottweiler@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 51826,
        name = 'prop_big_shit_02',
        placement = {vec3(0.0, 0.2, -0.46), vec3(0.0, -20.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'}
    },
    bdogglowa = {
label = 'Glow Stick (big dog)',
        animation = 'nill',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true,
        move = true
        },
        props = {{
        bone = 31086,
        name = 'ba_prop_battle_glowstick_01',
        placement = {vec3(0.2, 0.0, -0.06), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'}
    },
    bdogglowb = {
label = 'Glow Stick Sitting (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'ba_prop_battle_glowstick_01',
        placement = {vec3(0.2, 0.0, -0.06), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'}
    },
    bdoghump = {
label = 'Hump (big dog)',
        animation = 'hump_loop_chop',
        dictionary = 'creatures@rottweiler@amb@',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'},
        nsfw = true
    },
    bdoghump2 = {
label = 'Hump 2 (big dog)',
        animation = 'hump_loop_ladydog',
        dictionary = 'creatures@rottweiler@amb@',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'},
        nsfw = true
    },
    bdogitch = {
label = 'Itch (big dog)',
        animation = 'idle_a',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@idle_a',
        options = {
        duration = 2000
        },
        pedtypes = {'big_dogs'}
    },
    bdoglay = {
label = 'Lay Down (big dog)',
        animation = 'dead_left',
        dictionary = 'creatures@rottweiler@move',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdoglay2 = {
label = 'Lay Down 2 (big dog)',
        animation = 'dead_right',
        dictionary = 'creatures@rottweiler@move',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogpee = {
label = 'Pee (big dog)',
        animation = 'pee_left_idle',
        dictionary = 'creatures@rottweiler@move',
        options = {
        flags = {
        loop = true
        },
        ptfx = {
        asset = 'scr_amb_chop',
        canhold = true,
        name = 'ent_anim_dog_peeing',
        placement = {vec3(-0.15, -0.35, 0.0), vec3(0.0, 90.0, 180.0), 1.0},
        wait = 3000
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogpee2 = {
label = 'Pee 2 (big dog)',
        animation = 'pee_right_idle',
        dictionary = 'creatures@rottweiler@move',
        options = {
        flags = {
        loop = true
        },
        ptfx = {
        asset = 'scr_amb_chop',
        canhold = true,
        name = 'ent_anim_dog_peeing',
        placement = {vec3(0.15, -0.35, 0.0), vec3(0.0, 90.0, 0.0), 1.0},
        wait = 3000
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogpridea = {
label = 'Sit Pride A (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag1',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag1',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogprideb = {
label = 'Sit Pride B - LGBTQIA (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag2',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag2',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogpridec = {
label = 'Sit Pride C - Bisexual (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag3',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag3',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogprided = {
label = 'Sit Pride D - Lesbian (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag4',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag4',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogpridee = {
label = 'Sit Pride E - Pansexual (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag5',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag5',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogpridef = {
label = 'Sit Pride F - Transgender (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag6',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag6',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogprideg = {
label = 'Sit Pride G - Non Binary (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag7',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag7',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogprideh = {
label = 'Sit Pride H - Asexual (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag8',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag8',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogpridei = {
label = 'Sit Pride I - Straight Ally (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag9',
        placement = {vec3(0.19, 0.0, -0.05), vec3(100.0, 90.0, 0.0)}
        }, {
        bone = 31086,
        name = 'lilprideflag9',
        placement = {vec3(0.194, 0.02, -0.05), vec3(-90.0, -90.0, 0.0)}
        }}
        },
        pedtypes = {'big_dogs'},
        socialmovement = true
    },
    bdogsit = {
label = 'Sit (big dog)',
        animation = 'base',
        dictionary = 'creatures@rottweiler@amb@world_dog_sitting@base',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogup'
        },
        pedtypes = {'big_dogs'}
    },
    bdogsitcar = {
label = 'Sit Car (big dog)',
        animation = 'sit',
        dictionary = 'creatures@rottweiler@incar@',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'big_dogs'}
    },
    bdogsleep = {
label = 'Sleep (big dog)',
        animation = 'sleep_in_kennel',
        dictionary = 'creatures@rottweiler@amb@sleep_in_kennel@',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'bdogupk'
        },
        pedtypes = {'big_dogs'}
    },
    sdogbark = {
label = 'Bark (small dog)',
        animation = 'idle_a',
        dictionary = 'creatures@pug@amb@world_dog_barking@idle_a',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'small_dogs'}
    },
    sdogbb = {
label = 'Baseball (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'w_am_baseball',
        placement = {vec3(0.15, -0.05, 0.0), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogburger = {
label = 'Burger (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_cs_burger_01',
        placement = {vec3(0.15, -0.04, 0.0), vec3(-90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogcontroller = {
label = 'Controller (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_controller_01',
        placement = {vec3(0.18, -0.03, 0.0), vec3(-180.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogdance = {
label = 'Dance (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'ba_prop_battle_glowstick_01',
        placement = {vec3(0.15, -0.03, 0.0), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogdance2 = {
label = 'Dance 2 (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'ba_prop_battle_glowstick_01',
        placement = {vec3(0.15, -0.03, 0.0), vec3(0.0, 0.0, 0.0)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogdancepridea = {
label = 'Dance Pride A (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag1',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdanceprideb = {
label = 'Dance Pride B - LGBTQIA (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag2',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdancepridec = {
label = 'Dance Pride C - Bisexual (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag3',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdanceprided = {
label = 'Dance Pride D - Lesbian (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag4',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdancepridee = {
label = 'Dance Pride E - Pansexual (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag5',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdancepridef = {
label = 'Dance Pride F - Transgender (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag6',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdanceprideg = {
label = 'Dance Pride G - Non Binary (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag7',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdanceprideh = {
label = 'Dance Pride H - Asexual (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag8',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdancepridei = {
label = 'Dance Pride I - Straight Ally (small dog)',
        animation = 'idle_turn_0',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag9',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }, {
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogdolla = {
label = 'Dollar Bill (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'p_banknote_onedollar_s',
        placement = {vec3(0.17, -0.01, 0.0), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogdolla2 = {
label = 'Dollar Bill Scrunched  (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'bkr_prop_scrunched_moneypage',
        placement = {vec3(0.17, 0.0, 0.0), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogdolla3 = {
label = 'Money Stack  (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'bkr_prop_money_wrapped_01',
        placement = {vec3(0.17, -0.01, 0.0), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogdolla4 = {
label = 'Money Bag  (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'ch_prop_ch_moneybag_01a',
        placement = {vec3(0.12, -0.2, 0.0), vec3(-80.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogggun = {
label = 'Gun Gold (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 12844,
        name = 'w_pi_pistol_luxe',
        placement = {vec3(0.201, -0.008, 0.0), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoggl1 = {
label = 'Aviators (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_aviators_01',
        placement = {vec3(0.05, 0.04, 0.0), vec3(-90.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoggl2 = {
label = 'Aviators Sitting (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'prop_aviators_01',
        placement = {vec3(0.05, 0.04, 0.0), vec3(-90.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoggl3 = {
label = 'Sunglasses (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoggl4 = {
label = 'Sunglasses Sitting (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'prop_cs_sol_glasses',
        placement = {vec3(0.05, 0.03, 0.0), vec3(-100.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoggun2 = {
label = 'Gun Gold Sit (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 12844,
        name = 'w_pi_pistol_luxe',
        placement = {vec3(0.201, -0.008, 0.0), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoghat = {
label = 'Hat 1 (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_proxy_hat_01',
        placement = {vec3(0.0, 0.12, 0.0), vec3(-99.851074, 80.148926, 1.727941)}
        }, {
        bone = 31086,
        name = 'prop_aviators_01',
        placement = {vec3(0.05, 0.04, 0.0), vec3(-90.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoghat2 = {
label = 'Hat 2 Sitting (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'prop_proxy_hat_01',
        placement = {vec3(0.0, 0.12, 0.0), vec3(-99.851074, 80.148926, 1.727941)}
        }, {
        bone = 31086,
        name = 'prop_aviators_01',
        placement = {vec3(0.05, 0.04, 0.0), vec3(-90.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoghd1 = {
label = 'Hot Dog (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_cs_hotdog_01',
        placement = {vec3(0.13, -0.025, 0.0), vec3(-88.272057, -9.846586, -0.148856)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoghd2 = {
label = 'Hot Dog Sitting (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'prop_cs_hotdog_01',
        placement = {vec3(0.13, -0.025, 0.0), vec3(-88.272057, -9.846586, -0.148856)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoghlmt1 = {
label = 'Helmet 1 (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'ba_prop_battle_sports_helmet',
        placement = {vec3(0.0, -0.02, 0.0), vec3(-90.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdoghlmt2 = {
label = 'Helmet 2 (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_hard_hat_01',
        placement = {vec3(0.0, 0.13, 0.0), vec3(-90.0, 90.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogitch = {
label = 'Itch (small dog)',
        animation = 'idle_a',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        duration = 2000,
        exitemote = 'sdogup'
        },
        pedtypes = {'big_dogs'}
    },
    sdogmic = {
label = 'Microphone (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'p_ing_microphonel_01',
        placement = {vec3(0.15, -0.017, 0.03), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogpee = {
label = 'Pee (Small Dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        ptfx = {
        asset = 'scr_amb_chop',
        canhold = true,
        name = 'ent_anim_dog_peeing',
        placement = {vec3(-0.01, -0.17, 0.09), vec3(0.0, 90.0, 140.0), 1.0},
        wait = 3000
        }
        },
        pedtypes = {'small_dogs'}
    },
    sdogpridea = {
label = 'Pride A (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag1',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogprideb = {
label = 'Pride B - LGBTQIA (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag2',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridec = {
label = 'Pride C - Bisexual (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag3',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogprided = {
label = 'Pride D - Lesbian (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag4',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridee = {
label = 'Pride E - Pansexual (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag5',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridef = {
label = 'Pride F - Transgender (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag6',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogprideg = {
label = 'Pride G - Non Binary (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag6',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogprideh = {
label = 'Pride H - Non Binary (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag7',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridei = {
label = 'Pride I - Asexual (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'lilprideflag8',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesita = {
label = 'Pride A Sit (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag1',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesitb = {
label = 'Pride B Sit LGBTQIA (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag2',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesitc = {
label = 'Pride C Sit Bisexual (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag3',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesitd = {
label = 'Pride D Sit Lesbian (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag4',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesite = {
label = 'Pride E Sit Pansexual (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag5',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesitf = {
label = 'Pride F Sit Transgender (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag6',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesitg = {
label = 'Pride G Sit Non Binary (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag7',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesith = {
label = 'Pride H Sit Asexual (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag8',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogpridesiti = {
label = 'Pride I Sit Straight Ally (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'lilprideflag9',
        placement = {vec3(0.124, -0.008, 0.0), vec3(0.0, 0.0, -74.699898)}
        }}
        },
        pedtypes = {'small_dogs'},
        socialmovement = true
    },
    sdogrose = {
label = 'Rose (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 12844,
        name = 'prop_single_rose',
        placement = {vec3(0.109, -0.014, 0.05), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogrose2 = {
label = 'Rose Sit (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 12844,
        name = 'prop_single_rose',
        placement = {vec3(0.109, -0.014, 0.05), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogshake = {
label = 'Shake (small dog)',
        animation = 'idle_c',
        dictionary = 'creatures@pug@amb@world_dog_barking@idle_a',
        options = {
        flags = {
        loop = true
        }
        },
        pedtypes = {'small_dogs'}
    },
    sdogsit = {
label = 'Sit (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup'
        },
        pedtypes = {'small_dogs'}
    },
    sdogsteak = {
label = 'Steak (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_cs_steak',
        placement = {vec3(0.18, -0.02, 0.0), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogsteak2 = {
label = 'Steak 2 Lay Down (small dog)',
        animation = 'idle_c',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'prop_cs_steak',
        placement = {vec3(0.18, -0.02, 0.0), vec3(90.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogstun = {
label = 'Stun Gun (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 12844,
        name = 'w_pi_stungun',
        placement = {vec3(0.14, -0.01, 0.0), vec3(0.0, 0.0, 0.0)}
        }},
        ptfx = {
        asset = 'core',
        attachtoprop = true,
        name = 'blood_stungun',
        placement = {vec3(0.208, 0.0, 0.0), vec3(0.0, 0.0, 0.0), 1.0},
        wait = 200
        }
        },
        pedtypes = {'small_dogs'}
    },
    sdogteddy = {
label = 'Teddy (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'v_ilev_mr_rasberryclean',
        placement = {vec3(0.15, -0.11, -0.23), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogteddy2 = {
label = 'Teddy 2 (small dog)',
        animation = 'idle_b',
        dictionary = 'creatures@pug@amb@world_dog_sitting@idle_a',
        options = {
        flags = {
        loop = true
        },
        exitemote = 'sdogup',
        props = {{
        bone = 31086,
        name = 'v_ilev_mr_rasberryclean',
        placement = {vec3(0.15, -0.11, -0.23), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogtennis = {
label = 'Tennis Ball (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_tennis_ball',
        placement = {vec3(0.15, -0.06, 0.0), vec3(0.0, 0.0, 0.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
    sdogtennisr = {
label = 'Tennis Racket (small dog)',
        animation = 'nill',
        dictionary = 'creatures@pug@move',
        options = {
        flags = {
        loop = true
        },
        props = {{
        bone = 31086,
        name = 'prop_tennis_rack_01',
        placement = {vec3(0.15, -0.02, 0.0), vec3(0.0, 0.0, -28.0)}
        }}
        },
        pedtypes = {'small_dogs'}
    },
}
