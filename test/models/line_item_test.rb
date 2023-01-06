require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  setup do
    @line_item = line_items(:one)
  end

  test 'Line Item attributes must to not be empty' do
    assert @line_item.valid?

    assert_not_nil @line_item[:id], ['ID must be present.']
    assert_not_nil @line_item[:product_id], ['Product ID must be present.']
    assert_not_nil @line_item[:cart_id], ['Cart ID must be present.']
    assert_not_nil @line_item[:created_at], ['Addition date must be registered.']
    assert_not_nil @line_item[:updated_at], ['First / Second addition date must be registered.']
    assert_not_nil @line_item[:quantity], ['Quantity must be present.']
  end

  test 'Line Item attributes must be valid' do
    assert @line_item[:id].positive?, ['ID must be positive.']
    assert @line_item[:product_id].positive?, ['Product ID must be positive.']
    assert @line_item[:cart_id].positive?, ['Cart ID must be positive.']
    assert_instance_of ActiveSupport::TimeWithZone, @line_item[:created_at], ['Addition date must be valid.']
    assert_instance_of ActiveSupport::TimeWithZone, @line_item[:updated_at], ['First / Second addition date must be valid.']
    assert @line_item[:quantity].positive?, ['ID must be greater than zero.']
  end

  test 'Time of first addition of a line item registered must match the actual time' do
    local_line_item = line_items(:two)
    saved_date = Time.zone.now.to_s # register time as soon as item has been saved

    registered_data = process_timewithzone_data(local_line_item[:created_at])
    saved_data = process_timewithzone_data(saved_date)

    assert_equal registered_data[0], saved_data[0], ["REGISTERED DATE #{registered_data[0]} SAVED DATE #{saved_data[0]}"] # comparing date
    assert_equal registered_data[1], saved_data[1], ["REGISTERED TIME #{registered_data[1]} SAVED TIME #{saved_data[1]}"] # comparing time
  end

  test 'Time of the second addition of a line item registered must be different from first line item added' do
    first_add = @line_item[:created_at]
    @line_item[:quantity] += 3 # Adds a line item
    second_add = @line_item[:updated_at]

    assert_not_equal first_add, second_add, ["FIRST ADD #{first_add} SECOND ADD #{second_add}"]
  end

  test 'Quantity is being updated' do
    assert @line_item[:quantity] == 10

    @line_item[:quantity] += 1

    assert @line_item[:quantity] == 11
  end

  private

  def process_timewithzone_data(data)
    data_arr = []

    useful_data = data.to_s.split(' ') # ignore miliseconds and UTC
    date = useful_data[0] # gets only date data
    time_w_seconds = useful_data[1].split(':')
    time = []
    time << time_w_seconds[0] << time_w_seconds[1] # gets only hour and minuts. Seconds do not matter

    data_arr.insert(0, date)
    data_arr.insert(1, time)

    data_arr
  end
end
