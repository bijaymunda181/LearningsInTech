✅ Step-by-Step Installation of Prometheus on Amazon Linux
sudo yum update -y
2. Create a Prometheus user (optional but recommended)
sudo useradd --no-create-home --shell /bin/false prometheus
3. Create directories for Prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /etc/prometheus /var/lib/prometheus
4. Download Prometheus
curl -LO https://github.com/prometheus/prometheus/releases/download/v2.52.0/prometheus-2.52.0.linux-amd64.tar.gz
5. Extract and install
tar -xvf prometheus-*.tar.gz
cd prometheus-*/
sudo cp prometheus /usr/local/bin/
sudo cp promtool /usr/local/bin/
sudo cp -r consoles /etc/prometheus
sudo cp -r console_libraries /etc/prometheus
sudo cp prometheus.yml /etc/prometheus/
6. Set permissions
sudo chown -R prometheus:prometheus /usr/local/bin/prometheus /usr/local/bin/promtool
sudo chown -R prometheus:prometheus /etc/prometheus
7. Create a systemd service file
Create a file at /etc/systemd/system/prometheus.service:
sudo vi /etc/systemd/system/prometheus.service
Paste the following:
Unit]
Description=Prometheus Monitoring
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
--config.file=/etc/prometheus/prometheus.yml \
--storage.tsdb.path=/var/lib/prometheus/ \
--web.console.templates=/etc/prometheus/consoles \
--web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target
8. Reload systemd and start Prometheus
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable --now prometheus
9. Check Prometheus status
systemctl status prometheus
10. Access Prometheus UI
Open your browser and visit:
http://<your-ec2-ip>:9090
Make sure port 9090 is open in your EC2 Security Group if you are running on EC2.
