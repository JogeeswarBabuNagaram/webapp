# webapp
For task purpose maintaining the public access

After Deployment the Webpage comes below
![image](https://github.com/user-attachments/assets/2f87fa8f-0724-4110-aa7e-c6c24fcdde36)

Enable Detailed Monitoring (Optional but Recommended)
By default, EC2 sends metrics to CloudWatch every 5 minutes. You can enable detailed monitoring for 1-minute granularity (useful for responsive alerts).
EC2 → Instances → Select instance → Actions → Monitor and troubleshoot → Enable detailed monitoring.
Given Below Image reference to get details:
![image](https://github.com/user-attachments/assets/bbec840c-2a97-4e27-8e75-69364dd564c5)
Create CloudWatch Alarm via Console
Go to CloudWatch → Alarms → Create alarm
Select metric:
Browse → EC2 → Per-Instance Metrics → Select your instance → CPUUtilization
Conditions:
Threshold type: Static
Whenever CPUUtilization is Greater than 80 for 2 out of 3 datapoints
Step-by-Step: Enable Email Notifications via SNS
Step 1: Create an SNS Topic
AWS Console:
Go to AWS Console → SNS → Topics → Create topic
Choose:
Type: Standard
Name: cpu-alert-topic
Click Create topic
Step 2: Subscribe Your Email to the Topic
After creating the topic, click Create subscription
Choose:
Protocol: Email
Endpoint: jogeeshwarbabu89@gmail.com (replace with your email)
Click Create subscription
You will receive a confirmation email — open it and click Confirm subscription.
Step 3: Attach the Topic to a CloudWatch Alarm
You can now create or update a CloudWatch alarm to use this SNS topic.
Example in AWS Console:
Go to CloudWatch → Alarms
Create or edit an alarm (e.g., for CPU > 80%)
Under Notification, select the SNS topic you just created (cpu-alert-topic)
Save the alarm
![image](https://github.com/user-attachments/assets/113194ed-ac14-4dbf-a8e4-8ee3dcdb614e)
![image](https://github.com/user-attachments/assets/0d8b2563-c0d8-4fc8-9646-a3b0e762da83)





*******************************THE END******************************

