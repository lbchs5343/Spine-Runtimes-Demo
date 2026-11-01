package com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class d implements Bridge {
    private ValueSet dq;

    private ValueSet iw() {
        hat f2 = hat.f();
        f2.m(271001, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return d.this.dq();
            }
        });
        f2.m(271002, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return d.this.d();
            }
        });
        f2.m(271003, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return d.this.ox();
            }
        });
        f2.m(271004, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(d.this.p());
            }
        });
        f2.m(271005, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.d.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return d.this.s();
            }
        });
        return f2.k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public abstract String d();

    public abstract String dq();

    public abstract String ox();

    public abstract int p();

    public abstract String s();

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
