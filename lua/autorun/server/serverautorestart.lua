
local ServerAutoRestart = {}

local ServerAutoRestart_Enable = true
local ServerAutoRestart_Time = "00:00:00"

local ServerAutoRestart_AdvertBefore = true
local ServerAutoRestart_AdvertTime = "23:00:00"
local ServerAutoRestart_AdvertMsg = "[AutoRestart] The server will restart in 1 Hour."

local ServerAutoRestart_AdvertBefore2 = true
local ServerAutoRestart_AdvertTime2 = "23:30:00"
local ServerAutoRestart_AdvertMsg2 = "[AutoRestart] The server will restart in 30 Minutes."

local ServerAutoRestart_AdvertBefore3 = true
local ServerAutoRestart_AdvertTime3 = "23:45:00"
local ServerAutoRestart_AdvertMsg3 = "[AutoRestart] The server will restart in 15 Minutes. Save your Stuff."

local ServerAutoRestart_AdvertBefore4 = true
local ServerAutoRestart_AdvertTime4 = "23:50:00"
local ServerAutoRestart_AdvertMsg4 = "[AutoRestart] The server will restart in 10 Minutes. SAVE YOUR STUFF!"

local ServerAutoRestart_AdvertBefore5 = true
local ServerAutoRestart_AdvertTime5 = "23:55:00"
local ServerAutoRestart_AdvertMsg5 = "[AutoRestart] The server will restart in 5 Minutes. SAVE YOUR STUFF!!!"

local ServerAutoRestart_AdvertBefore6 = true
local ServerAutoRestart_AdvertTime6 = "23:59:00"
local ServerAutoRestart_AdvertMsg6 = "[AutoRestart] The server will restart in 1 Minute. LAST CALL SAVE YOUR STUFF!!!"

local ServerAutoRestart_LangRes = "[AutoRestart] RESTARTING THE SERVER!"

function ServerAutoRestartFunc()
	if ServerAutoRestart_Enable then
	if ServerAutoRestart_AdvertBefore then
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_AdvertTime then
			print( ServerAutoRestart_AdvertMsg )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_AdvertMsg )
		end
	end
	if ServerAutoRestart_AdvertBefore2 then
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_AdvertTime2 then
			print( ServerAutoRestart_AdvertMsg2 )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_AdvertMsg2 )
		end
	end
	if ServerAutoRestart_AdvertBefore3 then
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_AdvertTime3 then
			print( ServerAutoRestart_AdvertMsg3 )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_AdvertMsg3 )
		end
	end
	if ServerAutoRestart_AdvertBefore4 then
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_AdvertTime4 then
			print( ServerAutoRestart_AdvertMsg4 )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_AdvertMsg4 )
		end
	end
	if ServerAutoRestart_AdvertBefore5 then
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_AdvertTime5 then
			print( ServerAutoRestart_AdvertMsg5 )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_AdvertMsg5 )
		end
	end
	if ServerAutoRestart_AdvertBefore6 then
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_AdvertTime6 then
			print( ServerAutoRestart_AdvertMsg6 )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_AdvertMsg6 )
		end
	end
		if os.date( "%H:%M:%S" ) == ServerAutoRestart_Time then
			print( ServerAutoRestart_LangRes )
			PrintMessage( HUD_PRINTTALK, ServerAutoRestart_LangRes )
			timer.Simple( 1, function()
				RunConsoleCommand("_restart")
			end)
		end
	end
end

timer.Create( "ServerAutoRestartTimer", 1, 0, ServerAutoRestartFunc )

concommand.Add( "restartserver", function( ply, cmd, args )
	if ply:IsSuperAdmin() then
		print( ServerAutoRestart_LangRes )
		PrintMessage( HUD_PRINTTALK, ServerAutoRestart_LangRes )
		timer.Simple( 1, function()
			RunConsoleCommand("_restart")
		end)
	end
end)

if SERVER then 
RunConsoleCommand("sv_hibernate_think", 1)
end