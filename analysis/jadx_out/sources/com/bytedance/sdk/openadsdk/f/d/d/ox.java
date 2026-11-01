package com.bytedance.sdk.openadsdk.f.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ox implements Bridge {
    private ValueSet dq;

    private ValueSet kk() {
        hat f2 = hat.f();
        f2.m(250001, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.dq();
            }
        });
        f2.m(250002, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.d();
            }
        });
        f2.m(250003, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.ox();
            }
        });
        f2.m(250004, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.p();
            }
        });
        f2.m(250006, new ValueSet.ValueGetter<Map<String, String>>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map<String, String> get() {
                return ox.this.s();
            }
        });
        f2.m(250005, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.6
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.iw();
            }
        });
        f2.m(250007, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.7
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.mn();
            }
        });
        f2.m(250008, new ValueSet.ValueGetter<String>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ox.8
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public String get() {
                return ox.this.ia();
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

    public abstract String ia();

    public abstract String iw();

    public abstract String mn();

    public abstract String ox();

    public abstract String p();

    public abstract Map<String, String> s();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet kk = kk();
        this.dq = kk;
        return kk;
    }
}
