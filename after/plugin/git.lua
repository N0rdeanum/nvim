local status, git = pcall(require, "git")

git.setup {
  keymap = {
    -- Open blame window
    blame = "<Leader>gb",
    --Открыть файл/папку git репозитория
    browse = "<Leader>go"
  }
}
