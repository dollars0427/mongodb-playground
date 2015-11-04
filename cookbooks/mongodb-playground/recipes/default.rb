bash 'Import public key' do
 not_if 'which mongo'
 user 'root'
 code <<-EOC
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
  EOC
end

bash 'Create list file' do
    not_if 'which mongo'
    user 'root'
    code <<-EOC
        echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
        apt-get update
    EOC
end

bash 'Install mongoDB' do
    not_if 'which mongod'
    user 'root'
    code <<-EOC
        sudo apt-get install -y mongodb-org
    EOC
end

service 'mongod' do
 supports status: true, restart: true, reload: true
 action [:enable, :start]
end
