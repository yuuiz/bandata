local m = {}

local httpService = game:GetService('HttpService')

assert(httpService.HttpEnabled, 'Http is not enabled, please enable in settings.')
local function requestUrl(url: string)
    local response, data
    local s, e = pcall(function()
        response = httpService:GetAsync(url)
        data = httpService:JSONDecode(response)
    end)
    if (e) or (not data) then warn(e or data or "no error returned"); return false end
    if s then
        return response, data
    end
end
function m:getBanInfo()
    local bans, formatted = requestUrl('github link here..')

    if (bans ~= false) then return bans, formatted else warn('failed to get ban info!') end
end

return m