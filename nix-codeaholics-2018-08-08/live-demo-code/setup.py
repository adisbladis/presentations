from setuptools import setup, find_packages


setup(
    name='timeservice',
    version='0.0.1',
    packages=['timeservice'],
    entry_points = {
        'console_scripts': [
            'timeservice = timeservice.__main__:main',
        ],
    },
)
