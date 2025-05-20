# frozen_string_literal: true

class HealthCheckController < ApplicationController # rubocop:disable Style/Documentation
  def index
    render json: { ok: true }
  end
end
