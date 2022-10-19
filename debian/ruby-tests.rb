Dir['./test/*_test.rb'].each do |f|
  puts f
  system("#{ENV['RUBY_TEST_BIN']} -Idebian/ruby-timecop/usr/lib/ruby/vendor_ruby:./test  #{f}") or raise
end
