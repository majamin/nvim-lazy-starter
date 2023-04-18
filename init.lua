
-- .
-- ├── init.lua
-- ├── ...
-- └── lua
--     ├── plugins
--     │   ├── init.lua             -- Loads simple plugins
--     │   └── telescope.lua		-- Larger plugins have separate files
--     └── user
--         ├── lazy_bootstrap.lua
--         ├── maps.lua
--         └── options.lua

-- NOTE: ensure that you map <leader> before loading Lazy

require("user/lazy_bootstrap")   -- bootstraps folke/lazy
require("user/options")          -- loads options, colors, etc.
require("user/maps")             -- loads non-plugin maps
require("lazy").setup("plugins") -- loads each lua/plugin/*
