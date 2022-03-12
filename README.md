# jader_docker

MySQL-Docker for Japanese Adverse Drug Event Report database (UNOFFICIAL)

# how to use it
## 1. Download JADER csv files
- Access [JADER download page](https://www.pmda.go.jp/safety/info-services/drugs/adr-info/suspected-adr/0005.html) on PMDA web site
  - only available in Japanese
  - need to agree with PMDA's terms and conditions
  - Jader-mysal-docker is NOT developed by PMDA, and bear NO relation with PMDA
- Download complete datasets of JADER from download page
  - PMDA updates it monthly, so you need to download it NOW.
  - The character set is Shift JIS code, and please NOT transcode it.
  - jader_docker needs csv files listed as below, and you NEED to rename them before the next step:
    - demoYYYYMM.csv, and rename it to **demo.csv**
    - drugYYYYMM.csv, and rename it to **drug.csv**
    - histYYYYMM.csv, and rename it to **hist.csv**
    - reacYYYYMM.csv, and rename it to **reac.csv**

## 2. Deploy jader_docker
### Clone Jader-mysql-docker
~~~
$ git clone https://github.com/haRimi-epi/Jader-mysql-docker.git
$ cd ./Jader-mysql-docker/
~~~

### Replace JADER csv files

- the repository has dummy files of JADER, so please replace them with downloaded and renamed by step 1.

~~~
$ ls ./init/jader/
demo.csv  drug.csv  hist.csv  reac.csv
~~~

### Build Jader-mysql-docker
~~~
$ docker-compose up -d
~~~

### check status

~~~
$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                                  NAMES
cfd6a2ad9081   mysql:latest   "docker-entrypoint.s…"   13 seconds ago   Up 12 seconds   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp, 33060/tcp   mysql_jader
~~~

### :confetti_ball: congratulations!

Now, you can access and handle JADER via Docker-MySQL.
