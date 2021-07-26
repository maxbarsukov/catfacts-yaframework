# frozen_string_literal: true

namespace :mongodb do
  desc 'Start MongoDB for development'
  task :start do
    mkdir_p 'db'
    system 'mongod --dbpath db/'
  end
end

namespace :yafblog do
  desc 'Start YAFBlog for development'
  task :start do
    system 'shotgun config.ru'
  end
end

desc 'Start everything.'
multitask start: %w[mongodb:start yafblog:start]
