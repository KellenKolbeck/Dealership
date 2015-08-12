require('rspec')
require('vehicle')

describe('Vehicle') do
  describe('#make') do
    it('returns the make of the vehicle') do
      new_vehicle = Vechile.new('Toyota', 'Prius', '2011')
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

end
