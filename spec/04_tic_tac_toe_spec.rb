require 'spec_helper'

describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map{ |x| x.count("X")}
      expect(xs_per_row).to be == [1, 2, 1]
    end

    it "returns how many times O was played in each row" do
      os_per_row = data.map{ |o| o.count("O")}
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    it "returns an array of [row, column] array coordinates for each usage of X" do
      result = []
      data.each_with_index do |row, column|
        row.each_with_index do |value, value_index|
          if value == "X"
            result << [column, value_index]
          end
        end
      end
      x_coordinates = result
      expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    it "returns an array of [row, column] array coordinates for each usage of O" do
      result = []
      data.each_with_index do |row, column|
        row.each_with_index do |value, value_index|
          if value == "O"
            result << [column, value_index]
          end
        end
      end
      o_coordinates = result
      expect(o_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    xit "determines whether X or O won" do
      winning_routes = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
      


      expect(winner).to be == 'O'
    end
  end
end
