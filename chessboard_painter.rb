print 'Please enter the number of columns or rows: '
n = gets.chomp

while (n =~ /^\d+$/) == nil || n.to_i == 0
  if (n =~ /^\d+$/) == nil
    puts "That's not a number!"
  else
    puts "0 rows or 0 columns? Try again..."
  end
  print 'Please enter the number of columns or rows: '
  n = gets.chomp
end

n = n.to_i
printed_cells = {}
color = 'R'
col = 1
row = 1
add = true

(n*n).times do |i|
  printed_cells["#{row}#{col}"] = color

  if add 
    if (col+1) <= n && !printed_cells.has_key?("#{row}#{col+1}")
      col += 1
    elsif (row+1) <= n && !printed_cells.has_key?("#{row+1}#{col}")
      row += 1
    else
      add = false
      if (col-1) >= 1 && !printed_cells.has_key?("#{row}#{col-1}")
        col -= 1
      elsif (row-1) >= 1 && !printed_cells.has_key?("#{row-1}#{col}")
        row -= 1
      end
    end
  else
    if (col-1) >= 1 && !printed_cells.has_key?("#{row}#{col-1}")
      col -= 1
    elsif (row-1) >= 1 && !printed_cells.has_key?("#{row-1}#{col}")
      row -= 1
    else
      add = true
      if (col+1) <= n && !printed_cells.has_key?("#{row}#{col+1}")
        col += 1
      elsif (row+1) <= n && !printed_cells.has_key?("#{row+1}#{col}")
        row += 1
      end
    end
  end

  if color == 'R'
    color = 'G'
  elsif color == 'G'
    color = 'B'
  else
    color = 'R'
  end
end

n.times do |i|
  colors = ''
  n.times do |j|
    colors += printed_cells["#{i+1}#{j+1}"]
  end
  puts colors
end