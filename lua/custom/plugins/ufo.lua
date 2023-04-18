   return {
        "kevinhwang91/nvim-ufo",
          dependencies = {
            "kevinhwang91/promise-async",
                "luukvbaal/statuscol.nvim",
        },
         config=function()


    require('ufo').setup({
      open_fold_hl_timeout = 150,
      close_fold_kinds = { 'imports', 'comment' },
      preview = {
        win_config = {
          border = { '', '─', '', '', '', '─', '', '' },
          winhighlight = 'Normal:Folded',
          winblend = 0
        },
        mappings = {
          scrollU = '<C-u>',
          scrollD = '<C-d>'
        }
      },
      provider_selector = function(bufnr, filetype, buftype)
        -- if you prefer treesitter provider rather than lsp,
        -- return ftMap[filetype] or {'treesitter', 'indent'}
        -- return ftMap[filetype]
        return { 'treesitter', 'indent' }

        -- refer to ./doc/example.lua for detail
      end
    })
    vim.keymap.set('n', 'zi', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
    vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
    vim.keymap.set('n', 'K', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      if not winid then
        -- choose one of coc.nvim and nvim lsp
        --  vim.fn.CocActionAsync('definitionHover') -- coc.nvim
        vim.lsp.buf.hover()
      end
    end)




    local handler = function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      local suffix = ('  %d '):format(endLnum - lnum)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0
      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument, need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      table.insert(newVirtText, { suffix, 'MoreMsg' })
      return newVirtText
    end

    -- global handler
    -- `handler` is the 2nd parameter of `setFoldVirtTextHandler`,
    -- check out `./lua/ufo.lua` and search `setFoldVirtTextHandler` for detail.
    --
    -- require('ufo').setup({
    --   fold_virt_text_handler = handler
    -- })







    -- buffer scope handler
    -- will override global handler if it is existed
    local bufnr = vim.api.nvim_get_current_buf()
    require('ufo').setFoldVirtTextHandler(bufnr, handler)



    ----folding for ufo config
    --vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep:|,foldclose:]]
    vim.o.foldcolumn = "0" -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    --vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    --vim.o.statuscolumn = '%=%l%s%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "▼" : "⏵") : " " }'
    --vim.o.statuscolumn = '%=%l%s%{foldlevel(v:lnum) > 0 ? (foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "-" : "+") : "│") : " " }'
    --vim.o.statuscolumn = '%=%l%s%#FoldColumn#%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "▼" : "⏵") : " " }%*'
    --vim.o.statuscolumn = '%=%l%s%#FoldColumn#%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "" : "") : "  " }%*'
    --
    -- vim.o.statuscolumn = '%= '
    --     .. '%s' -- sign column FIXME: figure out how to put on the other side without having to do a lot of shifting
    --     .. '%{%' -- evaluate this, and then evaluate what it returns
    --     .. '&number ?'
    --     .. '(v:relnum ?'
    --     ..
    --     'printf("%"..len(line("$")).."s", v:relnum)'
    --     -- when showing relative numbers, make sure to pad so things don't shift as you move the cursor
    --     .. ':'
    --     .. 'v:lnum'
    --     .. ')'
    --     .. ':'
    --     .. '""'
    --     .. ' ' -- space between lines and fold
    --     .. '%}'
    --     .. '%= '
    --     .. '%#FoldColumn#' -- highlight group for fold
    --     .. '%{' -- expression for showing fold expand/colapse
    --     .. 'foldlevel(v:lnum) > foldlevel(v:lnum - 1)' -- any folds?
    --     .. '? (foldclosed(v:lnum) == -1' -- currently open?
    --     .. '? ""' -- point down
    --     .. ':  ""' -- point to right
    --     .. ')'
    --     .. ': " "' -- blank for no fold, or inside fold
    --     .. '}'
    --     .. '%= ' -- spacing between end of column and start of text
  end
    }
