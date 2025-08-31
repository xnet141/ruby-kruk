require 'forwardable'
require_relative 'errors'
require_relative 'item'

module SimpleRPG
  class Inventory
    include Enumerable
    extend Forwardable

    attr_reader :owner # owner - владелец
    attr_accessor :items

    def_delegators :@items, :[], :each, :last

    MAX_ITEMS = 5

    def initialize(owner, *items)
      @items = []
      put_to_inventory items
      @owner = owner
    end

    def <<(new_items)
      new_items = [new_items] unless new_items.is_a?(Array)

      put_to_inventory new_items
    end

    private

    def put_to_inventory(new_items)
      raise(SimpleRPG::InventoryOverflow) if @items.length + new_items.length > MAX_ITEMS

      @items += new_items
    end
  end
end