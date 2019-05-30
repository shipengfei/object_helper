module ActiveRecord
  module Enum
    class EnumType
      module EnumCast
        def cast(value)
          return value.to_s if mapping.key?(value)
          return mapping.key(value) if mapping.value?(value)

          assert_valid_value(value)
        end
      end
      prepend EnumCast
    end
  end
end
