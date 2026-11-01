package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class mp implements Bridge {
    private ValueSet dq;

    private ValueSet iw() {
        hat f2 = hat.f();
        f2.m(230002, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.mp.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(mp.this.dq());
            }
        });
        f2.m(230001, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.mp.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(mp.this.d());
            }
        });
        f2.m(230003, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.mp.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return mp.this.ox();
            }
        });
        f2.m(230004, new ValueSet.ValueGetter<Double>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.mp.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Double get() {
                return Double.valueOf(mp.this.p());
            }
        });
        f2.m(230005, new ValueSet.ValueGetter<Boolean>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.mp.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean get() {
                return Boolean.valueOf(mp.this.s());
            }
        });
        return f2.k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public abstract int d();

    public abstract int dq();

    public abstract String ox();

    public abstract double p();

    public abstract boolean s();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet iw = iw();
        this.dq = iw;
        return iw;
    }
}
