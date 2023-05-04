local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier,
  -- eslint
  b.code_actions.eslint,
  b.diagnostics.eslint,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- json
  b.diagnostics.jsonlint,
  b.formatting.fixjson,

  -- yaml
  b.diagnostics.yamllint
}

null_ls.setup {
  debug = true,
  sources = sources,
}
