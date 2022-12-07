def grammar_checker(text)
    first = text[0]
    last = text[-1]
    punct = ['.','?','!']
    if first == first.upcase && punct.include?(last)
        true
    else 
        false
    end
end 