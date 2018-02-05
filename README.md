***Requirments***
- Docker 
- Docker-compose

***How use this***
For start use 
```bash
docker-compose up -d
```
It created stack for puppet server. After that you can try start start puppet agent:
```bash
docker run --net puppet-test_default puppet/puppet-agent-ubuntu agent --test
``` 
***Troubleshooting***
If you got
> docker: Error response from daemon: network pupppet_defaul not found.
Please check what network use your puppet stack
```bash
docker network list
```