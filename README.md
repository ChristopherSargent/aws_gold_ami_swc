![alt text](swclogo.jpg)
* This repository contains ansible role to deploy and EC2 from AMI, perform dnf upgrade and then create a new AMI-Latest and finally delete the deployed EC2 instance for an optimal GOLD AMI. For any additional details or inquiries, please contact us at csargent-ctr@ecstech.com.

* Ansible modules
# [amazon.aws.ec2_ami](https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_ami_module.html)
# [amazon.aws.ec2_ami_info](https://docs.ansible.com/ansible/2.10/collections/amazon/aws/ec2_ami_info_module.html#ansible-collections-amazon-aws-ec2-ami-info-module)
# [amazon.aws.ec2_instance module](https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_instance_module.html)
# [amazon.aws.ec2_security_group module](https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_security_group_module.html)

# This project is run from PS-AWX
* Note that AMIs have a script placed in /root/scripts/user_data/user_data.sh which performs the update
* You can tail -f /root/scripts/user_data/user_data.log to verify on the EC2 deployed
1. https://awxfqdn.com

![Screenshot](resources/screenshot1.JPG)

2. Resources > Templates > ps_rhel8_gold_ami_128GB

![Screenshot](resources/screenshot2.JPG)

3. Views > Jobs > Your job id 

![Screenshot](resources/screenshot3.JPG)

4. https://console.amazonaws-us-gov.com/ > EC2 > AMI > Owned by me > PS-Rhel8-Gold-AMI-128GB-Latest

![Screenshot](resources/screenshot4.JPG) 
