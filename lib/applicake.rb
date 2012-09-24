class Applicake
  def decode(code)
    code.split(?,).reverse.slice_before{
      |char| /[A-z ]/=~char
    }.map{ 
      |a| [a.shift, a.map(&:to_i).reduce :+].reverse 
    }.sort.map(&:last).join
  end
end