import os
import sys

sys.path.append(os.path.join(os.path.dirname(__file__), "..\\.."))
import mod

mod.CURRENT_DIR = os.path.dirname(os.path.abspath(__file__))
mod.MOD_NAME = os.path.basename(mod.CURRENT_DIR)

mod.INCLUDE_DIR = ["reframework"]

mod.OUT_PATH = os.path.join(mod.CURRENT_DIR, f"{mod.MOD_NAME}.zip")


if __name__ == "__main__":
    mod.Zip.pack()
