require("kou.remap")
require("kou.packer")
require("kou.set")

require('telescope').setup{ 
    defaults = { 
        file_ignore_patterns = { 
            "node_modules" 
        }
    }
}
