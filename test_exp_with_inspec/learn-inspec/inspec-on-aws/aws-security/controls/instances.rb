describe aws_ec2_instance(name: 'webserver') do
  it { should be_running }
end

describe aws_ec2_instance('i-02cecf67a24151ce4') do
  it { should be_running }
end
