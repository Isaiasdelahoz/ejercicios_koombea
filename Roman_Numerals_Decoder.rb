def decoder(roman)
    arr = roman.split('')
    hash = {
        I: 1, 
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000
    }
    sum = 0
    p arr
    if arr[0] == "("
      arr.pop
      for i in 0...arr.length
        if hash[:"#{arr[i]}"].to_i >= hash[:"#{arr[i + 1]}"].to_i
         sum = sum + hash[:"#{arr[i]}"]
        else
          sum = sum - hash[:"#{arr[i]}"].to_i
        end    
     end
     sum = sum * 1000
    else
      for i in 0...arr.length
        if hash[:"#{arr[i]}"].to_i >= hash[:"#{arr[i + 1]}"].to_i
         sum = sum + hash[:"#{arr[i]}"]
        else
          sum = sum - hash[:"#{arr[i]}"].to_i
        end    
     end
    end 
    p sum
end 

decoder("(XXXVI)")