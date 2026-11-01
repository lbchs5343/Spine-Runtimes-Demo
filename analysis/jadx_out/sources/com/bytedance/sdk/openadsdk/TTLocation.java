package com.bytedance.sdk.openadsdk;

/* loaded from: classes.dex */
public class TTLocation implements LocationProvider {

    /* renamed from: d, reason: collision with root package name */
    private double f2391d;
    private double dq;

    public TTLocation(double d2, double d3) {
        this.dq = d2;
        this.f2391d = d3;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        return this.f2391d;
    }

    public void setLatitude(double d2) {
        this.dq = d2;
    }

    public void setLongitude(double d2) {
        this.f2391d = d2;
    }
}
