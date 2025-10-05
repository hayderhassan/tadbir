from typing import List

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="Tadbīr API", version="0.0.1")


class TimeBucket(BaseModel):
    start: str
    end: str
    capacity: int
    remaining: int
    risk: str


class Route(BaseModel):
    id: str
    polyline: str
    est_time_min: int
    shade: float
    risk: str
    max_flow_per_5min: int


class GuidanceResponse(BaseModel):
    zone: str
    time_buckets: List[TimeBucket]
    routes: List[Route]
    heat_index: float
    version: str = "1.0.0"


@app.get("/v1/guidance", response_model=GuidanceResponse)
def get_guidance(origin: str, dest: str, profile: str = "standard"):
    return GuidanceResponse(
        zone="MasjidAlHaram",
        time_buckets=[
            TimeBucket(
                start="2025-08-10T12:00:00Z", end="2025-08-10T12:10:00Z", capacity=8000, remaining=1850, risk="med"
            ),
            TimeBucket(
                start="2025-08-10T12:10:00Z", end="2025-08-10T12:20:00Z", capacity=8000, remaining=4200, risk="low"
            ),
        ],
        routes=[
            Route(id="R1", polyline="enc...", est_time_min=24, shade=0.7, risk="low", max_flow_per_5min=1200),
            Route(id="R2", polyline="enc...", est_time_min=22, shade=0.4, risk="med", max_flow_per_5min=900),
        ],
        heat_index=38.5,
    )
