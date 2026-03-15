#!/usr/bin/env python3
from hijri_converter import Gregorian
from datetime import datetime

today = datetime.now()
hijri = Gregorian(today.year, today.month, today.day).to_hijri()

print(f"{hijri.day} {hijri.month_name()} {hijri.year} AH")
