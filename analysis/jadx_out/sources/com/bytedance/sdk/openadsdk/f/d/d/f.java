package com.bytedance.sdk.openadsdk.f.d.d;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class f extends kk implements Bridge {
    private ValueSet dq;

    private ValueSet iw() {
        hat e2 = hat.e(super.values());
        e2.m(120001, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.f.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(f.this.dq());
            }
        });
        e2.m(120002, new ValueSet.ValueGetter<Map<String, Object>>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.f.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return f.this.d();
            }
        });
        e2.m(120003, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.f.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(f.this.ox());
            }
        });
        e2.m(120004, new ValueSet.ValueGetter<Long>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.f.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Long get() {
                return Long.valueOf(f.this.p());
            }
        });
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 121109) {
            return (T) s();
        }
        switch (i) {
            case 120101:
                dq(new com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 120102:
                d(new com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 120103:
                dq(new com.bytedance.sdk.openadsdk.kx.dq.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 120104:
                dq(new com.bytedance.sdk.openadsdk.f.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 120105:
                dq((Activity) valueSet.objectValue(0, Activity.class));
                break;
            case 120106:
                dq((Activity) valueSet.objectValue(0, Activity.class), (TTAdConstant.RitScenes) valueSet.objectValue(1, TTAdConstant.RitScenes.class), (String) valueSet.objectValue(2, String.class));
                break;
            case 120107:
                dq(valueSet.booleanValue(0));
                break;
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract Map<String, Object> d();

    public abstract void d(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar);

    public abstract int dq();

    public abstract void dq(Activity activity);

    public abstract void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str);

    public abstract void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar);

    public abstract void dq(boolean z);

    public abstract int ox();

    public abstract long p();

    public abstract com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.iw s();

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Bridge
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
