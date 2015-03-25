class StateController < ApplicationController
  def filter
    if params[:substring] != nil
      @request = params[:substring]
      @filteredStates = State.filter(params[:substring])
    end
  end
end
