class Vehicle
  @@vehicle_list = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
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

end
