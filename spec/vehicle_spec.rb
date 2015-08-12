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
  describe('.find') do
    it('finds a vehicle from a dealership') do
      new_vehicle_1  = Vehicle.new('Toyota', 'Prius' , '2001')
      new_vehicle_2  = Vehicle.new('Toyota', 'Camry', '2001')
      new_vehicle_1.save()
      new_vehicle_2.save()
      expect(Vehicle.find(new_vehicle_1.id())).to(eq(new_vehicle_1))
end
