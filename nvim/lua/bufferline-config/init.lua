require("bufferline").setup {
    buffer_close_icon =  "  " ,
    -- buffer_close_icon = '',
    modificado_icon =  " ● " ,
    close_icon =  "  " ,
    -- close_icon = '',
    left_trunc_marker =  "  " ,
    right_trunc_marker =  "  " 
}
vim.cmd [[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
