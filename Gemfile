# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "activesupport"
gem "dotenv"
gem "dtext_rb", github: "r888888888/dtext_rb"
gem "pry"
gem "pry-byebug"
gem "rmagick"
gem "ruby-booru", github: "evazion/ruby-booru", tag: "0.2.0"
#gem "ruby-booru", git: "/home/admin/src/ruby-booru", tag: "0.1.0"
#gem "ruby-booru", git: "/home/admin/src/ruby-booru", branch: "master"
#gem "ruby-booru", path: "/home/admin/src/ruby-booru"
