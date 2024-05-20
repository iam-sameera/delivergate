import pytest
import sys
import os

# Add the root directory to Python's system path
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Now import app from the root directory
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_index(client):
    response = client.get('/')
    assert response.status_code == 200
    assert b"Hello Welcome to Delivergate !" in response.data
