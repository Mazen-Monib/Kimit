1- make an ansible yaml file to install each of (Docker and cAdvisor)

#You will find the file in the same repo = ansible.yml

2-Modify the prometheus.yml configuration file to scrape metrics from cAdvisor. Add a new job under scrape_configs:

#prometheus.yml File
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'node_exporter'
    static_configs:
      - targets: ['localhost:9100']

  - job_name: 'cadvisor'
    static_configs:
      - targets: ['localhost:8080']
  - job_name: 'docker'
    static_configs:
      - targets: ['localhost:9323']  

#you will find the prometheus.yml File in the repo
