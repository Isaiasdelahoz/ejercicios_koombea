class PokerHand
    
    def compare(hand)
        value = {
        T: 10,
        J: 11,
        Q: 12,
        K: 13,
        A: 14
    }
        arr = hand.split(' ').map { |e| e.split('')[0] }
        arr2 = []
        for i in 0...arr.length
            arr2 << value[:"#{arr[i]}"].to_i
        end 
    end 
end
game1 = PokerHand.new
p game1.compare("KD JD AD TD KD")
