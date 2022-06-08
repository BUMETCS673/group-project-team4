import unittest

from Code.neural_network import Db_Connection as dbc

class TestDbConntection(unittest.TestCase):

    def test_save_watched_movies(self):
        user_preference = (1, 1, 5.0)
        condition = 'user_id = ' + str(user_preference[0])
        dbc.insert_user_preference_data(user_preference[0], user_preference[1], user_preference[2])
        saved_user_preference = dbc.extract_user_preference_data(condition)
        self.assertTupleEqual(user_preference, saved_user_preference)

if __name__ == "__main__":
    unittest.main()