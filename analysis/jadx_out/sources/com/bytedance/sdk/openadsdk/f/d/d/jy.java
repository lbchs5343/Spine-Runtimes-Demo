package com.bytedance.sdk.openadsdk.f.d.d;

import android.app.Activity;
import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import g.hat;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class jy extends kk implements Bridge {
    private ValueSet dq;

    private ValueSet o() {
        hat e2 = hat.e(super.values());
        e2.m(150001, new ValueSet.ValueGetter<View>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.jy.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public View get() {
                return jy.this.dq();
            }
        });
        e2.m(150002, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.jy.2
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(jy.this.d());
            }
        });
        e2.m(150003, new ValueSet.ValueGetter<p>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.jy.3
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public p get() {
                return jy.this.iw();
            }
        });
        e2.m(150004, new ValueSet.ValueGetter<Integer>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.jy.4
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Integer get() {
                return Integer.valueOf(jy.this.ox());
            }
        });
        e2.m(150005, new ValueSet.ValueGetter<Map<String, Object>>() { // from class: com.bytedance.sdk.openadsdk.f.d.d.jy.5
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Map<String, Object> get() {
                return jy.this.ia();
            }
        });
        return e2.k();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 150101:
                dq(new com.bytedance.sdk.openadsdk.e.dq.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 150102:
                dq(new com.bytedance.sdk.openadsdk.e.dq.d.dq.dq((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 150103:
                dq(new com.bytedance.sdk.openadsdk.f.d.dq.d((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 150104:
                p();
                break;
            case 150105:
                s();
                break;
            case 150106:
                dq((Activity) valueSet.objectValue(0, Activity.class), new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq((Bridge) valueSet.objectValue(1, Bridge.class)));
                break;
            case 150107:
                dq((TTDislikeDialogAbstract) valueSet.objectValue(0, TTDislikeDialogAbstract.class));
                break;
            case 150108:
                return (T) dq((Activity) valueSet.objectValue(0, Activity.class));
            case 150109:
                valueSet.objectValue(0, Activity.class);
                break;
            case 150110:
                dq(valueSet.intValue(0));
                break;
            case 150111:
                dq(new com.bytedance.sdk.openadsdk.e.dq.d.dq.ox((Bridge) valueSet.objectValue(0, Bridge.class)));
                break;
            case 150112:
                dq(valueSet.booleanValue(0));
                break;
            case 150113:
                return (T) kk();
            case 150114:
                dq((String) valueSet.objectValue(0, String.class));
                break;
            case 150115:
                dq((JSONObject) valueSet.objectValue(0, JSONObject.class));
                break;
            case 150116:
                mn();
                break;
        }
        return (T) super.call(i, valueSet, cls);
    }

    public abstract int d();

    public abstract View dq();

    public abstract ia dq(Activity activity);

    public abstract void dq(int i);

    public abstract void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar);

    public abstract void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract);

    public abstract void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar);

    public abstract void dq(String str);

    public abstract void dq(JSONObject jSONObject);

    public abstract void dq(boolean z);

    public abstract Map<String, Object> ia();

    public abstract p iw();

    public abstract com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s kk();

    public abstract void mn();

    public abstract int ox();

    public abstract void p();

    public abstract void s();

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
