# InSpec test for recipe apache_dokken::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe package('httpd')  do
  it { should be_installed}
end

# describe service('httpd') do
#   it { should be_running }
# end

control 'http-1.0' do
  impact 1.0
  title 'Checking https status'
  desc 'Checking https status'
  describe service('httpd') do
    it { should be_running }
  end
end

describe command('curl localhost') do
  its('stdout') { should match /hello/}
end

describe port(80) do
  it { should be_listening}
end
