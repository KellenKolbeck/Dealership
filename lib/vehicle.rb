class Vehicle
  @@vehicle_list = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
    @id = @@vehicle_list.length() + 1
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_singleton_method(:all) do
    @@vehicle_list
  end

  define_method(:save) do
    @@vehicle_list.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicle_list = []
  end

  define_method(:id) do
    @id
  end

  define_method(:unique_vehicle) do
    "#{@make} #{@model} #{@year}"
  end

  define_singleton_method(:find) do |id|
    @@vehicle_list.each() do |vehicle|
      if vehicle.id == id
        return vehicle
      end
    end
    return nil
  end
end
