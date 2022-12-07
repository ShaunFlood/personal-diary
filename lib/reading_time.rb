def reading_time(words)
    number = words.split.length
    dn = number.to_f/200
    if 
        dn == 1.0
        "1 minute"
    elsif 
        dn.to_s.include?(".0")
        "#{dn.to_i} minutes"
    else
        "#{dn} minutes"
    end
end