require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { amount_1: @event.amount_1, amount_2: @event.amount_2, baby_id: @event.baby_id, caretaker_id: @event.caretaker_id, event_id: @event.event_id, event_type: @event.event_type, evet_time: @event.evet_time, notes: @event.notes, unit_1: @event.unit_1, unit_2: @event.unit_2 } }, as: :json
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { amount_1: @event.amount_1, amount_2: @event.amount_2, baby_id: @event.baby_id, caretaker_id: @event.caretaker_id, event_id: @event.event_id, event_type: @event.event_type, evet_time: @event.evet_time, notes: @event.notes, unit_1: @event.unit_1, unit_2: @event.unit_2 } }, as: :json
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event), as: :json
    end

    assert_response 204
  end
end
