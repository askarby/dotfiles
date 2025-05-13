return {{
    "leath-dub/snipe.nvim",
    keys = {{
        "gb",
        function()
            require("snipe").open_buffer_menu()
        end,
        desc = "Open snipe's buffer menu"
    }},
    opts = {}
}}
