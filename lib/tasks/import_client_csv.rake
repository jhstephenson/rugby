  require 'smarter_csv'
  options = {}
  SmarterCSV.process('ptFIL002.csv', options) do |chunk|
    chunk.each do |data_hash|
      Client.create!( data_hash )
    end
  end