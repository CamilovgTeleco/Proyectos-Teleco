# Using threads allow us to speed up our programms

from multiprocessing import process
import time  # We're gonna use time library cuz we want to measure how long it takes the script to run
import concurrent.futures  # Module for 4th part
# First Part of the video
# We're executing a program without threads or multiprocess
# start = time.perf_counter()  # start counting time


# def do_something():
#     print('Sleeping 1 second')
#     time.sleep(1) #code stops executing for 1 second
#     print('Done')


# do_something()
# do_something()
#finish = time.perf_counter()

#print(f"I took {round(finish-start,2)} s")

# Second Part of the video
#start = time.perf_counter()


def do_something(seconds):  # Edited the function for part 3
    print(f'Sleeping {seconds} second')
    time.sleep(seconds)  # code stops executing for 1 second
    return 'Done'  # changed for 4th part


#p1 = multiprocessing.Process(target=do_something)
#p2 = multiprocessing.Process(target=do_something)

# p1.start()
# p2.start()

# If I run the programm just like this it will print that it was executed in 0 seconds
# This due to that we put those threads to sleep, but the main programm continued its execution.

# p1.join()  # The process will finish before the moving on in the script
# p2.join()
#finish = time.perf_counter()
#print(f"I took {round(finish-start,2)} s")

# 3 THIRD PART
# start = time.perf_counter()
# processes = []
# # I'm creating an array of processes. The _ in for loop means that I'm not gonna use the iterator within the loop.
# for _ in range(10):
#     p = multiprocessing.Process(target=do_something,args=[1.5])#Im giving the arguments that the function requires
#     p.start()
#     processes.append(p)

# for process in processes:
#     process.join()

# finish = time.perf_counter()
# print(f"I took {round(finish-start,2)} s")


# USING CONCURRENT

with concurrent.futures.ProcessPoolExecutor() as executor:
    # schedules a function to be executed an returns a future objects which allow us to chechk the state of the function
    f1 = executor.submit(do_something, 1)
    print(f1.result())  # this line will print the value that the function returns
