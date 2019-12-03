import json


def load_json(string):
    return json.loads(string)


def is_key_in_object(key, column_object):
    if key in column_object:
        return True
    else:
        return False