describe("A suite", function() {
    it("contains a spec with an expectation", function() {
        expect(true).toBe(true);
    });

    it("contains a spec that will always fail", function() {
        expect(true).toBe(false);
    });

    it("contains a spec that checks for equality", function() {
        expect(1 + 1).toBe(2);
    });

    it("contains a flaky test that sometimes fails", function() {
        const randomValue = Math.random();
        expect(randomValue).toBeLessThan(0.5);
    });

    it("contains a test with a string comparison", function() {
        expect("hello").toBe("hello");
    });

    it("contains a test that will always fail with a type mismatch", function() {
        expect(42).toBe("42");
    });

    it("contains a flaky test with a date comparison", function() {
        const now = new Date().getSeconds();
        expect(now % 2).toBe(0); // Fails if the current second is odd
    });
});