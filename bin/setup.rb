require "bundler/setup"
Bundler.require

require "active_support"
require "active_support/all"
require "danbooru"
require "dotenv/load"
require "pry"

STDERR.sync = true
STDOUT.sync = true

class SimpleFormatter < Logger::Formatter
  def call(severity, time, progname, msg)
    level = Logger::Severity.const_get(severity)
    tag = "[#{progname}] " if progname.present?

    "<#{level}> #{tag}#{msg2str(msg)}\n"
  end
end

$log = Logger.new(STDERR, level: :debug, formatter: SimpleFormatter.new)
$booru = Danbooru.new(log: $log)
