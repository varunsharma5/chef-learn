describe aws_ec2_instance (name: 'webserver') do
  it {should be_runnig }
end

describe aws_ec2_instance('i-05c11b102de4a9762') do
  it { should be_running }
end
