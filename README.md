supervisor-formula
==========================
Formula to set up and configure a supervisor.


Sample Pillars
==============

Configure Supervisor

    supervisor:
      restart_on_change: True
      conf:
        unix_http_server:
          file: /var/run/supervisor.sock
          chmod: "0700"
          rpcinterface:supervisor: supervisor.rpcinterface_factory: supervisor.rpcinterface:make_main_rpcinterface
        supervisord:
          http_port: /var/tmp/supervisor.sock
          logfile: /var/log/supervisor/supervisord.log
          logfile_maxbytes: 50MB
          logfile_backups: 10
          loglevel: info
          pidfile: /var/run/supervisord.pid
          nodaemon: false
          minfds: 65535
          minprocs: 200
        supervisorctl:
          serverurl: unix:///var/run/supervisor.sock


Configure Zookeeper as Supervisor Managed Service

    supervisor:
      programs:
        zookeeper:
          command: /usr/lib/zookeeper/bin/zkServer.sh start-foreground
          user: zookeeper
          autostart: true
          autorestart: true
          startsecs: 10
          startretries: 999
          log_stdout: true
          log_stderr: true
          logfile: /var/log/zookeeper/zookeeper.log
          logfile_maxbytes: 100MB
          logfile_backups: 10
          stdout_logfile: /var/log/supervisor/supervisor-zookeeper.log

Available states
================

```supervisor```

```supervisor.config```

```supervisor.install```

```supervisor.service```

Official Documentation
======================

* http://supervisord.org/

