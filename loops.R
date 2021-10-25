x_for<- 0           #Preliminary specification of data object

for(i in 1:10) {     # Head of for-loop         
  
  x_for <- x_for + 1 # Body of for-loop
  print(x_for)
}

x_while <- 0 
 while(x_while < 15) {         # Head of while-loop
   
    x_while <- x_while + 1     # Body of while-loop
print(x_while)
 } 


x_repeat <- 0                 # Preliminary specification of data object
#repeat-loop
  
  repeat{                       # Head of repeat-loop
  
    x_repeat <- x_repeat + 1    # Body of repeat-loop
    print(x_repeat)
    
    if(x_repeat >= 10) {        # Break condition of repeat-loop
    
      break
    }
  }