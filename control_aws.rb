control 'myaws-01' do 
  title 'AWS Verification'
  desc 'Testing AWS'
  describe aws_ec2_instance('<YOUR INSTANCE ID>') do
    it { should exist }
    it { should be_running}
  end

  describe aws_s3_bucket_object(bucket_name: 'inspec-jumpstart-2019', key: 'web01.html') do
    it { should exist }
    it { should be_public }
  end
end 
