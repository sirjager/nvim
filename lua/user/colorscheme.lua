require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = ""},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})






-- require('onedark').setup  {
--         -- Main options --
--         -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--         style = 'darker', 
--         transparent = false,  -- Show/hide background
--         term_colors = true, -- Change terminal color as per the selected theme style
--         ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--         cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--         -- toggle theme style ---
--         toggle_style_key = '<leader>ts', -- Default keybinding to toggle
--         toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
        
--         -- Change code style ---
--         -- Options are italic, bold, underline, none
--         -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
--         code_style = {
--             comments = 'italic',
--             keywords = 'bold',
--             functions = 'italic',
--             strings = 'none',
--             variables = 'none'
--         },
--         -- Custom Highlights --
--         colors = {
--             bright_orange = "#ff8800",    -- define a new color
--             green = '#00ffaa',            -- redefine an existing color
--         },
--         highlights = {
--             TSKeyword = {fg = '$green'},
--             TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
--             TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
--         }
--     }
    
-- require('onedark').load()
 