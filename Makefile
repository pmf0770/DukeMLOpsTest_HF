install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smash --cov=web tests

	python -m pytest --nbval notebook.ipynb # test jupyter notebook
	#python -m pytest -v tests/test_web.py #if to test web

debug:
	python -m pytest -vv --pdb #debugger invoked

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4