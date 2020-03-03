script_name ("ARZ Chat Helper")
script_author ("Dack_Show")

require "lib.moonloader"
local sampev = require 'lib.samp.events'
local encoding = require 'encoding'
local color = 0xfc0000
encoding.default = 'CP1251'
u8 = encoding.UTF8

function main()
while not  isSampAvailable() do wait(100) end
sampRegisterChatCommand("spss", spss)
sampRegisterChatCommand("smc", smc)
sampRegisterChatCommand("slic", slic)
sampRegisterChatCommand("td", td)

end


function spss(arg)
	if tonumber(arg) and sampIsPlayerConnected(arg) then
		lua_thread.create(function()
			id = tonumber(arg)
			sampSendChat("/me достал пасспорт")
			wait(1500)
			sampSendChat("/do Пасспорт в руке.")
			wait(1500)
			sampSendChat("/me протянул")
			wait(1500)
			sampSendChat("/showpass " .. id)
			
		end)
	end
  end
function slic(arg) 
  if tonumber(arg) and sampIsPlayerConnected(arg) then
  lua_thread.create(function()
  id = tonumber(arg)
  sampSendChat("/me достал лицензии в папке")
  wait(1500)
  sampSendChat("/do Папка с лицензиями в руке.")
  wait(1500)
  sampSendChat("/me передал папку с лицензиями человеку напротив")
  wait(1500)
  sampSendChat("/showlic " .. id)
  end)
  end
end

function smc(arg)
  if tonumber(arg) and sampIsPlayerConnected(arg) then
  lua_thread.create(function()
  id = tonumber(arg)
  sampSendChat("/me достал мед.карту")
  wait(1500)
  sampSendChat("/do Мед.карта в руке.")
  wait(1500)
  sampSendChat("/me передал мед.карту человеку напротив")
  wait(1500)
  sampSendChat("/showmc " .. id)
  end)
  end
end

function sampev.onSendChat(text)
if text == "Прв" then
return {"Привет."}
end
if text == "Здр" then 
return {"Здравствуйте."}
end
if text == "Кдл" then 
return {"Как дела?"}
end
if text == "Здрж" then 
return {"Здравия желаю."}
end
end

function sampev.onSendCommand(command)
if command == "/fmb" then
sampSendChat("/fmembers ")
end
if command == "/fm" then
sampSendChat("/fammenu")
end 
if command == "/mb" then
sampSendChat("/members")
end
end
function td(arg)
if tonumber(arg) and sampIsPlayerConnected(arg) then
  lua_thread.create(function()
			id = tonumber(arg)
sampSendChat("/trade " .. id)
end) end
end



