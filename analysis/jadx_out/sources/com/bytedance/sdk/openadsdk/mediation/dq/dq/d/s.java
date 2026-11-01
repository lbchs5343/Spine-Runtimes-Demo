package com.bytedance.sdk.openadsdk.mediation.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationAppDialogClickListener;
import g.hat;

/* loaded from: classes3.dex */
public class s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final MediationAppDialogClickListener f3835d;
    private ValueSet dq = hat.f19147b;

    public s(MediationAppDialogClickListener mediationAppDialogClickListener) {
        this.f3835d = mediationAppDialogClickListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3835d != null && i == 270025) {
            this.f3835d.onButtonClick(valueSet.intValue(0));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
