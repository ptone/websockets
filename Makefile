test:
	python -m unittest

coverage:
	coverage erase
	coverage run --branch --source=websockets -m unittest
	coverage html --omit='websockets/test_*.py'

clean:
	find . -name '*.pyc' -delete
	find . -name __pycache__ -delete
	rm -rf .coverage build compliance/reports dist docs/_build htmlcov MANIFEST README websockets.egg-info
