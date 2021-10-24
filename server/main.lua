RDX = nil

TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

RegisterServerEvent("rdx_policejob:checkjob")
AddEventHandler("rdx_policejob:checkjob", function()
      local _src = tonumber(source)
      local _source = source
      local xPlayer = RDX.GetPlayerFromId(_source)
      local job = xPlayer.job.name
      local grade = xPlayer.job.grade
      print(xPlayer.getJob())
        if xPlayer.job.name == 'police' then
            TriggerClientEvent('rdx_policejob:open', _src)
        else
            print('not authorized')
        end
end)

RegisterServerEvent("rdx_policejob:checkjob2")
AddEventHandler("rdx_policejob:checkjob2", function()
      local _src = tonumber(source)
      local _source = source
      local xPlayer = RDX.GetPlayerFromId(_source)
      local job = xPlayer.job.name
      local grade = xPlayer.job.grade
      print(xPlayer.getJob())
        if xPlayer.job.name == 'police' then
            TriggerClientEvent('rdx_policejob:open2', _src)
        else
            print('not authorized')
        end
end)

-- RegisterServerEvent('rdx_policejob:on')
-- AddEventHandler('rdx_policejob:on', function(job)

    -- local _source = source
    -- local xPlayer = RDX.GetPlayerFromId(_source)
    -- local job = xPlayer.job.name
    -- local grade = xPlayer.job.grade
    
    -- if job == 'police' then
        -- xPlayer.setJob('police', tostring(grade))
    -- end

-- end)

--cuff

RegisterServerEvent('rdx_policejob:cuffplayer')
AddEventHandler('rdx_policejob:cuffplayer', function(target)
      local _source = source
      local xPlayer = RDX.GetPlayerFromId(_source)
      local job = xPlayer.job.name
      local grade = xPlayer.job.grade
	  if xPlayer.job.name == 'police' then
        TriggerClientEvent('rdx_policejob:cuff', target)
        print('servercuff')
	  end
end)

RegisterServerEvent('rdx_policejob:uncuffplayer')
AddEventHandler('rdx_policejob:uncuffplayer', function(target)
      local _source = source
      local xPlayer = RDX.GetPlayerFromId(_source)
      local job = xPlayer.job.name
      local grade = xPlayer.job.grade
	  if xPlayer.job.name == 'police' then
        TriggerClientEvent('rdx_policejob:uncuff', target)
        print('serveruncuff')
	  end
end)

--lasso

RegisterServerEvent('rdx_policejob:lassoplayer')
AddEventHandler('rdx_policejob:lassoplayer', function(target)
      local _source = source
      local xPlayer = RDX.GetPlayerFromId(_source)
      local job = xPlayer.job.name
      local grade = xPlayer.job.grade
	  if xPlayer.job.name == 'police' then
		TriggerClientEvent('rdx_policejob:hogtie', target)
        print('serverlasso')
	  end
end)