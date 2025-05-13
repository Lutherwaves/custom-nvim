-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "pylsp",
  "gopls",
  "ccls",
  "cmake",
  "ts_ls",
  "templ",
  "yamlls",
  "jsonls",
  "svelte",
  "angularls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "svelte" },
}

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true,
    },
    provideFormatter = true,
  },
}

lspconfig.angularls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "component.html" },
  root_dir = lspconfig.util.root_pattern("angular.json", "project.json"),
  cmd = { "ngserver", "--stdio", "--tsProbeLocations", vim.fn.getcwd(), "--ngProbeLocations", vim.fn.getcwd() },
}

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "templ", "astro", "javascript", "typescript", "react" },
  init_options = { userLanguages = { templ = "html" } },
}
local vim_capb = vim.lsp.protocol.make_client_capabilities()
vim_capb.textDocument.completion.completionItem.snippetSupport = true

lspconfig.terraformls.setup {
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 },
  capabilities = vim_capb,
}

lspconfig.jsonls.setup {
  capabilities = vim_capb,
}

lspconfig.helm_ls.setup {
  settings = {
    ["helm-ls"] = {
      yamlls = {
        path = "yaml-language-server",
      },
    },
  },
}
