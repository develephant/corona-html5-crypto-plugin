--#############################################################################
--# Corona HTML5 Crypto Plugin Lib
--#############################################################################
local lib

local platform = system.getInfo("platform")

if platform == 'html5' then
  lib = require("crypto_js")
else
	-- wrapper for non web platforms
	local CoronaLibrary = require "CoronaLibrary"
	-- Create stub library for simulator
	lib = CoronaLibrary:new{ name='crypto', publisherId='com.develephant' }
  -- Alert for non-HTML5 platforms
	local function defaultFunction()
		print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
  end
  
  lib.digest = defaultFunction
  lib.hmac = defaultFunction
  lib.encrypt = defaultFunction
  lib.decrypt = defaultFunction
end

return lib
