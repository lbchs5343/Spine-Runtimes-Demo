package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class dq implements Bridge {
    private ValueSet dq;

    private ValueSet ox() {
        hat f2 = hat.f();
        f2.m(263001, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.dq.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(dq.this.dq());
            }
        });
        f2.m(263002, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.dq.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return dq.this.d();
            }
        });
        return f2.k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public abstract String d();

    public abstract int dq();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet ox = ox();
        this.dq = ox;
        return ox;
    }
}
