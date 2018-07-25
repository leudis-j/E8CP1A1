#Mostrar la existencia por productos.
def existencia_x_producto(stock)
total = {}
stock.each { |key, value| total[key] = value.inject(0) {|acum, n| acum + n.to_i}}
total.each { |k,v| puts "#{k}: #{v}" }
end

#Mostrar la existencia total por tienda.

def existencia_x_tienda(stock)
  
end




stock = {}
file = File.readlines('stock.txt').map { |e| e.chomp.split(', ')}
file.each { |ele| stock[ele[0].to_sym] = ele[1..3] }
stock.each { |k, v| stock[k] = v.map { |e| e.gsub(/NR/, '0')  }}


puts existencia_x_producto(stock)
