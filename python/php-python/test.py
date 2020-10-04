# -*- coding: utf-8 -*-
import paramiko

with paramiko.SSHClient() as ssh:
    
    # 初回ログイン時のスキップ
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    # ssh接続
    ssh.connect(hostname='XXXX', port=22, username='gotooza', password='XXX')

    # コマンド実行
    stdin, stdout, stderr = ssh.exec_command('ls -l')

    # 実行結果を表示
    for o in stdout:
        print(o)
    for e in stderr:
        print(e)
