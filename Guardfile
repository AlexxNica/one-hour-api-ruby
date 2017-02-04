# More info at https://github.com/guard/guard#readme

guard :rspec, cmd: 'RUBYOPT="-W0" rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/one_hour_api/resource/(.+)\.rb$})     { |m| "spec/resource/#{m[1]}_spec.rb" }
  watch(%r{^lib/one_hour_api/resource/(.+)\.rb$})     { |m| "spec/mock/#{m[1]}_spec.rb" }
  watch(%r{^lib/one_hour_api/mock/(.+)\.rb$})     { |m| "spec/mock/#{m[1]}_spec.rb" }
  watch(%r{^lib/one_hour_api/mock/resource/(.+)\.rb$})     { |m| "spec/mock/resource/#{m[1]}_spec.rb" }
  watch("lib/one_hour_api/mock/client.rb")     { "spec/mock" }
  watch('spec/spec_helper.rb')  { "spec" }
end

notification :terminal_notifier if `uname` =~ /Darwin/
