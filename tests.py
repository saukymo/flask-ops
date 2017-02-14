import app
import unittest

class FlaskTestCase(unittest.TestCase):
    def setUp(self):
        self.app = app.app.test_client()

    def tearDown(self):
    	pass

    def test_index(self):
        rv = self.app.get('/')
        assert b'Hello, World!' in rv.data

if __name__ == '__main__':
    unittest.main()
