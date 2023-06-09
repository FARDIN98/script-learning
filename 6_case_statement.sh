#! /bin/bash

# case expression in
#     pattern 1 )
#         statement ;;
#     pattern 2 )
#         statement ;;
#     ...
# esac

vehicle=$1

case $vehicle in
    "car" ) 
        echo "Rent of $vehicle is 100 dollar" ;;
    "van" ) 
        echo "Rent of $vehicle is 80 dollar" ;;
    "bicycle" ) 
        echo "Rent of $vehicle is 5 dollar" ;;
    "truck"  )
        echo "Rent of $vehicle is 150 dollar" ;;
    * ) 
        echo "Unknown vehicle" ;;
esac