def stock_picker(arr)
    sell = 0
    buy = 0
    proft = 0
    
    arr.each_with_index do |buy_price, buy_day|
        arr.each_with_index do |sell_price, sell_day|
           if buy_day < sell_day
            if sell_price - buy_price > proft
               proft = sell_price - buy_price
               sell = sell_day
               buy = buy_day 
            end
           end 
        end
    end
    puts [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])