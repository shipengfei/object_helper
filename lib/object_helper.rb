require_relative 'active_record/enum_cast'
require 'object_helper/version'
require 'object_helper/array'

module ObjectHelper
  class Error < StandardError; end

  ::Array.public_send :include, Array
end
