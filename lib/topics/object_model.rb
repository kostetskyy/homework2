# frozen_string_literal: true

# exercise object model
module ObjectModel
  # class Parent
  class Parent
    def mine_bitcoins
      inspect
    end

    def fork_process
      'Parent: allocate memory'
    end
  end

  # module LinuxFriendly
  module LinuxFriendly
    def fork_process
      super
    end
  end

  # class Laptop
  class Laptop < Parent
    prepend LinuxFriendly
  end
end
