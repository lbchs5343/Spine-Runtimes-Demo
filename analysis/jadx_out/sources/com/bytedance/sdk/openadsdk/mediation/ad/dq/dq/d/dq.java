package com.bytedance.sdk.openadsdk.mediation.ad.dq.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot;
import g.hat;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final IMediationAdSlot f3813d;
    private ValueSet dq = hat.f19147b;

    public dq(IMediationAdSlot iMediationAdSlot) {
        this.f3813d = iMediationAdSlot;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        IMediationAdSlot iMediationAdSlot = this.f3813d;
        if (iMediationAdSlot == null) {
            return null;
        }
        switch (i) {
            case 266001:
                break;
            case 266002:
                break;
            case 266003:
                break;
            case 266004:
                break;
            case 266005:
                break;
            case 266006:
                break;
            case 266007:
                break;
            case 266008:
                break;
            case 266009:
                break;
            case 266010:
                break;
            case 266011:
                break;
            case 266012:
                break;
            default:
                switch (i) {
                }
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
