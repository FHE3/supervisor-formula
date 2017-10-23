supervisor-formula
==========================

.. image:: https://img.shields.io/badge/license-Apache--2.0-blue.svg
    :alt: Apache-2.0-licensed
    :target: https://github.com/grimsbane/supervisor-formula/blob/master/LICENSE




Sample Pillars
==============

Configure Zookeeper Service

.. code-block:: yaml

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

Official Documentation
======================

* http://supervisord.org/
