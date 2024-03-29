require("kou.remap")
require("kou.packer")
require("kou.set")

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        }
    }
}

require('onedark').setup {
    highlights = {
        ['@text.todo'] = { fg = '#FF0000', bg = '#555555', bold = true }
    }
}

local c = require('vscode.colors').get_colors()
require('vscode').setup {
    group_overrides = {
        Todo = { fg = '#FF0000', bg = '#000000', bold = true },
    },
}
require('vscode').load()
-- TODO
