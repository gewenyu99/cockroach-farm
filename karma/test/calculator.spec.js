describe('Calculator', function() {
    let calculator;
    
    beforeEach(function() {
        calculator = new Calculator();
    });
    
    it('should add two numbers correctly', function() {
        expect(calculator.add(2, 3)).toBe(5);
    });
    
    it('should subtract two numbers correctly', function() {
        expect(calculator.subtract(5, 2)).toBe(3);
    });

    // Failing test
    it('should multiply two numbers correctly', function() {
        expect(calculator.multiply(2, 3)).toBe(10); // Intentional failure
    });

    // Flaky test
    it('should return a random number between 1 and 10', function() {
        const result = calculator.randomNumber();
        expect(result).toBeGreaterThanOrEqual(1);
        expect(result).toBeLessThanOrEqual(10);
        // Simulate flakiness
        if (Math.random() > 0.5) {
            expect(result).toBe(11); // Random failure
        }
    });
});
