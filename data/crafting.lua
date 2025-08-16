return {
	--[[{
		items = {
			{
				name = 'lockpick',
				ingredients = {
					scrapmetal = 5,
					WEAPON_HAMMER = 0.05
				},
				duration = 5000,
				count = 2,
			},
		},
		points = {
			vec3(-1147.083008, -2002.662109, 13.180260),
			vec3(-345.374969, -130.687088, 39.009613)
		},
		zones = {
			{
				coords = vec3(-1146.2, -2002.05, 13.2),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
			{
				coords = vec3(-346.1, -130.45, 39.0),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 70.0,
			},
		},
		blip = { id = 566, colour = 31, scale = 0.8 },
	},]]
	{
		items = {
			{
				name = 'burger',
				ingredients = {
					bread = 1,
					meat = 1,
					vegetables = 1,
				},
				duration = 10000,
				count = 1,
                anim = {
                    dict = "amb@prop_human_bbq@male@idle_a", -- MaleScenario | amb@prop_human_bbq@male@idle_a
                    clip = "idle_b", -- PROP_HUMAN_BBQ | idle_b
                    prop = { model = `prop_fish_slice_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
                },
                -- scenario = 'PROP_HUMAN_BBQ',
                -- anim = {
                    -- scenario = 'PROP_HUMAN_BBQ',
                -- },
			},
			{
				name = 'sandwich',
				ingredients = {
					bread = 1,
					cheese = 1,
					vegetables = 1,
				},
				duration = 10000,
				count = 1,
                anim = {
                    dict = "amb@prop_human_bbq@male@idle_a", -- MaleScenario | amb@prop_human_bbq@male@idle_a
                    clip = "idle_b", -- PROP_HUMAN_BBQ | idle_b
                    prop = { model = `prop_fish_slice_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
                },
                -- scenario = 'PROP_HUMAN_BBQ',
                -- anim = {
                    -- scenario = 'PROP_HUMAN_BBQ',
                -- },
			},
			{
				name = 'hotdog',
				ingredients = {
					bread = 1,
					meat = 1,
				},
				duration = 10000,
				count = 1,
                anim = {
                    dict = "amb@prop_human_bbq@male@idle_a",
                    clip = "idle_b",
                    prop = { model = `prop_fish_slice_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
                },
			},
			{
				name = 'tacos',
				ingredients = {
					bread = 1,
					chicken = 1,
					vegetables = 1,
				},
				duration = 10000,
				count = 1,
                anim = {
                    dict = "amb@prop_human_bbq@male@idle_a",
                    clip = "idle_b",
                    prop = { model = `prop_fish_slice_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
                },
			},
		},
		points = {
			vec3(-97.52, 947.67, 231.81), -- 712
			vec3(-1555.3627, -127.0280, 53.3375), -- 642
			vec3(-165.2383, 888.932, 232.465), -- 709
            
			vec3(3297.96, 5062.73, 22.84), -- 2027- -- jayi k vay miste - paeeni object +z1
			vec3(2552.01, 6195.93, 165.39), -- 2027+
			vec3(-811.94, 246.76, 86.2), -- 691
			vec3(-1540.28, -1642.04, 9.46), -- island
		},
		zones = {
			{
				coords = vec3(-97.52, 947.67, 232.81),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 143.54,
			},
			{
				coords = vec3(-1555.44, -126.44, 54.33),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 185.72,
			},
			{
				coords = vec3(-165.23, 889.58, 233.47),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 173.08,
			},
			
            {
				coords = vec3(3298.61, 5062.51, 23.07),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 263.08,
			},
            {
				coords = vec3(2551.41, 6195.91, 165.38),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 96.08,
			},
            {
				coords = vec3(-812.59, 246.65, 86.18),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 108.08,
			},
            {
				coords = vec3(-1540.54, -1641.40, 9.54),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 108.08,
			},
		},
		-- blip = { id = 566, colour = 31, scale = 0.8 },
	},
}
