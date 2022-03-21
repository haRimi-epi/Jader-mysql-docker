# Jader-mysql-docker

MySQL-Docker for Japanese Adverse Drug Event Report database (UNOFFICIAL)

日本語の説明は[こちら](index_jp.md)

# What's JADER

**JADER (Japanese Adverse Drug Event Report)** is a database of spontaneous reporting of adverse drug reactions in Japan. Anyone can download it from the website of [Pharmaceuticals and Medical Devices Agency (PMDA)](https://www.pmda.go.jp/english/about-pmda/outline/0005.html), which is Japanese regulatory agency, working together with the Ministry of Health, Labour and Welfare in Japan.

JADER dataset is composed of four csv files, regarding 
- DEMO table (patient gender, age, weight, etc.) 
- DRUG table (drug name, causality of drug, etc.)
- REAC table (adverse drug reaction name, outcome, etc.),
- and HIST table (medical history). 

There are NOT including standardized classification codes such as MedDRA code, ICD-10 code, ATC code. Data are described in Japanese and the character set of those csv files is [Shift JIS](https://en.wikipedia.org/wiki/Shift_JIS).


# What's Jader-mysql-docker

This is a docker-compose.yml and some configulation files for setting MySQL with JADER dataset easily.

Jader-mysql-docker is a unofficial third-party tool for JADER. It is NOT developed by PMDA, and bear NO relation with the agency.


# How to build Jader-mysql-docker

## 1. Download JADER csv files
- Access [JADER download page](https://www.pmda.go.jp/safety/info-services/drugs/adr-info/suspected-adr/0005.html) on PMDA web site.
  - only available in Japanese.
  - need to agree with PMDA's terms and conditions.
  - Jader-mysal-docker is NOT developed by PMDA, and bear NO relation with PMDA.
  - for more information, please read [wiki](https://github.com/haRimi-epi/Jader-mysql-docker/wiki/download-JADER#how-to-download-jader-csv-files).
- Download complete datasets of JADER from download page.
  - PMDA updates it monthly, so you need to download it NOW.
  - The character set is Shift JIS code, and please NOT transcode it.
  - Jader-mysql-docker needs csv files listed as below. After downloading from the website, you NEED to rename them before the next step:
    - demoYYYYMM.csv, and rename it to **demo.csv**
    - drugYYYYMM.csv, and rename it to **drug.csv**
    - histYYYYMM.csv, and rename it to **hist.csv**
    - reacYYYYMM.csv, and rename it to **reac.csv**

## 2. Deploy Jader-mysql-docker
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

### Check status
~~~
$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                                  NAMES
cfd6a2ad9081   mysql:latest   "docker-entrypoint.s…"   13 seconds ago   Up 12 seconds   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp, 33060/tcp   mysql_jader
~~~

### :confetti_ball: Congratulations!
Now, you can access and handle JADER via Docker-MySQL.

- MySQL username: root
- MySQL userpass: root

You can see some use cases in [wiki](https://github.com/haRimi-epi/Jader-mysql-docker/wiki).


---
MIT License

Copyright (c) 2022 haRimi-epi@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
