# Usage

## Testing Usage

Tests in Python shell based on README Usage/

Requires downloading https://github.com/CivicActions/ssp-toolkit to `/workdir/civicactions/ssp-toolkit`.

Running with Python 3.8

```bash
# Set up Python virtual environment
python3.8 -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip

# Install compliance-io
pip install git+https://github.com/CivicActions/compliance-io.git@main#egg=complianceio

# Download / clone CivicActions ssp-toolkit for test data
git clone https://github.com/CivicActions/ssp-toolkit /workdir/ssp-toolkit 

# Launch shell
python
```

Testing in Python3.8 shell.

```python
from complianceio import opencontrol
path = "/workdir/civicactions/ssp-toolkit/opencontrol.yaml"
oc = opencontrol.load(path)

len(oc.components)
oc.components[0].name
oc.components[0].__dict__.keys()
oc.components[0].satisfies[1]
```

## Testing Example `oc_to_oscal_components.py`

Testing constructing OSCAL documents and serializing them to JSON using example `oc_to_oscal_components.py` script.


```bash
# Set up Python virtual environment
python3.8 -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip

# Install compliance-io
pip install git+https://github.com/CivicActions/compliance-io.git@main#egg=complianceio

# Download / clone CivicActions ssp-toolkit
git clone https://github.com/CivicActions/ssp-toolkit /workdir/ssp-toolkit 

# Run example scripts
python examples/oc_to_oscal_components.py /workdir/civicactions/ssp-toolkit/opencontrol.yaml > ~/Downloads/ssp-toolkit-cmpts.json
```

Note: Tried importing `~/Downloads/ssp-toolkit-cmpts.json` into GovReady-Q v0.9.2.1. Took several minutes to run. Components were created after several minutes but components generated with 0 statements.


