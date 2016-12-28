# vi:ft=ruby:

Encoding.default_external = 'UTF-8'
source 'https://supermarket.chef.io'

def dependencies(path)
  berks = "#{path}/Berksfile.in"
  instance_eval(File.read(berks)) if File.exist?(berks)
end

Dir.glob('./cookbooks/*').each do |path|
  dependencies path
  cookbook File.basename(path), path: path
end

# basic role dependencies
cookbook 'apt', '~> 5.0.1'
cookbook 'chef-client', '~> 7.0.3'

# database-postgresql role dependencies
cookbook 'postgresql', '~> 5.1.0'

# database-mongodb role dependencies
cookbook 'mongodb3', '~> 5.3.0'


