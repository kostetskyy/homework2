# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class Car
  class Car
    attr_accessor :year, :color, :model, :current_speed

    def self.default_car
      Car.new
    end

    def initialize(params)
      unless params.is_a?(Hash)
        raise ArgumentError.new("Expects hash of attributes")
      end
      @year = params[:year] || default_year
      @color = params[:color] || default_color
      @model = params[:model] || default_model
      @current_speed = 0
    end

    def default_color
      @color = 'purple'
    end

    def default_model
      @model = 'skyline'
    end

    def default_year
      @year = 2015
    end

    def get_year
      @year
    end

    def get_color
      @color
    end

    def get_model
      @model
    end

    def get_current_speed
      @current_speed
    end

    def speed_up(speed)
      @current_speed = current_speed + speed
    end

    def push_break(speed)
      return unless speed <= @current_speed
      @current_speed -= speed
    end
  end
end
