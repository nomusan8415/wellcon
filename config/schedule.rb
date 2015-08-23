# set :output, 'log/crontab.log'
set :environment, :development

every '*/1 * * * *' do
  runner "StateUpdate.run"
end
