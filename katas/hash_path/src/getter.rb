class Hash
  def get_value(default, *args)
    key = args.shift
    return default unless self.has_key? key
    val = self[key]
    return val if args.empty?
    return default unless val.class == Hash
    val.get_value default, *args
  end
end