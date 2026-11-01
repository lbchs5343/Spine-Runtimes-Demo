package com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo;
import com.bytedance.sdk.openadsdk.mediation.bridge.MediationValueSetBuilder;

/* loaded from: classes3.dex */
public class MediationNativeAppInfoImpl implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private MediationValueSetBuilder f3825d = MediationValueSetBuilder.create();
    private MediationNativeAdAppInfo dq;

    public MediationNativeAppInfoImpl(MediationNativeAdAppInfo mediationNativeAdAppInfo) {
        this.dq = mediationNativeAdAppInfo;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        MediationNativeAdAppInfo mediationNativeAdAppInfo = this.dq;
        if (mediationNativeAdAppInfo != null) {
            this.f3825d.add(8505, mediationNativeAdAppInfo.getAppName());
            this.f3825d.add(8506, this.dq.getAuthorName());
            this.f3825d.add(8507, this.dq.getPackageSizeBytes());
            this.f3825d.add(8508, this.dq.getPermissionsUrl());
            this.f3825d.add(8509, this.dq.getPermissionsMap());
            this.f3825d.add(8510, this.dq.getPrivacyAgreement());
            this.f3825d.add(8511, this.dq.getVersionName());
            this.f3825d.add(8512, this.dq.getAppInfoExtra());
        }
        return this.f3825d.build();
    }
}
