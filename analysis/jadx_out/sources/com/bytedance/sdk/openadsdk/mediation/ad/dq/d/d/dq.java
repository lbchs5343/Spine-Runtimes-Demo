package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class dq implements Bridge {
    private ValueSet dq;

    private ValueSet q() {
        hat f2 = hat.f();
        f2.m(268101, new ValueSet.ValueGetter<p>() { // from class: com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq.1
            @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public p get() {
                return dq.this.no();
            }
        });
        return f2.k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 268001:
                return (T) dq();
            case 268002:
                return (T) d();
            case 268003:
                return (T) ox();
            case 268004:
                return (T) p();
            case 268005:
                return (T) s();
            case 268006:
                return (T) Double.class.cast(Double.valueOf(iw()));
            case 268007:
                return (T) mn();
            case 268008:
                return (T) ia();
            case 268009:
                return (T) Integer.class.cast(Integer.valueOf(kk()));
            case 268010:
                return (T) Integer.class.cast(Integer.valueOf(o()));
            case 268011:
                dq((Activity) valueSet.objectValue(0, Activity.class), (ViewGroup) valueSet.objectValue(1, ViewGroup.class), (List) valueSet.objectValue(2, List.class), (List) valueSet.objectValue(3, List.class), (List) valueSet.objectValue(4, List.class), new com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p((Bridge) valueSet.objectValue(5, Bridge.class)));
                return null;
            case 268012:
                return (T) Boolean.class.cast(Boolean.valueOf(ig()));
            default:
                switch (i) {
                    case 268016:
                        dq((Activity) valueSet.objectValue(0, Activity.class), new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq((Bridge) valueSet.objectValue(1, Bridge.class)));
                        return null;
                    case 268017:
                        dq((TTDislikeDialogAbstract) valueSet.objectValue(0, TTDislikeDialogAbstract.class));
                        return null;
                    case 268018:
                        return (T) d((Activity) valueSet.objectValue(0, Activity.class));
                    case 268019:
                        return (T) d((TTDislikeDialogAbstract) valueSet.objectValue(0, TTDislikeDialogAbstract.class));
                    case 268020:
                        return (T) mp();
                    default:
                        switch (i) {
                            case 268102:
                                return (T) dq((Activity) valueSet.objectValue(0, Activity.class));
                            case 268103:
                                return (T) dq((Activity) valueSet.objectValue(0, Activity.class), (Map<String, Object>) valueSet.objectValue(1, Map.class));
                            default:
                                return null;
                        }
                }
        }
    }

    public abstract ia d(Activity activity);

    public abstract ia d(TTDislikeDialogAbstract tTDislikeDialogAbstract);

    public abstract String d();

    public abstract ox dq(Activity activity);

    public abstract ox dq(Activity activity, Map<String, Object> map);

    public abstract String dq();

    public abstract void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar);

    public abstract void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar);

    public abstract void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract);

    public abstract String ia();

    public abstract boolean ig();

    public abstract double iw();

    public abstract int kk();

    public abstract List<String> mn();

    public abstract com.bytedance.sdk.openadsdk.f.d.d.p mp();

    public abstract p no();

    public abstract int o();

    public abstract String ox();

    public abstract String p();

    public abstract String s();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet q = q();
        this.dq = q;
        return q;
    }
}
