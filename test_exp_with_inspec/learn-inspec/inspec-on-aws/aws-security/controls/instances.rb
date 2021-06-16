describe aws_ec2_instance(name: 'webserver') do
  it { should be_running }
  its('image_id') { should eq 'ami-0ee02acd56a52998e' }
  its('instance_type') { should eq 't2.micro' }
  its('public_ip_address') { should eq '3.215.178.141' }
end

describe aws_ec2_instance('i-03188940649402c10') do
  it { should be_running }
  its('image_id') { should eq 'ami-0ee02acd56a52998e' }
  its('instance_type') { should eq 't2.micro' }
  its('public_ip_address') { should_not be ''}
end

describe aws_vpc('vpc-04250b13bfe66c3b8') do
  its('state') { should eq 'available' }
  its('cidr_block') { should eq '10.0.0.0/16' }
end
