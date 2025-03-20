import { expect } from 'chai';
import { add, subtract } from '../src/math.mjs';

describe('Math functions', () => {
  describe('add()', () => {
    it('should add two positive numbers correctly', () => {
      expect(add(2, 3)).to.equal(5);
    });

    it('should handle negative numbers', () => {
      expect(add(-1, -2)).to.equal(-3);
      expect(add(-1, 5)).to.equal(4);
    });

    it('should handle zero', () => {
      expect(add(0, 5)).to.equal(5);
      expect(add(5, 0)).to.equal(5);
      expect(add(0, 0)).to.equal(0);
    });
  });

  describe('subtract()', () => {
    it('should subtract two positive numbers correctly', () => {
      expect(subtract(5, 3)).to.equal(2);
    });

    it('should handle negative numbers', () => {
      expect(subtract(-1, -2)).to.equal(1);
      expect(subtract(-1, 5)).to.equal(-6);
    });

    it('should handle zero', () => {
      expect(subtract(5, 0)).to.equal(5);
      expect(subtract(0, 5)).to.equal(-5);
      expect(subtract(0, 0)).to.equal(0);
    });
  });
});
