require 'rails/generators'

module Expedia
  class InitializeGenerator < Rails::Generators::Base

    source_root File.expand_path("../../templates", __FILE__)

    def copy_initializer_file
      copy_file "qqtube.txt", "config/initializers/qqtube.rb"
    end

  end
end