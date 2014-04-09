require 'spec_helper'

describe 'learn-chef::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge described_recipe }

  it 'should include the nginx::source recipe' do
    expect(chef_run).to include_recipe('nginx::source')
  end

  it 'should create an nginx config template with attributes' do
    expect(chef_run).to create_template('/etc/nginx/sites-enabled/learn_chef').with(
      source: 'nginx.conf.erb',
      owner: 'root',
      group: 'root',
      mode:  0755,
      variables: {
        app_home: '/home/vagrant/',
        port: 4567,
        app_name: 'vagrant',
        default_server: true,
        force_ssl: false,
        server_name: 'learn-chef-berkshelf'
      }
    )
  end
end
