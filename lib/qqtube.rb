require "qqtube/version"

if defined?(Rails)
  require 'qqtube/railtie'
  require 'generators/qqtube/initialize_generator'
end

module Qqtube

  class << self

    attr_accessor :api_key, :action, :url, :quantity, :id_service, :share_type, :'geo-countries'

    # Default way to setup Qqtube. Run generator to create
    # a fresh initializer with all configuration values.
    def setup
      yield self
    end

    def root_path
      Gem::Specification.find_by_name("qqtube").gem_dir
    end

  end

end
