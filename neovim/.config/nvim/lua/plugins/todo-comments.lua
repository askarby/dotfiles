-- Highlight todo, notes, etc in comments
return {{
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = {'nvim-lua/plenary.nvim', 'folke/snacks.nvim'},
    opts = {
        signs = false
    },
    keys = {{
        "<leader>ct",
        function()
            Snacks.picker.todo_comments()
        end,
        desc = "[Code] [T]odo comments"
    }}
}}
-- vim: ts=2 sts=2 sw=2 et
