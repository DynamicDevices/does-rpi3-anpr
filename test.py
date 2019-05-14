import json
from openalpr import Alpr

alpr = Alpr("us", "/etc/openalpr/openalpr.conf", "/usr/share/openalpr/runtime_data")
results = alpr.recognize_file("ea7the.jpg")
print(json.dumps(results, indent=4))
alpr.unload()
