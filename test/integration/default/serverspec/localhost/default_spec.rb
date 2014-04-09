require 'spec_helper'

describe 'learn-chef::default' do
  describe file('/etc/nginx/sites-enabled/learn_chef') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end

  describe service('nginx') do
    it { should be_running }
  end
end
