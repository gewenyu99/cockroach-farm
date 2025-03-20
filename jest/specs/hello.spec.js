function sum(a, b) {
    return a + b;
}   

test('adds 1 + 2 to equal 3', () => {
    expect(sum(1, 2)).toBe(3);
});

// Passing test
test('adds 5 + 7 to equal 12', () => {
    expect(sum(5, 7)).toBe(12);
});

// Failing test
test('adds 2 + 2 to equal 5', () => {
    expect(sum(2, 2)).toBe(5);
});

// Flaky test
test('adds 3 + 3 to equal 6 (flaky)', () => {
    const random = Math.random();
    if (random > 0.5) {
        expect(sum(3, 3)).toBe(6);
    } else {
        expect(sum(3, 3)).toBe(7); // This will fail randomly
    }
});

// Another passing test
test('adds 0 + 0 to equal 0', () => {
    expect(sum(0, 0)).toBe(0);
});

// Another failing test
test('adds -1 + -1 to equal 0', () => {
    expect(sum(-1, -1)).toBe(0);
});