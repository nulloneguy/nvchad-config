local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "emmet_ls", "jsonls", "tsserver", "vls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.volar.setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
  documentFeatures = {
    documentColor = false,
    documentSymbol = true,
    foldingRange = true,
    linkedEditingRange = true,
    selectionRange = true,
  },
  languageFeatures = {
    callHierarchy = true,
    codeAction = true,
    codeLens = true,
    completion = {
      defaultAttrNameCase = "kebabCase",
      defaultTagNameCase = "both",
    },
    definition = true,
    diagnostics = true,
    documentHighlight = true,
    documentLink = true,
    hover = true,
    implementation = true,
    references = true,
    rename = true,
    renameFileRefactoring = true,
    schemaRequestService = true,
    semanticTokens = false,
    signatureHelp = true,
    typeDefinition = true,
  },
  typescript = {
    serverPath = "",
  },
}

lspconfig.vuels.setup {}
