try:
    result = 10 / 0  # This will raise a ZeroDivisionError
    print(result)
except ZeroDivisionError as e:
    print(f"Caught an exception: {type(e).__name__} - {str(e)}")
    # Additional handling specific to ZeroDivisionError

except Exception as e:
    print(f"Caught a general exception: {type(e).__name__} - {str(e)}")
    # Additional handling for other exceptions

finally:
    print("Finally block executed.")