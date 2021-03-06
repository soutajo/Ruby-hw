def num_to_text(num)
    one = ['один', 'два', 'три', 'четыре', 'пять', 'шесть', 'семь', 'восемь', 'девять']
    teens = ['десять', 'одинадцать', 'двенадцать', 'тринадцать', 'четырнадцать', 'пятнадцать', 'шестнадцать', 'семьнадцать', 'восемьнадцать', 'девяднадцать', 'двадвать']
    ten = ['двадцать', 'тридцать', 'сорок', 'пятьдесят', 'шестьдесят', 'семьдесят', 'восемьдесят', 'девяносто']

    if num > 0 && num <= 9
      return one[num - 1]

    elsif num >= 10 && num <= 20
      return teens[num - 10]

    elsif num > 20 && num <= 99
      str = num.to_s
      arr = []
      arr << ten[str[0].to_i - 2] << one[str[1].to_i - 1]
      return arr.join(' ')
    end
end

puts num_to_text(42)
