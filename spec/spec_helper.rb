require "pry-byebug"
require "tmpdir"
require File.expand_path("../lib/rghost", __dir__)

RGhost::Config.config_platform

module RGhost
  RG_TMP_DIR = Dir.mktmpdir(Time.now.to_i.to_s)
  private_constant :RG_TMP_DIR

  def self.using_temp_dir(filepath)
    File.expand_path(File.join(RG_TMP_DIR, filepath))
  end

  def self.asser_path(filename)
    File.expand_path(File.join(File.dirname(__FILE__), "assets", filename))
  end
end
