from behave import given, when, then

class Calculator:
    def __init__(self):
        self.result = 0
        
    def add(self, a, b):
        self.result = a + b
        return self.result

@given('I have a calculator')
def step_impl(context):
    context.calculator = Calculator()

@when('I add {num1:d} and {num2:d}')
def step_impl(context, num1, num2):
    context.calculator.add(num1, num2)

@then('the result should be {expected:d}')
def step_impl(context, expected):
    assert context.calculator.result == expected, f"Expected {expected}, but got {context.calculator.result}"

