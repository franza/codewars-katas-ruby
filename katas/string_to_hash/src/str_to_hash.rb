def str_to_hash(str)
  Hash[str.scan(/(\w)=(\d)/).map { |m| [m[0].to_sym, Integer(m[1])] }]
end