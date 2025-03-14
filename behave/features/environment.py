def before_all(context):
    """
    This runs before the whole test suite.
    """
    print("Starting the calculator test suite")

def after_all(context):
    """
    This runs after the whole test suite.
    """
    print("Calculator test suite completed")

def before_feature(context, feature):
    """
    This runs before each feature.
    """
    print(f"Starting feature: {feature.name}")

def after_feature(context, feature):
    """
    This runs after each feature.
    """
    print(f"Completed feature: {feature.name}")

def before_scenario(context, scenario):
    """
    This runs before each scenario.
    """
    print(f"Starting scenario: {scenario.name}")

def after_scenario(context, scenario):
    """
    This runs after each scenario.
    """
    print(f"Completed scenario: {scenario.name}")

