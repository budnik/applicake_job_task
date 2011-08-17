class Applicake
  def decode(code)
    code.split(',').inject([0]) do |answer, char|
      if char.to_i > 0
        answer[0] += char.to_i # count position
      else
        answer[answer[0]] = char # insert char in position
        answer[0] = 0 # reset position counter
      end
      answer
    end[1..-1].join
  end
end