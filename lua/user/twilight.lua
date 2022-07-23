local status_ok, twilight = pcall(require, "twilight")
if not status_ok then
  return
end

twilight.setup {
    -- color: we try to get the foreground from the highlight groups or fallback color
    -- inactive: when true, other windows will be fully dimmed (unless they contain the same buffer)
    dimming = {alpha = 0.25,color = { "Normal", "#ffffff" }, inactive = false},
    context = 10, -- amount of lines we will try to show around the current line
    treesitter = true, -- use treesitter when available for the filetype
    -- treesitter is used to automatically expand the visible text,
    -- but you can further control the types of nodes that should always be fully expanded
    -- for treesitter, we we always try to expand to the top-most ancestor with these types
    -- exclude these filetypes
    expand = { "function","method","table","if_statement"},exclude = {}
}


