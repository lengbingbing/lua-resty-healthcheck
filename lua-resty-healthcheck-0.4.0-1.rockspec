package = "lua-resty-healthcheck"
version = "0.4.0-1"
source = {
   url = "https://github.com/Kong/lua-resty-healthcheck/archive/0.4.0.tar.gz",
   tag = "0.4.0",
   dir = "lua-resty-healthcheck-0.4.0"
}
description = {
   summary = "Healthchecks for OpenResty to check upstream service status",
   detailed = [[
      lua-resty-healthcheck is a module that can check upstream service
      availability by sending requests and validating responses at timed
      intervals.
   ]],
   homepage = "https://github.com/Kong/lua-resty-healthcheck",
   license = "Apache 2.0"
}
dependencies = {
   "lua-resty-worker-events == 0.3.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.healthcheck"] = "lib/resty/healthcheck.lua",
      ["resty.healthcheck.utils"] = "lib/resty/healthcheck/utils.lua"
   }
}