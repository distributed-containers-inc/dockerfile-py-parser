from setuptools import setup

setup(
    name='dockerfileparser',
    version='1.0',
    packages=['dockerfileparser'],
    setup_requires=['wheel'],
    package_data={'': ['bridge-*.so']},
    include_package_data=True,
    license='MIT',
    zip_safe=False,
)
