# return the determinant of the matrix passed in
def determinant(matrix)
  return matrix[0][0] if matrix.size == 1
  i = 0
  first_row = matrix[i]
  first_row.each_with_index.inject(0) do |memo, (x, j)|
    factor, minor_det = (-1) ** (i + j), determinant(minor(i, j, matrix))
    memo += factor * x * minor_det
  end
end

def minor(i, j, matrix)
  (matrix[0...i] + matrix[(i + 1)..-1]).map { |row| row[0...j] + row[(j + 1)..-1] }
end