include_recipe "deploy"

node[:deploy].each do |_, deploy|
  raise "no postgres adapter config found" unless deploy[:database] && deploy[:database][:adapter] == "postgresql"
  postgresql_connection_info = {
    :host     => "127.0.0.1",
    :port     => node[:postgresql][:config][:port],
    :username => "postgres",
    :password => node[:postgresql][:password][:postgres]
  }

  postgresql_database deploy[:database][:database] do
    connection postgresql_connection_info
    action :create
  end
end
