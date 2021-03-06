require "hbc/container/naked"

module Hbc
  class Container
    class Pkg < Naked
      def self.me?(criteria)
        criteria.extension(/m?pkg$/) &&
          (criteria.path.directory? || criteria.magic_number(/\Axar!/n))
      end
    end
  end
end
