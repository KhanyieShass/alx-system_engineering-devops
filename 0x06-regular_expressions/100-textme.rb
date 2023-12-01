#!/usr/bin/env ruby
# This script accepts one argument and passes it to a regular expression,
# coordinating technique
# Your script should return: [SENDER],[RECEIVER],[FLAGS]
# The sender phone number or name (including country code if present)
# The receiver phone number or name (including country code if present)

sender = ARGV[0].scan(/(?<=\[from:)[^ ]+(?=\])/).join
reciever = ARGV[0].scan(/(?<=\[to:)[^ ]+(?=\])/).join
puts "#{sender},#{reciever}"
