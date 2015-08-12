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

end
