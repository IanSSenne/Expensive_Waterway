data:extend({
{
    type = "item",
    name = "waterfill",
    tooltip = "wftt",
    icon = "__Waterway__/water.png",
    icon_size = 128,
    subgroup = "terrain",
    order = "c[landfill]-a[dirt]",
    stack_size = 10,
    place_as_tile =
    {
      result = "water",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },{
    type = "recipe",
    name = "waterfill",
    category = "chemistry",
    energy_required = 100,
    enabled = false,
    ingredients =
    {
      {type="item", name="stone", amount=5},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="water", amount=10000}
    },
    results=
    {
      {type="item", name="waterfill", amount=1}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.251, g = 0.125, b = 0.733, a = 0.000}, -- #4020bbff
      secondary = {r = 0.063, g = 0.063, b = 1.000, a = 0.000}, -- #1010ffff
      tertiary = {r = 0.000, g = 0.000, b = 0.498, a = 0.000}, -- #00007fff
	}
  },
   {
    type = "technology",
    name = "waterfill",
    icon = "__Waterway__/water.png",
	prerequisites = {"landfill"},
    icon_size = 128,
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 25
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "waterfill"
      }
    },
    order = "b-d"
  }
  })
  
