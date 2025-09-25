import argparse
import numbers

def test(this):
  print(this)

def calculate_mean(numbers_list):
    if not numbers_list:
        return 0
    return sum(numbers_list) / len(numbers_list)

def calculate_median(numbers_list):
    if not numbers_list:
        return 0
    sorted_list = sorted(numbers_list)
    n = len(sorted_list)
    if n % 2 == 0:
        return (sorted_list[n//2 - 1] + sorted_list[n//2]) / 2
    else:
        return sorted_list[n//2]

numbers.Real.conjugate(1,2)

