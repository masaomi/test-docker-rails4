# test-docker-rails4

20180621 masa

Command log
```
$ git clone https://github.com/masaomi/test-docker-rails4.git
$ cd test-docker-rails4
$ docker build -t masaomi/test-docker-rails4 .
$ docker run --rm -p 4000:4000 -v "$PWD":/app masaomi/test-docker-rails4
[2018-06-21 13:38:39] INFO  WEBrick 1.3.1
[2018-06-21 13:38:39] INFO  ruby 2.4.4 (2018-03-28) [x86_64-linux]
[2018-06-21 13:38:39] INFO  WEBrick::HTTPServer#start: pid=1 port=4000
```

or
```
$ git clone https://github.com/masaomi/test-docker-rails4.git
$ cd test-docker-rails4
$ docker pull masaomi/test-docker-rails4
$ docker run --rm -p 4000:4000 -v "$PWD":/app masaomi/test-docker-rails4
```

Access
* http://localhost:4000
