require('rspec')
require('vehicle')
require('dealership')

describe('Dealership') do
  before() do
    Dealership.clear
  end  
  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new('Bob Auto')
      expect(test_dealership.name).to(eq('Bob Auto'))
    end
  end
  describe('.all') do
    it('returns all of the dealerships') do
      expect(Dealership.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves the names of dealerships') do
      test_dealership = Dealership.new('Bob Auto')
      expect(test_dealership.save()).to(eq([test_dealership]))
    end
  end
  describe('.clear') do
    it('clears all of the dealerships out of @@dealership') do
      test_dealership = Dealership.new('Bob Auto')
      test_dealership.save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end
  describe('#save_vehicle') do
    it('puts vehicles into dealerships') do
      test_dealership = Dealership.new('Bob Auto')
      new_vehicle = Vehicle.new('Toyota', 'Prius', '2011')
      test_dealership.save_vehicle(new_vehicle)
      expect(test_dealership.show_vehicles).to(eq([new_vehicle]))
    end
  end
  describe('.find') do
    it('finds a dealership based on an id') do
      test_dealership_1 = Dealership.new("Bob's Auto's")
      test_dealership_1.save()
      test_dealership_2 = Dealership.new("Fred's Used Car Emporium")
      test_dealership_2.save()
      expect(Dealership.find(test_dealership_2.id())).to(eq(test_dealership_2))
    end
  end
end
