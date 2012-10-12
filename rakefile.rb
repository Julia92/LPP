#! /usr/local/ruby/bin/ruby

desc 'Realizando pruebas de los test'
task :test do
  sh 'ruby -I. tc_circunferencia.rb'
end

task :default => :test
