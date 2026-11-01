package com.bytedance.sdk.openadsdk.f.d.d;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class d extends kk implements Bridge {
    private ValueSet dq;

    private ValueSet o() {
        hat e2 = hat.e(super.values());
        e2.m(110001, new ValueSet.ValueGetter<View>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.d.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public View get() {
                return d.this.dq();
            }
        });
        e2.m(110002, new ValueSet.ValueGetter<View>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.d.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public View get() {
                return d.this.d();
            }
        });
        e2.m(110003, new ValueSet.ValueGetter<View>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.d.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public View get() {
                return d.this.ox();
            }
        });
        e2.m(110004, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.d.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(d.this.p());
            }
        });
        e2.m(110005, new ValueSet.ValueGetter<Map<String, Object>>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.d.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return d.this.s();
            }
        });
        e2.m(110006, new ValueSet.ValueGetter<int[]>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.d.6
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int[] get() {
                return d.this.iw();
            }
        });
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 110101:
                mn();
                break;
            case 110102:
                dq(new com.bytedance.sdk.openadsdk.f.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 110103:
                dq(new com.bytedance.sdk.openadsdk.p.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 110104:
                ia();
                break;
            case 110105:
                dq(new com.bytedance.sdk.openadsdk.p.dq.d.dq.ox((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 110106:
                dq(new com.bytedance.sdk.openadsdk.p.dq.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 110107:
                d((ViewGroup) valueSet.objectValue(0, ViewGroup.class));
                break;
            case 110108:
                dq((ViewGroup) valueSet.objectValue(0, ViewGroup.class));
                break;
            case 110109:
                dq((ViewGroup) valueSet.objectValue(0, ViewGroup.class), (Activity) valueSet.objectValue(1, Activity.class));
                break;
            case 110110:
                return (T) kk();
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract View d();

    public abstract void d(ViewGroup viewGroup);

    public abstract View dq();

    public abstract void dq(ViewGroup viewGroup);

    public abstract void dq(ViewGroup viewGroup, Activity activity);

    public abstract void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.ox oxVar);

    public abstract void ia();

    public abstract int[] iw();

    public abstract com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.mn kk();

    public abstract void mn();

    public abstract View ox();

    public abstract int p();

    public abstract Map<String, Object> s();

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet o = o();
        this.dq = o;
        return o;
    }
}
