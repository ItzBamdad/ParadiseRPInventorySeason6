return {
	-- 0	vehicle has no storage
	-- 1	vehicle has no trunk storage
	-- 2	vehicle has no glovebox storage
	-- 3	vehicle has trunk in the hood
	Storage = {
		[`jester`] = 3,
		[`adder`] = 3,
		[`osiris`] = 1,
		[`pfister811`] = 1,
		[`penetrator`] = 1,
		[`autarch`] = 1,
		[`bullet`] = 1,
		[`cheetah`] = 1,
		[`cyclone`] = 1,
		[`voltic`] = 1,
		[`reaper`] = 3,
		[`entityxf`] = 1,
		[`t20`] = 1,
		[`taipan`] = 1,
		[`tezeract`] = 1,
		[`torero`] = 3,
		[`turismor`] = 1,
		[`fmj`] = 1,
		[`infernus`] = 1,
		[`italigtb`] = 3,
		[`italigtb2`] = 3,
		[`nero2`] = 1,
		[`vacca`] = 3,
		[`vagner`] = 1,
		[`visione`] = 1,
		[`prototipo`] = 1,
		[`zentorno`] = 1,
		[`trophytruck`] = 0,
		[`trophytruck2`] = 0,
	},

	-- slots, maxWeight; default weight is 8000 per slot
	glovebox = {
		[0] = {11, 88000},		-- Compact
		[1] = {11, 88000},		-- Sedan
		[2] = {11, 88000},		-- SUV
		[3] = {11, 88000},		-- Coupe
		[4] = {11, 88000},		-- Muscle
		[5] = {11, 88000},		-- Sports Classic
		[6] = {11, 88000},		-- Sports
		[7] = {11, 88000},		-- Super
		[8] = {5, 40000},		-- Motorcycle
		[9] = {11, 88000},		-- Offroad
		[10] = {11, 88000},		-- Industrial
		[11] = {11, 88000},		-- Utility
		[12] = {11, 88000},		-- Van
		[14] = {31, 248000},	-- Boat
		[15] = {31, 248000},	-- Helicopter
		[16] = {51, 408000},	-- Plane
		[17] = {11, 88000},		-- Service
		[18] = {11, 88000},		-- Emergency
		[19] = {11, 88000},		-- Military
		[20] = {11, 88000},		-- Commercial (trucks)
		models = {
			[`xa21`] = {11, 88000}
		}
	},

	trunk = {
		[0] = {10, 30000},		-- Compact
		[1] = {20, 75000},		-- Sedan
		[2] = {20, 95000},		-- SUV
		[3] = {15, 60000},		-- Coupe
		[4] = {15, 60000},		-- Muscle
		[5] = {15, 60000},		-- Sports Classic
		[6] = {15, 60000},		-- Sports
		[7] = {10, 37500},		-- Super
		[8] = {5, 10000},		-- Motorcycle
		[9] = {25, 95000},		-- Offroad
		--[10] = {20, 408000},	-- Industrial
		[11] = {20, 112500},	-- Utility
		[12] = {25, 170000},	-- Van
		-- [14] -- Boat
		-- [15] -- Helicopter
		-- [16] -- Plane
		[17] = {20, 112500},	-- Service
		[18] = {20, 112500},	-- Emergency
		[19] = {20, 112500},	-- Military
		[20] = {30, 375000},	-- Commercial
		models = {
			[`terbyte`] = {100, 1000000},
			[`nmule`] = {30, 500000},
			[`mrtasty`] = {30, 500000}, -- 06/19/2024
			[`zamiad`] = {25, 200000},
	
			[`seashark3`] = {2, 20000},    --Speedophile Seashark    boat    mini    220
			[`jetmax`] = {3, 30000},    --Shitzu Jetmax    boat    mini    370
			[`speeder`] = {7, 70000},    --Pegassi Speeder    boat    mini    670
			[`microlight`] = {7, 70000},    --Micro Light    aircraft    mini    677
			[`velum2`] = {14, 140000},    --Velum 2    aircraft    mini    1370
			[`frauscher16`] = {30, 300000},    --Frauscher    boat    mini    2700
			[`supervolito`] = {30, 300000},    --Super Volito    helicopter    mini    2700

			[`seashark`] = {1, 10000},    --Seashark    boat    ic    424000
			[`suntrap`] = {5, 100000},    --Suntrap    boat    ic    799200
			[`dinghy2`] = {5, 180000},    --Dinghy 2    boat    ic    959200
			[`havok`] = {3, 30000},    --Nagasaki Havok    helicopter    ic    2400000
			[`seasparrow`] = {5, 120000},    --Sea Sparrow    helicopter    ic    4720000
			[`mammatus`] = {20, 300000},    --Jobuilt Mammatus    aircraft    ic    13600000
            
            -- Motorcycles
            [`1200EMS`] = {3, 3000},
            [`1200RT`] = {3, 3000},
            [`Y1700MAX`] = {3, 3000},
            [`akuama`] = {3, 3000},
            [`akuma`] = {3, 3000},
            [`bf400`] = {3, 3000},
            [`carbonrs`] = {3, 3000},
            [`cbr1000rrr`] = {3, 3000},
            [`esskey`] = {3, 3000},
            [`faggio`] = {3, 3000},
            [`faggio3`] = {3, 3000},
            [`hakuchou`] = {3, 3000},
            [`manchez`] = {3, 3000},
            [`nightblade`] = {3, 3000},
            [`policeb`] = {3, 3000},
            [`r6`] = {3, 3000},
            [`s1000rr`] = {3, 3000},
            [`sanctus`] = {3, 3000},
            [`vader`] = {3, 3000},
            [`vortex`] = {3, 3000},
            [`zombieb`] = {3, 3000},
            [`zx10r`] = {3, 3000},

		},
		boneIndex = {
			[`14grandeur`] = 'wheel_lr',
            
			[`pounder`] = 'wheel_rr',
			[`terbyte`] = 'wheel_lf',
			[`semi`] = 'wheel_lf',
			
			[`hauler`] = 'wheel_lf',
			[`dk350z`] = 'wheel_lf', -- 06/14/2024
			[`imorgon`] = 'wheel_lf', -- 06/17/2024
			[`pbus`] = 'wheel_lf', -- 06/19/2024
			[`mbbs20`] = 'wheel_lf', -- 06/21/2024
			[`c150`] = 'wheel_lf', -- 06/21/2024
			
			[`seashark3`] = 'engine',
			[`jetmax`] = 'engine',
			[`speeder`] = 'engine',
			[`microlight`] = 'engine',
			[`velum2`] = 'door_dside_r',
			[`frauscher16`] = 'seat_dside_f',
			[`supervolito`] = 'door_dside_r',

			[`seashark`] = 'engine',
			[`suntrap`] = 'engine',
			[`dinghy2`] = 'engine',
			[`havok`] = 'engine',
			[`seasparrow`] = 'engine',
			[`mammatus`] = 'door_dside_f',
            
            
            -- Motorcycles
            [`1200EMS`] = 'seat_f',
            [`1200RT`] = 'seat_f',
            [`Y1700MAX`] = 'seat_f',
            [`akuama`] = 'seat_f',
            [`akuma`] = 'seat_f',
            [`bf400`] = 'seat_f',
            [`carbonrs`] = 'seat_f',
            [`cbr1000rrr`] = 'seat_f',
            [`esskey`] = 'seat_f',
            [`faggio`] = 'seat_f',
            [`faggio3`] = 'seat_f',
            [`hakuchou`] = 'seat_f',
            [`manchez`] = 'seat_f',
            [`nightblade`] = 'seat_f',
            [`policeb`] = 'seat_f',
            [`r6`] = 'seat_f',
            [`s1000rr`] = 'seat_f',
            [`sanctus`] = 'seat_f',
            [`vader`] = 'seat_f',
            [`vortex`] = 'seat_f',
            [`zombieb`] = 'seat_f',
            [`zx10r`] = 'seat_f',
			
		}
	}
}
