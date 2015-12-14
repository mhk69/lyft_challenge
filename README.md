# lyft_challenge
Solution to lyft's challenge for new / recent grads.

## How to Run
- `ruby lyft_challenge.rb Lat1,Lng1 Lat2,Lng2 Lat3,Lng3 Lat4,Lng4`
- Example input: `ruby lyft_challenge.rb 63.1,62.1 61.2,63.1 100.1,100.2, 100.9,101.3`
- Each location must be seperated by comma's due to splitting on strings from input of the command line

## Sample Output
```
Distance: 0.041984916137754145
Shorter distance for driver 100.1,100.2, (C) -> 100.9,101.3 (D) to: 63.1,62.1 (A),61.2,63.1 (B)
```

## Known Issues
- No bounds checking on the degrees, so numbers can be faked (as seen above)
- Non-helpful error message
- Code can be cleaned up a bit
