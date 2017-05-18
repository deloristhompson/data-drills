# Write Ruby code to find out the answers to the following questions:
puts "\nStarting Array Drills"
transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# * What is the value of the first transaction?
puts "\nThe first value is #{transactions[0]}"
# * What is the value of the second transaction?
puts "\nThe second value is #{transactions[1]}"
# * What is the value of the fourth transaction?
puts "\nThe fourth value is #{transactions[3]}"
# * What is the value of the last transaction?
puts "\nThe last value is #{transactions[-1]}"
# * What is the value of the second from last transaction?
puts "\nThe second from last value is #{transactions[-2]}"
# * What is the value of the 5th from last transaction?
puts "\nThe 5th from last value is #{transactions[-5]}"

# * What is the value of the transaction with index 5?
puts "\nThe value of index 5 is #{transactions[5]}"
# * How many transactions are there in total?
puts "\nThe total transactions are #{transactions.length}"

# * How many positive transactions are there in total?
puts "\nTotal positive:"
total_positive = []
 transactions.each do |positives|
  if positives >= 0
    total_positive << positives
 end
end
puts total_positive.length

# * How many negative transactions are there in total?
puts "\nTotal negative:"
total_negative = []
transactions.each do |negatives|
  if negatives >= 0
    total_negative << negatives
  end
end
puts total_negative.length

# * What is the largest withdrawal?
puts "\nLargest withdrawal:"
largest_withdrawal = []
transactions.each do |withdrawal|
  if withdrawal <= 0
    largest_withdrawal << withdrawal
    largest_withdrawal = largest_withdrawal.sort
  end
end
puts largest_withdrawal[0]

# * What is the largest deposit?
puts "\nLargest deposit:"
largest_deposit = []
transactions.each do |deposit|
  if deposit >= 0
    largest_deposit << deposit
  end
end
puts largest_deposit.max

# * What is the small withdrawal?
puts "\nSmallest withdrawal:"
smallest_withdrawal = []
transactions.each do |smallest|
  if smallest <= 0
    smallest_withdrawal << smallest
  end
end
puts smallest_withdrawal.max

# * What is the smallest deposit?
puts "\nSmallest deposit:"
smallest_deposit = []
transactions.each do |smallest_deposits|
  if smallest_deposits >= 0
    smallest_deposit << smallest_deposits
    smallest_deposit = smallest_deposit.sort
  end
end
puts smallest_deposit[0]

# * What is the total value of all the transactions?
puts "\nTotal value of all transactions:"
total_transactions = transactions.inject(0){|total,transactions| total + transactions}
puts total_transactions

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
puts "\nTotal value of all transactions with $239,000 starting balance:"
starting_total_transactions = transactions.inject(239_000){|total,transactions| total + transactions}
puts starting_total_transactions


# Write Ruby code to find out the answers to the following questions:
puts "\nStarting Hash Drills....."
best_records = {
  "Tupac"=>"All Eyez on Me",
  "Eminem"=>"The Marshall Mathers LP",
  "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
  "Weird Al"=>"Running With Scissors",
  "Led Zeppelin"=>"Physical Graffiti",
  "Metallica"=>"The Black Album",
  "Pink Floyd"=>"The Dark Side of the Moon",
  "Pearl Jam"=>"Ten",
  "Nirvana"=>"Nevermind"
}

# * How many records are in `best_records`?
puts "Total records: #{best_records.length}"

# * Who are all the artists listed?
print "\nArtist:\n"
best_records.each do |artist, value|
  puts "#{artist}"
end

# * What are all the album names in the hash?
print "\nRecords:\n"
best_records.each do |artist, value|
  puts "#{value}"
end

# * Delete the `Eminem` key-value pair from the list.
print "\nEminem removed\n"
best_records.each do |remove, value|
  best_records.delete("Eminem")
 puts "#{remove} : #{value}"
end

# * Add your favorite musician and their best album to the list.
print "\nFavorite Artist and Album added:\n"
best_records["Stevie Wonder"] = "My Cherie Amour"
best_records.each do |adding, valued|
  puts "#{adding}: #{valued}"
end

# * Change `Nirvana`'s album to another.
print "\nNirvana changed:\n"
best_records["Nirvana"] = "Bleach"
best_records.each do |adding, valued|
  puts "#{adding}: #{valued}"
end

# * Is `Nirvana` included in `best_records`?
print "\nNirvana Included?"
best_records.each do
  if best_records.has_key?("Nirvana")
    puts " Yes"
    break
  else
    puts " No"
  end
end

# * Is `Soundgarden` included in `best_records`?
print "\nSoundgarden Included?"
best_records.each do |key, value|
  if best_records.has_key?("Soundgarden")
    puts " Yes"
    break
  else
    puts " No"
    break
  end
end

# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
print "\nNow it is added!:\n"
    if !best_records.has_key?("Soundgarden")
      best_records["Soundgarden"] = "Superunknown"
      best_records.each do |adding_sound, adding_value|
    puts "#{adding_sound}: #{adding_value}"
  end
end

# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
print "\nKey-value pair with key that has length less than or equal to 6:\n"
      best_records.each do |less_than_key, value|
        if less_than_key.length <= 6
    puts "#{less_than_key}: #{value}"
  end
end

# * Which key-value pairs have a value that is greater than 10 characters?
print "\nKey-value pair with value that is greater than 10:\n"
      best_records.each do |greater_key, greater_value|
        if greater_value.length >= 10
    puts "#{greater_key}: #{greater_value}"
  end
end
