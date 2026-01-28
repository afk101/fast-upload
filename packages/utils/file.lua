local Env = require("packages.utils.env")
local M = {}

-- 生成临时文件路径
-- @param prefix string 文件名前缀
-- @param extension string 文件扩展名（不带点）
-- @return string 完整的临时文件路径
function M.get_temp_file_path(prefix, extension)
  local env = Env.loadEnv()
  -- 优先使用 .env 配置，其次是系统环境变量，最后默认 /tmp/
  local temp_dir = env["TMPDIR"] or os.getenv("TMPDIR") or "/tmp/"
  -- 确保路径以 / 结尾
  if string.sub(temp_dir, -1) ~= "/" then
      temp_dir = temp_dir .. "/"
  end
  return temp_dir .. prefix .. os.time() .. "." .. extension
end

return M
