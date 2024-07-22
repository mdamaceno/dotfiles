" let g:copilot_filetypes = {
"       \ 'yaml.docker-compose': v:true,
"       \ }

" let b:copilot_enabled = v:false

lua <<LUA
require("copilot").setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})

require("copilot_cmp").setup()
LUA
