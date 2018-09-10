def split_arr(arr)
    j = 0
    arr2 = []
    total = 0
    for i in 0...arr.length
        total = total + arr[i] * (i + 1)
        arr[i].times do 
          arr2 << (i + 1)
        end 
    end
    p arr2
     if total % 2 != 0 
        return puts false
     else 
         half = total / 2
          while j < arr2.length do
            sum = 0 
            for i in j...arr2.length
              if sum + arr2[i] <= half
                sum = sum + arr2[i]
                 if sum == half
                  return puts  true 
                 end  
              end 
            end 
            j += 1
          end 
          
      end  
     puts sum == half
end
  split_arr([1,2,7,0,2,1]) # true
  split_arr([1, 0, 0, 0, 1, 1]) #true
  split_arr([1, 0, 1, 2, 0, 0]) #false