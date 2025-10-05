#!/bin/sh

. .venv/bin/activate

pip install --upgrade pip
pip install fastapi uvicorn[standard] pydantic-settings pydantic psycopg2-binary
pip install pytest httpx

uvicorn tadbir_api.main:app --host 0.0.0.0 --port 8000 --reload
