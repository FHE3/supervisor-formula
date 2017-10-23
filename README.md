supervisor-formula
==========================
Formula to set up and configure a supervisor.


Sample Pillars
==============

Configure Zookeeper Service


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

```zookeeper```

```zookeeper.config```

```zookeeper.install```

```zookeeper.service```

Official Documentation
======================

* http://supervisord.org/
