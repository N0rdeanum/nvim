--[[

  Модуль конфигурации для режима "Ковбой"

  Использование:
  require('cowboy-config').cowboy()

  Этот модуль предоставляет конфигурацию для режима "Ковбой", забавной функции, которая реагирует
  на чрезмерное количество нажатий клавиш управления (h, j, k, l, +, или -) уведомлением. Уведомление
  срабатывает, когда пользователь нажимает любую из этих клавиш более 10 раз за интервал в 2 секунды.

  Функции:
  - M.cowboy(): Настраивает конфигурацию режима "Ковбой".

  Пример:
  local cowboyConfig = require('cowboy-config')
  cowboyConfig.cowboy()

--]]

local M = {}

--- Настраивает конфигурацию режима "Ковбой".
function M.cowboy()
  ---@type table? id - Идентификатор для уведомления.
  local id
  local ok = true

  --- Перебирает указанные клавиши и настраивает отображение клавиш.
  for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
    local count = 0
    local timer = assert(vim.loop.new_timer())
    local map = key

    -- Настраивает отображение клавиши для указанной клавиши.
    vim.keymap.set("n", key, function()
      if vim.v.count > 0 then
        count = 0
      end

      -- Проверяет, превышает ли количество 10, и вызывает уведомление.
      if count >= 10 then
        ok, id = pcall(vim.notify, "Активирован режим 'Ковбой'! 🤠", vim.log.levels.WARN, {
          icon = "🤪",
          replace = id,
          keep = function()
            return count >= 10
          end,
        })

        -- Обрабатывает ошибки при вызове уведомления.
        if not ok then
          id = nil
          return map
        end
      else
        count = count + 1

        -- Настраивает таймер для сброса количества после 2 секунд.
        timer:start(2000, 0, function()
          count = 0
        end)

        return map
      end
    end, { expr = true, silent = true })
  end
end

return M
