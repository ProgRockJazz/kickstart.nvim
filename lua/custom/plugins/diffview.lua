-- diffview.nvim: file-panel + side-by-side diffs for a commit, range, or the
-- working tree. No global keymaps ship by default (only in-view ones like
-- <tab>/<s-tab> to cycle files, [c/]c for hunks, g? for help), so define a few.
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewFileHistory', 'DiffviewClose' },
  keys = {
    -- Review the last commit vs the working tree (right side is editable, so
    -- you can fix things up and `git commit --amend`).
    { '<leader>gd', '<cmd>DiffviewOpen HEAD~1<cr>', desc = 'Git [d]iff last commit (vs working tree)' },
    -- Uncommitted changes only.
    { '<leader>gw', '<cmd>DiffviewOpen<cr>', desc = 'Git diff [w]orking tree' },
    -- History of the whole repo / current file.
    { '<leader>gh', '<cmd>DiffviewFileHistory<cr>', desc = 'Git [h]istory (repo)' },
    { '<leader>gf', '<cmd>DiffviewFileHistory %<cr>', desc = 'Git history ([f]ile)' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = 'Git diff [c]lose' },
  },
  opts = {},
}
