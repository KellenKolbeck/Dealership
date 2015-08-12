class Dealership

  @@dealership = []

  define_method(:initialize) do |name|
    @name = name
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

end
