import unittest
from calculator import app

class CalculatorTest(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()

    def test_add(self):
        response = self.app.get('/add?a=2&b=3')
        self.assertEqual(response.json['result'], 5)

if __name__ == "__main__":
    unittest.main()
