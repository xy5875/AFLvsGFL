#!/bin/bash
source /home/dell/miniconda3/bin/activate pytorch2


####################################################################0############################################
python start_server.py --logname afl_AVG --port 8081 --client 0 1 2 3 4 5 6 7 8 9 --parallelnum 7 --testfile /home/dell/xy/AFLvsGFL/data/test_avg/0 --flie /home/dell/xy/AFLvsGFL/model/gfl&

sleep 3

python start_client.py --anchor False --port 8081 --mask False  --delay False --dataroot /home/dell/xy/AFLvsGFL/data --testfile /home/dell/xy/AFLvsGFL/data/test_avg/0&

sleep 7200

pkill python
# ####################################################################1############################################
# python start_server.py --logname afl_B --port 8081 --client 2 3 --parallelnum 2 --testfile /home/dell/xy/AFLvsGFL/data/test/1 --flie /home/dell/xy/AFLvsGFL/model/afl/B&

# sleep 3

# python start_client.py --anchor False --port 8081 --mask False  --delay False --dataroot /home/dell/xy/AFLvsGFL/data --testfile /home/dell/xy/AFLvsGFL/data/test/1&

# sleep 7200

# pkill python
# ####################################################################2############################################
# python start_server.py --logname afl_C --port 8081 --client 4 5 --parallelnum 2 --testfile /home/dell/xy/AFLvsGFL/data/test/2 --flie /home/dell/xy/AFLvsGFL/model/afl/C&

# sleep 3

# python start_client.py --anchor False --port 8081 --mask False  --delay False --dataroot /home/dell/xy/AFLvsGFL/data --testfile /home/dell/xy/AFLvsGFL/data/test/2&

# sleep 7200

# pkill python
# ####################################################################3############################################
# python start_server.py --logname afl_D --port 8081 --client 6 7 --parallelnum 2 --testfile /home/dell/xy/AFLvsGFL/data/test/3 --flie /home/dell/xy/AFLvsGFL/model/afl/D&

# sleep 3

# python start_client.py --anchor False --port 8081 --mask False  --delay False --dataroot /home/dell/xy/AFLvsGFL/data --testfile /home/dell/xy/AFLvsGFL/data/test/3&

# sleep 7200

# pkill python
# ####################################################################4############################################
# python start_server.py --logname afl_E --port 8081 --client 8 9 --parallelnum 2 --testfile /home/dell/xy/AFLvsGFL/data/test/4 --flie /home/dell/xy/AFLvsGFL/model/afl/E&

# sleep 3

# python start_client.py --anchor False --port 8081 --mask False  --delay False --dataroot /home/dell/xy/AFLvsGFL/data --testfile /home/dell/xy/AFLvsGFL/data/test/4&

# sleep 7200

# pkill python




