#!/usr/bin/env python3
import sys
from pathlib import Path

# Add src/ to sys.path so imports work without installation
sys.path.insert(0, str(Path(__file__).parent / "src"))

from insanely_fast_whisper.cli import main

if __name__ == "__main__":
    sys.exit(main())
