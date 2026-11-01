package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class no extends q implements Bridge {
    private ValueSet dq;

    private ValueSet kx() {
        hat e2 = hat.e(super.values());
        e2.m(160001, new ValueSet.ValueGetter<Double>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.no.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Double get() {
                return Double.valueOf(no.this.dq());
            }
        });
        e2.m(160002, new ValueSet.ValueGetter<com.bytedance.sdk.openadsdk.le.dq.d.d.dq>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.no.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public com.bytedance.sdk.openadsdk.le.dq.d.d.dq get() {
                return no.this.d();
            }
        });
        e2.m(160003, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.no.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(no.this.ox());
            }
        });
        e2.m(160004, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.no.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(no.this.p());
            }
        });
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 160101:
                dq(new com.bytedance.sdk.openadsdk.le.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 160102:
                dq(new com.bytedance.sdk.openadsdk.le.dq.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract com.bytedance.sdk.openadsdk.le.dq.d.d.dq d();

    public abstract double dq();

    public abstract void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar);

    public abstract int ox();

    public abstract int p();

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet kx = kx();
        this.dq = kx;
        return kx;
    }
}
