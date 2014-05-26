module Converter
  def self.to_ascii(hex)
    hex.split('').each_slice(2).to_a.map { |pair| pair.join.to_i(16).chr }.join
  end

  def self.to_hex(ascii)
    ascii.split('').map { |s| s.ord.to_s 16 }.join
  end
end