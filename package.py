name = "tbb"

version = "4.4"

variants = [
    ["platform-linux"]
]

def commands():
    if building:
        env.CMAKE_MODULE_PATH.append("{root}/cmake")
