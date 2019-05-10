module ObjectHelper
  module Array
    unless method_defined? :to_hash_with_array
      def to_hash_with_array
        return {} if empty?

        each_with_object({}) do |(key, value), result|
          (result[key] ||= []).push(value)
        end
      end
    end
  end
end
