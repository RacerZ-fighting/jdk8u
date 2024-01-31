#!/bin/bash

# Function to start the commands in the background
start_commands() {
            # Start the first command and store its process ID
                taskset -c 2 java -Xbootclasspath/a:/home/racerz/openjdk8/tools.jar -jar agent-tool1.jar &
                PID1=$!
            # Start the second command in the background
                nohup watch -n 0.5 "sh cpu.sh >> logs/cpu.log" &
                PID2=$!
        }
# Function to stop the commands
stop_commands() {
            # Stop the second and third commands
                kill $PID2 $PID3

                    # Wait for the first command to finish
                        wait $PID1
                }


		sleep 4m	
                # Start the commands
                start_commands
                
                # Wait for the first command to finish
                wait $PID1
		echo "[*] Rasp installed finished!"	
		sleep 1m
                # Stop the remaining commands
                stop_commands
