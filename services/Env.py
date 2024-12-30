import os
from dotenv import load_dotenv

load_dotenv()

API_URL  = os.getenv('API_URL')
#Para projeto WEB
BROWSER  = os.getenv('BROWSER')
HEADLESS = os.getenv('HEADLESS')