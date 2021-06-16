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

describe aws_subnet('subnet-0593b037223ef98e9') do
  it { should exist }
  its('vpc_id') { should cmp 'vpc-04250b13bfe66c3b8' }
  its('cidr_block') { should cmp '10.0.100.0/24' }
  its('availability_zone') {should eq 'us-east-1a'}
end

describe aws_subnet('subnet-0849f680b3ed4345c') do
  it { should exist }
  its('vpc_id') { should cmp 'vpc-04250b13bfe66c3b8' }
  its('cidr_block') { should cmp '10.0.1.0/24' }
  its('availability_zone') {should eq 'us-east-1a'}
end

describe aws_security_group('sg-08bff3921ba81afbd') do
  it { should exist }
end

describe aws_security_group('sg-0da09c82bd50cc000') do
  it { should exist }
end

describe aws_security_group('sg-091f6d3378cebe183') do
  it { should exist }
end
