#Step 1: Install httpd package
sudo yum install httpd -y     # On RHEL/CentOS 7
sudo dnf install httpd -y     # On RHEL/CentOS 8/9

#🔹 Step 2: Start the httpd service
sudo systemctl start httpd

#🔹 Step 3: Enable httpd to start on boot
sudo systemctl enable httpd

#🔹 Step 4: Check service status
sudo systemctl status httpd


#You should see active (running) in green.

#🔹 Step 5: Configure firewall (if firewall is running)
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
cp HTML-Web-Page-1/* /var/www/html/index.html/

#🔹 Step 6: Test Apache

#Open a browser and go to:

#http://<your-server-ip>


#You’ll see the Apache HTTP Server Test Page 🎉
