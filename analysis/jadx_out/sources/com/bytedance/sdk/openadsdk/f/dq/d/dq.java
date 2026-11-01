package com.bytedance.sdk.openadsdk.f.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdInteractionListener f3754d;
    private ValueSet dq = hat.f19147b;

    public dq(TTAdInteractionListener tTAdInteractionListener) {
        this.f3754d = tTAdInteractionListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3754d != null && i == 100101) {
            this.f3754d.onAdEvent(valueSet.intValue(0), (Map) valueSet.objectValue(1, Map.class));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
