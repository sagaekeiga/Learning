worker_processes 2
working_directory "/home/anime/learning/current" #appと同じ階層を指定

timeout 3600


listen "/var/run/unicorn/learning.sock"
pid "/var/run/unicorn/learning.pid"


stderr_path "/home/anime/learning/current/log/unicorn.log"
stdout_path "/home/anime/learning/current/log/unicorn.log"


preload_app true