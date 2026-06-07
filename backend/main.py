from fastapi import FastAPI

app = FastAPI(
    title="Quantum Nexus API",
    version="1.0.0"
)

@app.get("/")
def root():
    return {
        "project": "Quantum Nexus",
        "status": "running"
    }

@app.get("/health")
def health():
    return {
        "status": "healthy"
}
