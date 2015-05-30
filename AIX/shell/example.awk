#!/usr/bin/awk -f



BEGIN {sum = 0 }

{ sum = sum + $5}

END {print sum } 
