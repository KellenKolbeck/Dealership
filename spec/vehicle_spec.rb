require('rspec')
require('vehicle')

describe('Vehicle') do
  describe('#make') do
    it('returns the make of the vehicle') do
      new_vehicle = Vehicle.new('Toyota', 'Prius', '2011')
      expect(new_vehicle.make).to(eq('Toyota'))
    end
  end
  describe('#model') do
    it('returns the model of the vehicle') do
      new_vehicle = Vehicle.new('Toyota', 'Prius', '2011')
      expect(new_vehicle.model).to(eq('Prius'))
    end
  end
  describe('#year') do
    it('returns the year of the vehicle') do
      new_vehicle = Vehicle.new('Toyota', 'Prius', '2011')
      expect(new_vehicle.year).to(eq('2011'))
    end
  end
  describe('.all') do
    it('returns all of the saved vehicles') do
      expect(Vehicle.all()).to(eq([]))
    end
  end
  describe('#save') do
    it('saves a car to the vehicle class') do
      new_vehicle = Vehicle.new('Toyota', 'Prius', '2011')
      new_vehicle.save
      expect(Vehicle.all()).to(eq([new_vehicle]))
    end
  end
  describe('.clear') do
    it('clears the vehicles from the array') do
      new_vehicle = Vehicle.new('Toyota', 'Prius', '2011')
      new_vehicle.save
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end


end
