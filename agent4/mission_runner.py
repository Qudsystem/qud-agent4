import asyncio
import os
import sys
from pathlib import Path

# Add project root to path
sys.path.insert(0, str(Path(__file__).parent))

try:
    from src.agent4 import Agent4
    from src.config import Config
    
    async def run_mission():
        # Initialize in YOLO mode to avoid prompts
        agent = Agent4(yolo_mode=True)
        goal = "Create a professional Tic-Tac-Toe game in Python with a graphical interface (using tkinter) and an AI opponent."
        print(f"🚀 MISSION STARTED: {goal}")
        
        # Use the infinity mode we implemented
        result = await agent.execute_infinity(goal)
        print("✅ MISSION COMPLETED")
        print(f"Summary: {result}")

    if __name__ == "__main__":
        asyncio.run(run_mission())
except Exception as e:
    print(f"❌ ERROR: {e}")
