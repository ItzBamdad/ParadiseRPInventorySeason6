return {

	-- MONEY
	['money'] = {
		label = 'پول',
	},
	['black_money'] = {
		label = 'پول کثیف',
	},
	
	['customvipticket'] = {
		label = 'تیکت کاستوم رایگان',
		weight = 0,
		stack = false,
		--consume = 0.2,
		description = 'تیکت کاستوم رایگان خودرو های مینی شاپ. دقت کنید که این تیکت یکبار مصرف بوده، قابل انتقال به غیر نیست و ویژه خودرو با پلاک مشخص شده می‌باشد. جهت استفاده میباست داخل خودرو مربوطه و در محیط تعیین شده باشید (محل کاستوم خودرو ها در منطقه 206 واقع بوده و باقی موارد در محل تحویل)',
		client = {
			event = "mini_vc:openMiniFreeMenu",
		}  
	},  
	['customvipticket_blank'] = {
		label = 'تیکت کاستوم رایگان خام',
		weight = 0,
		stack = false,
		--consume = 0.2,
		description = 'این تیکت خام بوده و نیاز به فعالسازی دارد، جهت فعالسازی سوار خودرو مورد نظر شده و تیکت را استفاده کنید',
		client = {
			event = "mini_misc:activateCustomTicket",
		}
	},
	
	['parachute'] = {
		label = 'چتر نجات',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['diverset-pd'] = {
		label = 'ست غواصی',
		description = 'این ست ویژه نیروهای پلیس بوده و حمل آن برای دیگر شهروندان غیرمجاز میباشد',
		weight = 2200,
		consume = 0.5,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 4000
		}
	},	
	['diverset-md'] = {
		label = 'ست غواصی',
		description = 'این ست ویژه نیروهای مدیک بوده و حمل آن برای دیگر شهروندان غیرمجاز میباشد',
		weight = 2200,
		consume = 0.5,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 4000
		}
	},	
	['diverset'] = {
		label = 'ست غواصی',
		weight = 3000,
		consume = 0.5,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 4000
		}
	},
	
	['phone'] = {
		label = 'تلفن',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			--[[add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end]]
			
			export = "lb-phone.UsePhoneItem",
			remove = function()
				TriggerEvent("lb-phone:itemRemoved")
			end,
			add = function()
				TriggerEvent("lb-phone:itemAdded")
			end
		}
	},
      
	['clothing'] = {
		label = 'لباس',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500,
        },
	},
    
	['torso'] = {
		label = 'لباس رو',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 'missmic4', clip = 'michael_tux_fidget' },
            usetime = 3500, 
        },
	},
	['tshirt'] = {
		label = 'تی شرت',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 'clothingtie', clip = 'try_tie_positive_d' },
            usetime = 2500, 
            },
	},
	['pants'] = {
		label = 'شلوار',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 're@construction', clip = 'out_of_breath' },
            usetime = 2000, 
        },
	},
	['shoes'] = {
		label = 'کفش',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 'random@domestic', clip = 'pickup_low' },
            usetime = 1300, 
        },
	},
	['helmet'] = {
		label = 'کلاه',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 'missheistdockssetup1hardhat@', clip = 'put_on_hat' },
            usetime = 1400,     
        },
	},
	['mask'] = {
		label = 'ماسک',
		weight = 400,	
		consume = 0.25,
        client = {
            anim = { dict = 'mp_masks@on_foot', clip = 'put_on_mask' },
            usetime = 600,
        },
	},
    ['glasses'] = {
		label = 'عینک',
		weight = 250,	
		consume = 0.25,
        client = {
            anim = { dict = 'clothingspecs', clip = 'take_off' },
            usetime = 1400,
        },
	},
    ['gloves'] = {
		label = 'دستکش',
		weight = 250,	
		consume = 0.25,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1700,
        },
	},
    
	['bag-vip'] = {
		label = 'کیف',
		weight = 200,
        consume = 0,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500,
        },	
	},
	['vest-vip'] = {
		label = 'جلیقه',
		weight = 200,
        consume = 0,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500,
        },	
	},
	['chain-vip'] = {
		label = 'زنجیر',
		weight = 200,
        consume = 0,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500,
        },	
	},
    ['glasses-vip'] = {
		label = 'عینک',
		weight = 125,
        consume = 0,
        client = {
            anim = { dict = 'clothingspecs', clip = 'take_off' },
            usetime = 1400,
        },	
	},
    
    ['torso-vip'] = {
		label = 'لباس رو',
		weight = 400,	
        consume = 0,
        client = {
            anim = { dict = 'missmic4', clip = 'michael_tux_fidget' },
            usetime = 3500, 
        },
	},
	['pants-vip'] = {
		label = 'شلوار',
		weight = 400,	
        consume = 0,
        client = {
            anim = { dict = 're@construction', clip = 'out_of_breath' },
            usetime = 2000, 
        },
	},
	['shoes-vip'] = {
		label = 'کفش',
		weight = 400,	
        consume = 0,
        client = {
            anim = { dict = 'random@domestic', clip = 'pickup_low' },
            usetime = 1300, 
        },
	},
	['helmet-vip'] = {
		label = 'کلاه',
		weight = 400,	
        consume = 0,
        client = {
            anim = { dict = 'missheistdockssetup1hardhat@', clip = 'put_on_hat' },
            usetime = 1400,     
        },
	},
	['mask-vip'] = {
		label = 'ماسک',
		weight = 400,	
        consume = 0,
        client = {
            anim = { dict = 'mp_masks@on_foot', clip = 'put_on_mask' },
            usetime = 600,
        },
	},
    
	['armour_heavy'] = {
		label = 'جلیقه ضد گلوله قوی',
		weight = 4000,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},
	['armour_light'] = {
		label = 'جلیقه ضد گلوله ضعیف',
		weight = 3000,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},
	
	['fixtool'] = {
		label = 'کیت تعمیر حرفه ای',
		description = 'این کیت ویژه نیروهای امداد خودرو و مکانیکی میباشد،حمل و استفاده از این کیت برای دیگر شهروندان غیرمجاز میباشد',
		weight = 1000,
	},
	['fixkit'] = {
		label = 'کیت تعمیر',
		weight = 780,
	},
	
	['cannabis'] = {
		label = 'علف',
		weight = 400,
	},
	['poppy'] = {
		label = 'خشخاش',
		weight = 400,
	},
	
	['weed'] = {
		label = 'ماریجوانا',
		weight = 500,
		client = {
			status = { drunk = 160000 },
			event = "esx_status:useDrug",
		}
	},
	['meth'] = {
		label = 'شیشه',
		weight = 500,
		client = {
			status = { drunk = 200000 },
			event = "esx_status:useDrug",
		}
	},
	['coke'] = {
		label = 'کوکائین',
		weight = 500,
		client = {
			status = { drunk = 220000 },
			event = "esx_status:useDrug",
		}
	},
	['opium'] = {
		label = 'تریاک',
		weight = 500,
		client = {
			status = { drunk = 200000 },
			event = "esx_status:useDrug",
		}
	},
	
	-- DRINKS
	['water'] = {
		label = 'آب',
		weight = 350,
		client = {
			status = { thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.12, 0.008, 0.03), rot = vec3(240.0, -60.0, 0.0), bone = 18905 },
			usetime = 3000,
		},
	},
	['coffee'] = {
		label = 'قهوه',
		weight = 500,
		client = {
			status = { thirst = 150000, hunger = 10000  },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 5000,
		}
	},
	
	-- SODA
	['cola'] = {
		label = 'کولا',
		weight = 450,
		client = {
			status = { thirst = 100000, hunger = 30000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
			usetime = 6000,
		}
	},
	['sprite'] = {
		label = 'اسپرایت',
		weight = 450,
		client = {
			status = { thirst = 100000, hunger = 15000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.0050, -0.0010, -0.0800), rot = vec3(0.0, 0.0, 160.0), bone = 28422 },
			usetime = 5000,
		}
	},
	
	-- ALCOHOLIC BEVERAGE 
	['wine'] = {
		label = 'مشروب',
		weight = 500,
		client = {
			status = { thirst = 70000, drunk = 100000 },
			anim = { dict = 'anim@heists@humane_labs@finale@keycards', clip = 'ped_a_enter_loop'},
			prop = { model = `prop_drink_redwine`, pos = vec3(0.10, -0.03, 0.03), rot = vec3(-100.0, 0.0, -10.0), bone = 18905 },
			usetime = 5000,
		}
	},
	['beer'] = {
		label = 'آبجو',
		weight = 500,
		client = {
			status = { thirst = 70000, drunk = 100000 },
			anim = { dict = 'amb@world_human_drinking@beer@male@idle_a', clip = 'idle_c'},
			prop = { model = `prop_amb_beer_bottle`, pos = vec3(0.0, 0.0, 0.06), rot = vec3(0.0, 15.0, 0.0), bone = 28422 },
			usetime = 5000,
		}
	},
	
	-- ALCOHOLIC BEVERAGE 
	['vodka'] = {
		label = 'وودکا',
		weight = 275,
		client = {
			status = { thirst = 70000, drunk = 200000 },
			anim = { dict = 'amb@world_human_drinking@beer@male@idle_a', clip = 'idle_c'},
			prop = { model = `prop_vodka_bottle`, pos = vec3(0.0, 0.0, -0.15), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 15000,
		}
	},
	['champagne'] = {
		label = 'شامپاین',
		weight = 275,
		client = {
			status = { thirst = 70000, drunk = 200000 },
			anim = { dict = 'anim@heists@humane_labs@finale@keycards', clip = 'ped_a_enter_loop' },
			prop = { model = `prop_drink_champ`, pos = vec3(0.10, -0.03, 0.03), rot = vec3(-100.0, 0.0, -10.0), bone = 18905 },
			usetime = 15000,
		}
	},
	['mijiu'] = {
		label = 'میجی یو',
		weight = 275,
		client = {
			status = { thirst = 70000, drunk = 200000 },
			anim = { dict = 'anim@heists@humane_labs@finale@keycards', clip = 'ped_a_enter_loop' },
			prop = { model = `prop_drink_champ`, pos = vec3(0.10, -0.03, 0.03), rot = vec3(-100.0, 0.0, -10.0), bone = 18905 },
			usetime = 15000,
		}
	},
	['rum'] = {
		label = 'رام',
		weight = 275,
		client = {
			status = { thirst = 70000, drunk = 200000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_drink_whisky`, pos = vec3(0.01, -0.01, -0.06), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 15000,
		}
        },
	['sake'] = {
		label = 'ساکی',
		weight = 275,
		client = {
			status = { thirst = 70000, drunk = 200000 },
			anim = { dict = 'anim@heists@humane_labs@finale@keycards', clip = 'ped_a_enter_loop' },
			prop = { model = `prop_drink_champ`, pos = vec3(0.10, -0.03, 0.03), rot = vec3(-100.0, 0.0, -10.0), bone = 18905 },
			usetime = 15000,
		}
	},
	
	-- NON-ALCOHOLIC BEVERAGE
	['kissel'] = {
		label = 'کیسل',
		weight = 180,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		}
	},
	['gini'] = {
		label = 'جینی',
		weight = 180,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		}
	},
	['dingdong'] = {
		label = 'دینگ دونگ',
		weight = 180,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		}
	},
	['lulada'] = {
		label = 'لولادا',
		weight = 180,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		}
	},
	['yuzu'] = {
		label = 'یوزو',
		weight = 180,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		}
	},
	
	-- RESTAURANT FOODS
	['beef_stroganoff'] = {
		label = 'بیف استراگانوف',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `prop_cs_plate_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
				{ model = `h4_prop_h4_caviar_spoon_01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			},
			usetime = 10000,
		},
	},
	['caviar'] = {
		label = 'خاویار',
		weight = 400,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `h4_prop_h4_caviar_tin_01a`, pos = vec3(0.0, 0.03, 0.01), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
				{ model = `h4_prop_h4_caviar_spoon_01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			},
			usetime = 5000,
		},
	},
	['croissant'] = {
		label = 'کروسان',
		weight = 400,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_foodpack_croissant001`, pos = vec3(0.0, 0.0, -0.01), rot = vec3(0.0, 0.0, 90.0), bone = 60309 },
			usetime = 5000,
		},
	},
	['chicken_cordon'] = {
		label = 'چیکن کوردن',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `prop_cs_plate_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
				{ model = `h4_prop_h4_caviar_spoon_01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			},
			usetime = 10000,
		},
	},
	['beef_noodle'] = {
		label = 'بیف نودل',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_c',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_c',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 10000,
		},
	},
	['oyster_omelette'] = {
		label = 'املت صدف',
		weight = 400,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `prop_cs_plate_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
				{ model = `h4_prop_h4_caviar_spoon_01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			},
			usetime = 5000,
		},
	},
	['empanada'] = {
		label = 'امپانادا',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_foodpack_croissant001`, pos = vec3(0.0, 0.0, -0.01), rot = vec3(0.0, 0.0, 90.0), bone = 60309 },
			usetime = 10000,
		},
	},
	['cazuela_de_mariscos'] = {
		label = 'کازوئلا د مارسکوس',
		weight = 400,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `h4_prop_h4_caviar_tin_01a`, pos = vec3(0.0, 0.03, 0.01), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
				{ model = `h4_prop_h4_caviar_spoon_01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			},
			usetime = 5000,
		},
	},
	['sashimi'] = {
		label = 'ساشیمی',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_e',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_h',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 5000,
		},
	},
	['wagashi'] = {
		label = 'واگاشی',
		weight = 400,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_plate_a',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_i',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 5000,
		},
	},
	['egg_toast'] = {
		label = 'صبحانه فرانسوی',
		weight = 400,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_h',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_f',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 5000,
		},
	},
	['steak_fries'] = {
		label = 'استیک و سیب زمینی',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_f',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_a',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 10000,
		},
	},
	

	['burrito'] = {
		label = 'بوریتو',
		weight = 220,
		client = {
			status = { hunger = 180000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_taco_01`, pos = vec3(-0.0170, 0.007, -0.021), rot = vec3(107.9846, -105.0251, 55.7779), bone = 60309 },
			usetime = 5000,
		},
	},
	['tacos'] = {
		label = 'تاکو',
		weight = 220,
		client = {
			status = { hunger = 180000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_taco_01`, pos = vec3(-0.0170, 0.007, -0.021), rot = vec3(107.9846, -105.0251, 55.7779), bone = 60309 },
			usetime = 5000,
		},
	},
    ['hotdog'] = {
		label = 'هات داگ',
		weight = 220,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_taco_01`, pos = vec3(-0.0300, 0.0100, -0.0100), rot = vec3(95.1071, 94.7001, -66.9179), bone = 60309 },
			usetime = 5000,
		},
	},
	['sandwich'] = {
		label = 'ساندویچ',
		weight = 220,
		client = {
			status = { hunger = 180000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_sandwich_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
			usetime = 5000,
		},
	},
	['burger'] = {
		label = 'برگر',
		weight = 220,
		client = {
			status = { hunger = 180000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
			usetime = 5000,
		},
	},
	
	['natural_fibers'] = {
		label = 'الیاف طبیعی',
		weight = 100,
	},
	['cotton'] = {
		label = 'پارچه کتان',
		weight = 300,
	},
	['wool'] = {
		label = 'پشم',
		weight = 110,
	},
	['jajim'] = {
		label = 'پارچه جاجیم',
		weight = 350,
	},
	['cow_skin'] = {
		label = 'پوست حیوان',
		weight = 150,
	},
	['leather'] = {
		label = 'چرم',
		weight = 400,
	},
	
	['iron'] = {
		label = 'سنگ آهن',
		weight = 90,
	},
	['steel'] = {
		label = 'استیل',
		weight = 180,
	},
	['primesteel'] = {
		label = 'فولاد',
		weight = 250,
	},
	['coal'] = {
		label = 'ذغال سنگ',
		weight = 110,
	},
	['wood'] = { -- next
		label = 'چوب',
		weight = 110,
	},
	['charcoal'] = { -- next
		label = 'ذغال چوب',
		weight = 110,
	},
	['gunpowder'] = {
		label = 'باروت',
		weight = 600,
	},
	['sand'] = { -- next
		label = 'ماسه',
		weight = 110,
	},
	['glass'] = { -- next
		label = 'شیشه',
		weight = 110,
	},
		
	['fruit'] = { -- h:1%
		label = 'مرکبات',
		weight = 300,
		client = {
			status = { hunger = 10000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `sf_prop_sf_apple_01b`, pos = vec3(0.0, 0.015, -0.02), rot = vec3(-124.6964, -166.5760, 8.4572), bone = 60309 },
			usetime = 2000,
		},
	},
	
	['grape'] = {
		label = 'انگور',
		weight = 300,
	},
	['vegetables'] = {
		label = 'سبزیجات',
		weight = 300,
	},
	['rice'] = {
		label = 'برنج',
		weight = 300,
	},
	['potato'] = {
		label = 'سیب زمینی',
		weight = 300,
	},
	['wheat'] = {
		label = 'گندم',
		weight = 700,
	},
	['wheat_flour'] = {
		label = 'آرد گندم',
		weight = 300,
	},
	['sugarcane'] = {
		label = 'نیشکر',
		weight = 700,
	},
	['sugar'] = {
		label = 'شکر',
		weight = 300,
	},
	['coffee_bean'] = {
		label = 'دانه قهوه',
		weight = 700,
	},
	['coffee_powder'] = {
		label = 'پودر قهوه',
		weight = 300,
	},
	
	['alfalfa'] = {
		label = 'یونجه',
		weight = 100,
	},
	['milk'] = {
		label = 'شیر',
		weight = 200,
	},
	['yogurt'] = {
		label = 'ماست',
		weight = 400,
	},
	['cheese'] = {
		label = 'پنیر',
		weight = 600,
	},
	['meat'] = {
		label = 'گوشت',
		weight = 800,
	},
	['millet'] = {
		label = 'ارزن',
		weight = 100,
	},
	['egg'] = {
		label = 'تخم مرغ',
		weight = 150,
	},
	['chicken'] = {
		label = 'مرغ',
		weight = 700,
	},
		
	['fish_trout'] = {
		label = 'ماهی قزل آلا',
		weight = 300,
	},	
	['shrimp'] = {
		label = 'میگو',
		weight = 300,
	},	
	['oyster'] = {
		label = 'صدف',
		weight = 300,
	},
	['fish_caviar'] = {
		label = 'ماهی خاویار',
		weight = 300,
	},
	['lobster'] = {
		label = 'لابستر',
		weight = 300,
	},
	
	['weed_material'] = {
		label = 'آجیل و خشکبار',
		weight = 1200,
	},
	['meth_material'] = {
		label = 'داروجات',
		weight = 1200,
	},
	['coke_material'] = {
		label = 'مصالح ساختمانی',
		weight = 1200,
	},

	-- SHOP
	['egobar'] = {
		label = 'شکلات',
		weight = 250,
		client = {
			status = { hunger = 30000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_choc_ego`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
			usetime = 4000,
		},
	},
	['candy'] = {
		label = 'آبنبات',
		weight = 300,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@pnq', clip = 'loop' },
			prop = { model = `prop_candy_pqs`, pos = vec3(-0.03, 0.018, 0.0), rot = vec3(180.0, 180.0, -88.099), bone = 60309 },
			usetime = 4000,
		},
	},	
	['popcorn'] = {
		label = 'پاپ کرن',
		weight = 340,
		client = {
			status = { hunger = 60000 },
			anim = { dict = 'amb@code_human_wander_drinking@female@base', clip = 'static' },
			prop = { model = `prop_taymckenzienz_popcorn`, pos = vec3(-0.0200, -0.0100, -0.0700), rot = vec3(-179.3626, 176.9331, 11.9833), bone = 28422 },
			usetime = 7000,
		},
	},
	['bread'] = {
		label = 'نان',
		weight = 420,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_sandwich_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
			usetime = 5000,
		},
	},
	
	-- PIZZERIA
	['pizza1'] = {
		label = 'پیتزا جالاپنو و پپرونی',
		weight = 1200,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `knjgh_pizzaslice1`, pos = vec3(0.0500, -0.0200, -0.0200), rot = vec3(73.6928, -66.7427, 68.3677), bone = 60309 },
			usetime = 25000,
		},
	},
	['pizza2'] = {
		label = 'پیتزا پستو گوجه فرنگی',
		weight = 1200,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `knjgh_pizzaslice2`, pos = vec3(0.0500, -0.0200, -0.0200), rot = vec3(73.6928, -66.7427, 68.3677), bone = 60309 },
			usetime = 25000,
		},
	},
	['pizza3'] = {
		label = 'پیتزا قارچ',
		weight = 1200,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `knjgh_pizzaslice3`, pos = vec3(0.0500, -0.0200, -0.0200), rot = vec3(73.6928, -66.7427, 68.3677), bone = 60309 },
			usetime = 25000,
		},
	},
	['pizza4'] = {
		label = 'پیتزا مارگاریتا',
		weight = 1200,
		client = {
			status = { hunger = 350000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `knjgh_pizzaslice4`, pos = vec3(0.0500, -0.0200, -0.0200), rot = vec3(73.6928, -66.7427, 68.3677), bone = 60309 },
			usetime = 25000,
		},
	},
	['pizza5'] = {
		label = 'پیتزا دابل پپرونی',
		weight = 1200,
		client = {
			status = { hunger = 750000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `knjgh_pizzaslice5`, pos = vec3(0.0500, -0.0200, -0.0200), rot = vec3(73.6928, -66.7427, 68.3677), bone = 60309 },
			usetime = 25000,
		},
	},
	
	-- BAKERY
	['donut1'] = {
		label = 'دونات',
		weight = 600,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_amb_donut`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
			usetime = 8000,
		},
	},
	['donut2'] = {
		label = 'دونات شکلاتی',
		weight = 650,
		client = {
			status = { hunger = 320000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_foodpack_donut002`, pos = vec3(0.0, -0.03, -0.01), rot = vec3(10.0, 0.0, -1.0), bone = 60309 },
			usetime = 8000,
		},
	},
	['donut3'] = {
		label = 'دونات تمشکی',
		weight = 620,
		client = {
			status = { hunger = 270000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_foodpack_donut001`, pos = vec3(0.0, -0.03, -0.01), rot = vec3(10.0, 0.0, -1.0), bone = 60309 },
			usetime = 8000,
		},
	},
	['coffee1'] = {
		label = 'اسپرسو',
		weight = 420,
		client = {
			status = { thirst = 250000, hunger = 10000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 8000,
		}
	},
	['coffee2'] = {
		label = 'موکا',
		weight = 420,
		client = {
			status = { thirst = 300000, hunger = 70000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 8000,
		}
	},
	['coffee3'] = {
		label = 'لاته',
		weight = 420,
		client = {
			status = { thirst = 280000, hunger = 10000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 8000,
		}
	},

	-- ICECREAM
	['icecream1'] = {
		label = 'بستنی وانیلی',
		weight = 600,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_icecream_lemon`, pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0), bone = 18905 },
			usetime = 8000,
		},
	},
	['icecream2'] = {
		label = 'بستنی زعفرونی',
		weight = 600,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_icecream_walnut`, pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0), bone = 18905 },
			usetime = 8000,
		},
	},
	['icecream3'] = {
		label = 'بستنی شکلاتی',
		weight = 600,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_icecream_chocolate`, pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0), bone = 18905 },
			usetime = 8000,
		},
	},
	['icecream4'] = {
		label = 'بستنی میوه ای',
		weight = 600,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_icecream_cherry`, pos = vec3(0.14, 0.03, 0.01), rot = vec3(85.0, 70.0, -203.0), bone = 18905 },
			usetime = 8000,
		},
	},	
	['juice_melon'] = {
		label = 'آب طالبی',
		weight = 600,
		client = {
			status = { hunger = 20000, thirst = 180000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		},
	},
	['milkshak_banana'] = {
		label = 'شیرموز',
		weight = 600,
		client = {
			status = { hunger = 30000, thirst = 180000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 6000,
		},
	},
	['icepack1'] = {
		label = 'آیس پک میوه ای',
		weight = 600,
		client = {
			status = { hunger = 180000 },
			anim = { dict = 'amb@code_human_wander_drinking@female@base', clip = 'static' },
			prop = { model = `beanmachine_cup2`, pos = vec3(0.0, 0.0, -0.0600), rot = vec3(0.0, 0.0, -178.0), bone = 28422 },
			usetime = 8000,
		},
	},
	['icepack2'] = {
		label = 'آیس پک شکلاتی',
		weight = 600,
		client = {
			status = { hunger = 210000 },
			anim = { dict = 'amb@code_human_wander_drinking@female@base', clip = 'static' },
			prop = { model = `beanmachine_cup3`, pos = vec3(0.0, 0.0, -0.0600), rot = vec3(0.0, 0.0, -178.0), bone = 28422 },
			usetime = 8000,
		},
	},
	['saffron'] = {
		label = 'زعفرون',
		weight = 50,
	},
	['salep_powder'] = {
		label = 'آرد ثعلب',
		weight = 300,
	},
	['vanilla'] = {
		label = 'وانیل',
		weight = 100,
	},
	
	-- PERSIAN MEALS
	['dough'] = {
		label = 'دوغ',
		weight = 320,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle'},
			prop = { model = `vw_prop_casino_water_bottle_01a`, pos = vec3(0.0080, 0.00, -0.05), rot = vec3(0.0, 0.0, -40.0), bone = 60309 },
			usetime = 8500,
		}
	},
	['desert'] = {
		label = 'بستنی نونی',
		weight = 250,		
		client = {
			status = { hunger = 120000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_dessert_a`, pos = vec3(0.15, 0.03, 0.03), rot = vec3(-42.0, -36.0, 0.0), bone = 18905 },
			usetime = 14000,
		},
	},
	['falodeh'] = {
		label = 'فالوده',
		weight = 250,
		client = {
			status = { hunger = 120000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `pata_christmasfood7`, pos = vec3(-0.0460, 0.0, -0.0300), rot = vec3(0.0, 0.0, -50.0), bone = 60309 },
				{ model = `h4_prop_h4_coke_spoon_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 20.0, 0.0), bone = 28422 },
			},
			usetime = 14000,
		},
	},
	['beanfeed'] = {
		label = 'خوراک لوبیا',
		weight = 450,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = { 
				{ model = `prop_cs_plate_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
				{ model = `h4_prop_h4_caviar_spoon_01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			},
			usetime = 8000,
		},
	},
	
	 
	-- MISC
	['parkingcard'] = {
		label = 'کارت پارکنیگ ویژه',
		weight = 30,
		stack = false,
		consume = 0,
		server = {
			export = "mini_misc.useParkingCard",
		}
	},
	['vippass'] = {
		label = 'کارت عبور ویژه',
		weight = 50,
		stack = false
	},
	['lockpick'] = {
		label = 'لاک پیک',
		weight = 300,
	},
	['carkeys'] = {
		label = 'کلید خودرو',
		weight = 100,
		stack = false
	},
	['birthdaycard'] = {
		label = 'کارت تبریک تولد',
		weight = 10,
		stack = false
	},
    ['envelope'] = {
		label = 'نامه',
		weight = 10,
		stack = false
	},
	
	['card_pool'] = {
		label = 'کارت عضویت استخر',
		weight = 10,
		degrade = 1, -- 1 minute
		stack = false,
		decay = true,
	},
	['music_disc'] = {
		label = 'صفحه موسیقی',
		weight = 100,
		stack = false,
        client = {
			event = "mini_misc:playDisc",
		}  
	},
	['card_hotel'] = {
		label = 'کارت اتاق',
		weight = 100,
		stack = false,
        description = "این کارت متعلق به اتاق های هتل هیلتون است، لطفا پس از اتمام اقامت خود کارت را به کارکنان هتل تحویل دهید",
	},
	
    ['tarotcard1'] = {
		label = 'هشت حلقه',
		weight = 100,
		stack = false,
	},
    ['tarotcard2'] = {
		label = 'مرگ',
		weight = 100,
		stack = false,
	},
    ['tarotcard3'] = {
		label = 'پنج حلقه',
		weight = 100,
		stack = false,
	},
    ['tarotcard4'] = {
		label = 'کاهن اعظم',
		weight = 100,
		stack = false,
	},
    ['tarotcard5'] = {
		label = 'ملکه عصا',
		weight = 100,
		stack = false,
	},
    ['tarotcard6'] = {
		label = 'پادشاه حلقه ها',
		weight = 100,
		stack = false,
	},
    ['tarotcard7'] = {
		label = 'شش حلقه',
		weight = 100,
		stack = false,
	},
    ['tarotcard8'] = {
		label = 'صفحه حلقه ها',
		weight = 100,
		stack = false,
	},
	['tarotcard9'] = {
		label = 'دو حلقه',
		weight = 100,
		stack = false,
	},
	
	['booster1'] = {
		label = 'ابزار کشاورزی',
		description = "با استفاده از این ابزار احتمال پوچ بودن برداشت محصول صفر خواهد شد و با تنظیم صحیح میتوانید عتیقه های زیرخاکی را نادیده بگیرید",
		weight = 300,
		stack = false,
		buttons = {
			{
				label = "1. نرمال",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 1)	
				end,
			},
			{
				label = "2. نادیده گرفتن عتیقه",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 2)	
				end,
			},
		},
	},
	['booster2'] = {
		label = 'ابزار صنعتی',
		description = "با استفاده از این ابزار احتمال پوچ بودن حفاری صفر خواهد شد و با تنظیم صحیح میتوانید عتیقه های زیرخاکی را نادیده بگیرید",
		weight = 300,
		stack = false,
		buttons = {
			{
				label = "1. نرمال",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 1)	
				end,
			},
			{
				label = "2. نادیده گرفتن عتیقه",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 2)	
				end,
			},
		},
	},
	['booster3'] = {
		label = 'ابزار ماهیگیری',
		description = "با استفاده از این ابزار احتمال پوچ بودن صید صفر خواهد شد و با تنظیم صحیح میتوانید شانس صید ماهی مورد نظر خود را افزایش دهید",
		weight = 300,
		stack = false,
		buttons = {
			{
				label = "1. طعمه ماهی قزل آلا",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 1)	
				end,
			},
			{
				label = "2. طعمه میگو",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 2)	
				end,
			},
			{
				label = "3. تور صدف گیری",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 3)	
				end,
			},
			{
				label = "4. طعمه ماهی خاویار",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 4)	
				end,
			},
			{
				label = "5. طعمه لابستر",
				action = function(slot)
					TriggerServerEvent("mini_cycle:changeBoosterMode", slot, 5)	
				end,
			},
		},
	},
	
	
	['void'] = {
		label = 'باطل شده',
		--description = 'آیتم باطل شده',
		weight = 0,
		degrade = 1,
		stack = false,
		decay = true,
		buttons = {
			{
				label = "حذف کردن",
				action = function(slot)
					TriggerServerEvent("mini_base:removeVoid", slot)	
				end,
			},
		},
	},
    
	--[[['medikit'] = {
		label = 'کیت امداد',
		weight = 700,
	},]]
	['bandage'] = {
		label = 'بانداژ',
		weight = 300,
		server = {
			export = "mini_misc.bandage",
		}
	},
	['defibrillator'] = {
		label = 'دستگاه شوک',
		weight = 6000,	
        consume = 0.2,
	},
	['pills'] = {
		label = 'قرص',
		weight = 200,
		stack = false
	},
	
	-- ROBBERIES
	['tkey1'] = {
		label = 'بارنامه',
		weight = 0,
		stack = false
	},	
	['tkey2'] = {
		label = 'بارنامه',
		weight = 0,
		stack = false
	},
	
	['jewels'] = {
		label = 'جواهر',
		weight = 250,
	},
	
    -- ANITIQUES
    ['antique_1'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_2'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_3'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_4'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_5'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_6'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_7'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_8'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_9'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_10'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_11'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_12'] = {
		label = 'عتیقه',
		weight = 250,
	},
    
    ['antique_ru'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_fr'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_tw'] = {
		label = 'عتیقه',
		weight = 250,
	},
    ['antique_co'] = {
		label = 'عتیقه',
		weight = 250,
	},
    
    -- GEMS
    ['gem_amber'] = {
		label = 'کهربا',
		weight = 250,
	},
    ['gem_amethyst'] = {
		label = 'آمیتیس',
		weight = 250,
	},
    ['gem_diamond'] = {
		label = 'الماس',
		weight = 250,
	},
    ['gem_emerald'] = {
		label = 'زمرد',
		weight = 250,
	},
    ['gem_opal'] = {
		label = 'اوپال',
		weight = 250,
	},
    ['gem_pearl'] = {
		label = 'مروارید',
		weight = 250,
	},
    ['gem_peridot'] = {
		label = 'زبرجد',
		weight = 250,
	},
    ['gem_quartz'] = {
		label = 'کوارتز',
		weight = 250,
	},
    ['gem_ruby'] = {
		label = 'یاقوت',
		weight = 250,
	},
    ['gem_sapphire'] = {
		label = 'یاقوت کبود',
		weight = 250,
	},
    ['gem_spinel'] = {
		label = 'لعل',
		weight = 250,
	},
    ['gem_topaz'] = {
		label = 'توپاز',
		weight = 250,
	},
    ['gem_turquoise'] = {
		label = 'فیروزه',
		weight = 250,
	},
    
    --Car Radio
    ['carradio'] = {
        label = 'ضبط خودرو',
        weight = 250,
    },

    --Gym
    ['protein'] = {
        label = 'پروتئین',
        weight = 250,
    },
    ['creatine'] = {
        label = 'کراتین',
        weight = 250,
    },
    ['preworkout'] = {
        label = 'قبل از ورزش',
        weight = 250,
    },
    ['testosterone'] = {
        label = 'تستسترون',
        weight = 250,
    },

    --Hottub
    ['hottub1'] = {
        label = 'هات تاب 1',
        weight = 250,
    },
    ['hottub2'] = {
        label = 'هات تاب 2',
        weight = 250,
    },
    ['hottub3'] = {
        label = 'هات تاب 3',
        weight = 250,
    },
    ['hottub1stairs'] = {
        label = 'پله هات تاب 1',
        weight = 250,
    },
    ['hottub2stairs'] = {
        label = 'پله هات تاب 2',
        weight = 250,
    },
    ['hottub3stairs'] = {
        label = 'پله هات تاب 3',
        weight = 250,
    },

    --TV
    ['tvremote'] = {
        label = 'ریموت تلویزیون',
        weight = 250,
    },
    ['vehicletv'] = {
        label = 'تلویزیون خودرو',
        weight = 250,
    },

    --Water activities
    ['banana'] = {
        label = 'موز آبی',
        weight = 250,
    },
    ['inflatable'] = {
        label = 'بادی',
        weight = 250,
    },
    ['parasailing'] = {
        label = 'پاراسل',
        weight = 250,
    },
    ['ski'] = {
        label = 'اسکی روی آب',
        weight = 250,
    },
    ['circle'] = {
        label = 'دایره',
        weight = 250,
    },
    ['bed1'] = {
        label = 'تشک بادی 1',
        weight = 250,
    },
    ['bed2'] = {
        label = 'تشک بادی 2',
        weight = 250,
    },
    ['bed3'] = {
        label = 'تشک بادی 3',
        weight = 250,
    },
    ['bed4'] = {
        label = 'تشک بادی 4',
        weight = 250,
    },

    --Game Pad
    ['gamepad'] = {
        label = 'نینتندو',
        weight = 250,
    },

    --Game Console
    ['gameboy_black'] = {
        label = 'گیم پد مشکی',
        weight = 250,
    },
    ['gameboy_cyan'] = {
        label = 'گیم پد سبزآبی',
        weight = 250,
    },
    ['gameboy_green'] = {
        label = 'گیم پد سبز',
        weight = 250,
    },
    ['gameboy_pink'] = {
        label = 'گیم پد صورتی',
        weight = 250,
    },
    ['gameboy_purple'] = {
        label = 'گیم پد بنفش',
        weight = 250,
    },
    ['gameboy_red'] = {
        label = 'گیم پد قرمز',
        weight = 250,
    },
       
    -- CATCAFE
    ['catcake'] = {
		label = 'کت کیک',
		weight = 620,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.14, 0.05, 0.03), rot = vec3(145.3975, -53.8984, 4.8412), bone = 18905 },
			usetime = 8000,
		},
	},
	['catcookie'] = {
		label = 'کت کوکی',
		weight = 620,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.14, 0.05, 0.03), rot = vec3(145.3975, -53.8984, 4.8412), bone = 18905 },
			usetime = 8000,
		},
	},
	['catdonut'] = {
		label = 'کت دونات',
		weight = 620,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_foodpack_donut001`, pos = vec3(0.0, -0.03, -0.01), rot = vec3(10.0, 0.0, -1.0), bone = 60309 },
			usetime = 8000,
		},
	},
    ['catcoffee'] = {
		label = 'کت کافی',
		weight = 420,
		client = {
			status = { thirst = 280000, hunger = 10000 },
			anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c'},
			prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			usetime = 8000,
		}
	},
    ['catshake1'] = {
		label = 'کت شیک شکلات',
		weight = 420,
		client = {
			status = { thirst = 290000, hunger = 20000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle'},
			prop = { model = `bzzz_food_xmas_mug_a`, pos = vec3(0.09, -0.01, 0.08), rot = vec3(-44.0, 137.0, 9.0), bone = 18905 },
			usetime = 8000,
		}
	},
    ['catshake2'] = {
		label = 'کت شیک میوه ای',
		weight = 420,
		client = {
			status = { thirst = 300000, hunger = 10000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle'},
			prop = { model = `bzzz_food_xmas_mug_b`, pos = vec3(0.09, -0.01, 0.08), rot = vec3(-44.0, 137.0, 9.0), bone = 18905 },
			usetime = 8000,
		}
	},
	
    -- PERAL
    ['seafood1'] = {
		label = 'ماهی کبابی',
		weight = 400,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_d',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_d',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 4000,
		},
	},
    ['seafood2'] = {
		label = 'میگو سوخاری',
		weight = 500,
		client = {
			status = { hunger = 400000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_j',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_material_shrimp_a',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 7000,
		},
	},
    ['seafood3'] = {
		label = 'خوراک صدف',
		weight = 500,
		client = {
			status = { hunger = 350000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_l',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_g',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 7000,
		},
	},
    ['seafood4'] = {
		label = 'فیش اند چیپس',
		weight = 700,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_e',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_d',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 8000,
		},
	},
    ['seafood5'] = {
		label = 'لابستر',
		weight = 1000,
		client = {
			status = { hunger = 600000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_g',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_d',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 10000,
		},
	},
    

	-- CONTAINERS
	['jajimpack1'] = {
		label = 'بقچه جاجیم کوچک',
		weight = 250,
		stack = false,
		close = false,
		consume = 0
	},
	['jajimpack2'] = {
		label = 'بقچه جاجیم متوسط',
		weight = 500,
		stack = false,
		close = false,
		consume = 0
	},
	['jajimpack3'] = {
		label = 'بقچه جاجیم بزرگ',
		weight = 800,
		stack = false,
		close = false,
		consume = 0
	},
		
	-- BUILDS
	['build1'] = {
		label = 'بیلد کف',
		weight = 100,
	},
	['build2'] = {
		label = 'بیلد رمپ',
		weight = 100,
	},
	['build3'] = {
		label = 'بیلدایستاده',
		weight = 100,
	},
    
    
	--	bzzz_restaurantfood 
	['res_food_a'] = {
		label = 'Schnitzel with fries',
		degrade = 1,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Schnitzel with fries",
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_a',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_a',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_b'] = { 
		label = 'Schnitzel with croquettes',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Schnitzel with croquettes",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_b',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_b',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_c'] = { 
		label = 'Spaghetti',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Spaghetti",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_c',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_c',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_d'] = {
		label = 'Grilled fish',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Grilled fish",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_d',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_d',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_e'] = { 
		label = 'Steak with potatoes',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Steak with potatoes",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_e',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_e',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_f'] = {
		label = 'Steak with fries',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Steak with fries",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_f',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_a',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			
			usetime = 17500,
		},
	},
	['res_food_g'] = { 
		label = 'Lobster',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Lobster",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_g',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_d',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_h'] = { 
		label = 'Eggs with toast',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Eggs with toast",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_h',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_f',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_i'] = { 
		label = 'Sushi',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Sushi",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_i',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_h',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_j'] = {
		label = 'Shrimps with sauce',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Shrimps with sauce",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_j',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_material_shrimp_a',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_k'] = { 
		label = 'Chicken with potatoes',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Chicken with potatoes",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_k',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_e',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},
	['res_food_l'] = { 
		label = 'Vegetarian salad',
		degrade = 2880,-- 48 stunden
		weight = 200,
		stack = false,
		close = true,
		description = "Vegetarian salad",
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'bzzz@restaurant@eat', clip = 'bzzz_restaurant_eat' },
			
			prop = { model = 'bzzz_restaurant_food_l',
				bone = 60309,
				pos = vec3(0.08, -0.04, 0.07),
			rot = vec3(-30.0, 10.0, 0.0) },
			
			propTwo = { model = 'bzzz_restaurant_fork_g',
				bone = 28422,
				pos = vec3(0.07, 0.05, -0.03),
			rot = vec3(-100.0, 24.0, -86.0) },
			usetime = 17500,
			notification = 'You have satisfied your hunger'
		},
	},

}