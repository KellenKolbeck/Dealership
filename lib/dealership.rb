class Dealership

  @@dealership = []

  define_method(:initialize) do |name|
    @name = name
    @car_list = []
    @id = @@dealership.length() + 1
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@dealership
  end

  define_method(:save) do
    @@dealership.push(self)
  end

  define_singleton_method(:clear) do
    @@dealership = []
  end

  define_method(:save_vehicle) do |car|
    @car_list.push(car)
  end

  define_method(:show_vehicles) do
    @car_list
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    @@dealership.each do |car_dealer|
      if car_dealer.id() == id
      return car_dealer
      end
    end
    return nil
  end

end
