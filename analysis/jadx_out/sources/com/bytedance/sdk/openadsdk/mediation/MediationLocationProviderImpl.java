package com.bytedance.sdk.openadsdk.mediation;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.LocationProvider;

/* loaded from: classes3.dex */
public class MediationLocationProviderImpl implements Bridge, LocationProvider {
    private LocationProvider dq;

    public MediationLocationProviderImpl(LocationProvider locationProvider) {
        this.dq = locationProvider;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8481) {
            return (T) Double.valueOf(getLatitude());
        }
        if (i == 8482) {
            return (T) Double.valueOf(getLongitude());
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        LocationProvider locationProvider = this.dq;
        if (locationProvider != null) {
            return locationProvider.getLatitude();
        }
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        LocationProvider locationProvider = this.dq;
        if (locationProvider != null) {
            return locationProvider.getLongitude();
        }
        return 0.0d;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
