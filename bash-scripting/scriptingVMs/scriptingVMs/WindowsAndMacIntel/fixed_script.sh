#!/bin/bash

# Fixed version of the nested loop script
for ((c=1; c<=5; c++)) 
do
    echo "Outer loop iteration: $c"
    
    for ((i=1; ; i++))  # Fixed: Added variable 'i' and proper syntax
    do
        echo "Inner loop iteration: $i"
        echo "Random numbers: $RANDOM $RANDOM"
        
        # Add a condition to break the infinite loop after 3 iterations
        if [ $i -ge 3 ]; then
            echo "Breaking inner loop after 3 iterations"
            break
        fi
        
        # Optional: Add a small delay to see the output
        sleep 1
    done
    
    echo "Completed outer loop iteration $c"
    echo "----------------------------------------"
done

echo "Script completed!" 