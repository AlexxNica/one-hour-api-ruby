# More info at https://github.com/guard/guard#readme

guard :rspec, cmd: 'RUBYOPT="-W0" rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

notification :terminal_notifier if `uname` =~ /Darwin/
