local Compat = {}

Compat.is_win = function()
  local uname_s = vim.loop.os_uname().sysname
  return uname_s:find('Windows') ~= nil
end

Compat.is_mac = function()
  local uname_s = vim.loop.os_uname().sysname
  return uname_s == 'Darwin'
end

Compat.is_linux = function()
  local uname_s = vim.loop.os_uname().sysname
  return uname_s == 'Linux'
end

return Compat
