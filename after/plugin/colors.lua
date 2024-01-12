function ColorMyPencils(color)
    color = color or 'rose-pine'
    vim.cmd.colorschema(color)
end


ColorMyPencils()