require 'rake'
require 'rspec/core/rake_task'

desc 'Run tests local'
RSpec::Core::RakeTask.new('local') do |t|
  t.rspec_opts = ['-Ilib', '--format documentation', '--color --tty', '--tag local']
  t.pattern = 'spec/local/all_spec.rb'
end

desc 'Run test remote'
RSpec::Core::RakeTask.new('remote') do |t|
  t.rspec_opts = ['-Ilib','--format documentation','--color --tty', '--tag remote']
  t.pattern = 'spec/remote/all_spec.rb'
end
