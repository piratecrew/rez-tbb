name = "tbb"

version = "4.4"

variants = [
    ["platform-linux"]
]

def commands():
    env.CMAKE_MODULE_PATH.append("{root}/cmake")
