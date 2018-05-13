require 'rails'

module Stimulus

  class Engine < ::Rails::Engine
  end

  def self.download!
    require 'open-uri'

    target_file = File.expand_path("../../app/assets/javascripts/stimulus.js", __FILE__)
    downloaded_file = nil

    open('https://unpkg.com/stimulus/dist/stimulus.umd.js') do |io|
      File.open(target_file, 'wb') do |file|
        io.each_line do |line|
          file.write(line)
        end
      end

      downloaded_file = io.base_uri.to_s
    end

    downloaded_file
  end
end
