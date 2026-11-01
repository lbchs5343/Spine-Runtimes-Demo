package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class p implements Bridge {
    private ValueSet dq;

    private ValueSet ox() {
        hat f2 = hat.f();
        f2.m(243001, new ValueSet.ValueGetter<List<iw>>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.p.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public List<iw> get() {
                return p.this.dq();
            }
        });
        f2.m(243002, new ValueSet.ValueGetter<mn>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.p.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public mn get() {
                return p.this.d();
            }
        });
        return f2.k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public abstract mn d();

    public abstract List<iw> dq();

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
