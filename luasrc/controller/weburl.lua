module("luci.controller.weburl", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/weburl") then return end

    entry({"admin", "custom"}, firstchild(), "我的", 89).dependent = false
    entry({"admin", "custom", "weburl"}, cbi("weburl"), _("网址过滤"), 603).dependent = true
    entry({"admin", "custom", "weburl", "status"}, call("status")).leaf = true
end

function status()
    local e = {}
    e.status = luci.sys.call("iptables -L FORWARD |grep WEBURL >/dev/null") == 0
    luci.http.prepare_content("application/json")
    luci.http.write_json(e)
end
