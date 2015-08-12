require('rspec')
require('vehicle')
require('dealership')

describe('Dealership') do
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
      expect(test_dealership.show_cars).to(eq([new_vehicle]))
    end
  end
end
