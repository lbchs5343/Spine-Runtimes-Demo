package com.bytedance.sdk.openadsdk.f.d.d;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ig extends kk implements Bridge {
    private ValueSet dq;

    private ValueSet iw() {
        hat e2 = hat.e(super.values());
        e2.m(130001, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ig.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(ig.this.dq());
            }
        });
        e2.m(130002, new ValueSet.ValueGetter<Map<String, Object>>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ig.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return ig.this.d();
            }
        });
        e2.m(130003, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ig.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(ig.this.ox());
            }
        });
        e2.m(130004, new ValueSet.ValueGetter<Long>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.ig.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Long get() {
                return Long.valueOf(ig.this.p());
            }
        });
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 130101:
                dq(new com.bytedance.sdk.openadsdk.k.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 130102:
                dq(new com.bytedance.sdk.openadsdk.f.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 130103:
                dq((Activity) valueSet.objectValue(0, Activity.class));
                break;
            case 130104:
                dq((Activity) valueSet.objectValue(0, Activity.class), (TTAdConstant.RitScenes) valueSet.objectValue(1, TTAdConstant.RitScenes.class), (String) valueSet.objectValue(2, String.class));
                break;
            case 130105:
                dq(valueSet.booleanValue(0));
                break;
            case 130106:
                return (T) s();
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract Map<String, Object> d();

    public abstract int dq();

    public abstract void dq(Activity activity);

    public abstract void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str);

    public abstract void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar);

    public abstract void dq(boolean z);

    public abstract int ox();

    public abstract long p();

    public abstract com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.p s();

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
