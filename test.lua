--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local points = 0;
local missing = {}
local functions = {
 request = request or syn.request or table.insert(missing,"request"),
 getgc = getgc or table.insert(missing,"getgc"),
 getgenv = getgenv or table.insert(missing,"getgenv"),
 getloadedmodules = getloadedmodules or table.insert(missing,"getloadedmodules"),
 hookfunction = hookfunction or table.insert(missing,"hookfunction"),
 getreg = getreg or getregistry or debug.getregistry or table.insert(missing,"getreg"),
 getfenv = getfenv or table.insert(missing,"getfenv"),
 getmenv = getmenv or table.insert(missing,"getmenv"),
 getsenv = getsenv or table.insert(missing,"getsenv"),
 islclosure = islclosure or syn_islclosure or syn.islclosure or table.insert(missing,"iscclosure"),
 loadstring = loadstring or table.insert(missing,"loadstring"),
 getrawmetatable = getrawmetatable or table.insert(missing,"getrawmetatable"),
 getnilinstances = getnilinstances or table.insert(missing,"getnilinstances"),
 replaceclosure = replaceclosure or table.insert(missing,"replaceclosure"),
 settflag = settflag or syn_setfflag or debug.setfflag or table.insert(missing,"setfflag"),
 getnamecallmethod = getnamecallmethod or table.insert(missing,"getnamecallmethod"),
 setnamecallmethod = setnamecallmethod or table.insert(missing,"setnamecallmethod"),
 getspecialinfo = getspecialinfo or table.insert(missing,"getspecialinfo"),
 isreadonly = isreadonly or table.insert(missing,"isreadonly"),
 setreadonly = setreadonly or table.insert(missing,"setreadonly"),
 islclosure = islclosure or syn_islclosure or table.insert(missing,"islclosure"),
 checkcaller = checkcaller or table.insert(missing,"checkcaller"),
 dumpstring = dumpstring or table.insert(missing,"dumpstring"),
 newcclosure = newcclosure or syn.newcclosure or syn_newcclosure or table.insert(missing,"newcclosure"),
 getcallingscript = getcallingscript or table.insert(missing,"getcallingscript"),
 getinstances = getinstances or table.insert(missing,"getinstances"),
 getscripts = getscripts or table.insert(missing,"getscripts"),
 getconnections = getconnections or table.insert(missing,"getconnections")
}

local debugfunc = {
 getconstants = getconstants or debug.getconstants or table.insert(missing,"getconstants"),
 getconstant = getconstant or debug.getconstant or table.insert(missing,"getconstant"),
 setconstant = setconstant or debug.setconstant or table.insert(missing,"setconstant"),
 getupvalue = getupvalue or debug.getupvalue or table.insert(missing,"getupvalue"),
 setupvalue = setupvalue or debug.setupvalue or table.insert(missing,"setupvalue"),
 getupvalues = getupvalues or debug.getupvalues or table.insert(missing,"getupvalue"),
 getproto = getproto or debug.getproto or table.insert(missing,"getproto"),
 getprotos = getprotos or debug.getprotos or table.insert(missing,"getprotos"),
 setproto = setproto or debug.setproto or table.insert(missing,"setproto"),
 getstack = getstack or debug.getstack or table.insert(missing,"getstack"),
 setstack = setstack or debug.setstack or table.insert(missing,"setstack"),
 setmetatable = setmetatable or debug.setmetatable or table.insert(missing,"setmetatable"),
 getinfo = getinfo or debug.getinfo or table.insert(missing,"getinfo")
}

local misc = {
 gethiddenproperty = gethiddenproperty or table.insert(missing, "gethiddenproperty"),
 sethiddenproperty = sethiddenproperty or table.insert(missing, "sethiddenproperty"),
 makefolder = makefolder or table.insert(missing, "makefolder"),
 listfiles = listfiles or table.insert(missing,"listfiles"),
 writefile = writefile or table.insert(missing,"writefile"),
 readfile = readfile or table.insert(missing,"readfile"),
 appendfile = appendfile or table.insert(missing,"appendfile"),
 loadfile = loadfile or table.insert(missing,"loadfile"),
 delfile = delfile or table.insert(missing,"delfile"),
 Drawing = Drawing or table.insert(missing,"Drawing"),
 decompile = decompile or table.insert(missing,"decompile")
}

for i,v in pairs(functions) do
    if v then
        points = points + 1
    end
end
for i,v in pairs(debugfunc) do
    if v then
        points = points + 1
    end
end
for i,v in pairs(misc) do
    if v then
        points = points + 1
    end
end
wait()
print("Function benchmark by HTDBarsi")
print("--------------------")
print("\ngot: "..points.." points \nmax: 52 points \nmissing functions:")
for i,v in pairs(missing) do
    print(v)
end
