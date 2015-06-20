__author__ = 'antoine'

import unittest
import sources.web_app as web_app


class TestWebEngine(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.client = web_app.application.test_client()

    def test_get(self):
        response = self.client.get('/')
        self.assertEqual(200, response.status_code)

    def test_get_error(self):
        response = self.client.get('/no')
        self.assertEqual(404, response.status_code)

    def test_post(self):
        response = self.client.post("http://127.0.0.1")
        self.assertEqual(301, response.status_code)
