<?php

use Demo\Calculator;

test('calculator can add two numbers', function () {
    $calculator = new Calculator();
    
    expect($calculator->add(2, 2))->toBe(4);
    expect($calculator->add(-2, 2))->toBe(0);
    expect($calculator->add(-2, -2))->toBe(-4);
});

test('calculator can subtract numbers', function () {
    $calculator = new Calculator();
    
    expect($calculator->subtract(4, 2))->toBe(2);
    expect($calculator->subtract(2, 4))->toBe(-2);
    expect($calculator->subtract(-2, -4))->toBe(2);
});

test('calculator can multiply numbers', function () {
    $calculator = new Calculator();
    
    expect($calculator->multiply(3, 3))->toBe(9);
    expect($calculator->multiply(-3, 3))->toBe(-9);
    expect($calculator->multiply(-3, -3))->toBe(9);
});

test('calculator can divide numbers', function () {
    $calculator = new Calculator();
    
    expect($calculator->divide(6, 2))->toBe(3);
    expect($calculator->divide(-6, 2))->toBe(-3);
    expect($calculator->divide(-6, -2))->toBe(3);
});

test('calculator throws exception when dividing by zero', function () {
    $calculator = new Calculator();
    
    expect(fn() => $calculator->divide(1, 0))
        ->toThrow(InvalidArgumentException::class, 'Division by zero');
});

