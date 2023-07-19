local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        html = "rainbow-delimiters",
        lua = 'rainbow-blocks',
        tsx = 'rainbow-parens',
        jsx = 'rainbow-delimiters-react',
        javascript="rainbow-delimiters-react",
        -- javascript = "rainbow-parens",
        json = 'rainbow-delimiters',
        js = "rainbow-parens",
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
