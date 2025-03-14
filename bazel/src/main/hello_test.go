package main

import "testing"

func TestTrueIsTrue(t *testing.T) {
	if true != true {
		t.Error("Expected true to be true")
	}
}

func TestFalseIsFalse(t *testing.T) {
	if false != false {
		t.Error("Expected false to be false")
	}
}

