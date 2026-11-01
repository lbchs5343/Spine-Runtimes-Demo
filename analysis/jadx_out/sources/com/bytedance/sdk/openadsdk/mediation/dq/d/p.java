package com.bytedance.sdk.openadsdk.mediation.dq.d;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class p implements Bridge {
    private ValueSet dq;

    private ValueSet d() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 270024) {
            return (T) dq();
        }
        if (i == 271043) {
            return (T) dq(valueSet.intValue(0), (ValueSet) valueSet.objectValue(1, ValueSet.class));
        }
        if (i == 271050) {
            dq((Map<String, Object>) valueSet.objectValue(0, Map.class));
            return null;
        }
        switch (i) {
            case 270013:
                Activity activity = (Activity) valueSet.objectValue(0, Activity.class);
                List list = (List) valueSet.objectValue(1, List.class);
                if (list == null) {
                    list = new ArrayList(0);
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new s((Bridge) it.next()));
                }
                dq(activity, arrayList, valueSet.intValue(2), valueSet.intValue(3), (Bridge) valueSet.objectValue(4, Bridge.class));
                return null;
            case 270014:
                dq(new com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox((ValueSet) valueSet.objectValue(0, ValueSet.class)));
                break;
            case 270015:
                dq((String) valueSet.objectValue(0, String.class));
                break;
            case 270016:
                dq(new com.bytedance.sdk.openadsdk.f.d.ox.p((ValueSet) valueSet.objectValue(0, ValueSet.class)));
                break;
            case 270017:
                dq((Context) valueSet.objectValue(0, Context.class));
                break;
            case 270018:
                dq((Context) valueSet.objectValue(0, Context.class), (int[]) valueSet.objectValue(1, int[].class));
                break;
            case 270019:
                dq(valueSet.intValue(0));
                break;
            case 270020:
                return (T) Integer.class.cast(Integer.valueOf(dq(new com.bytedance.sdk.openadsdk.mediation.dq.d.dq.p((Bridge) valueSet.objectValue(0, Bridge.class)))));
            case 270021:
                Context context = (Context) valueSet.objectValue(0, Context.class);
                ValueSet valueSet2 = (ValueSet) valueSet.objectValue(1, ValueSet.class);
                Bridge bridge = (Bridge) valueSet.objectValue(3, Bridge.class);
                dq(context, new dq(valueSet2), new com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox((Bridge) valueSet.objectValue(2, Bridge.class)), bridge);
                break;
            case 270022:
                Context context2 = (Context) valueSet.objectValue(0, Context.class);
                ValueSet valueSet3 = (ValueSet) valueSet.objectValue(1, ValueSet.class);
                Bridge bridge2 = (Bridge) valueSet.objectValue(3, Bridge.class);
                dq(context2, new dq(valueSet3), new com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq((Bridge) valueSet.objectValue(2, Bridge.class)), bridge2);
                break;
        }
        return null;
    }

    public abstract int dq(com.bytedance.sdk.openadsdk.mediation.dq.d.dq.p pVar);

    public abstract Object dq(int i, ValueSet valueSet);

    public abstract Map<String, Object> dq();

    public abstract void dq(int i);

    public abstract void dq(Activity activity, List<s> list, int i, int i2, Bridge bridge);

    public abstract void dq(Context context);

    public abstract void dq(Context context, dq dqVar, com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq dqVar2, Bridge bridge);

    public abstract void dq(Context context, dq dqVar, com.bytedance.sdk.openadsdk.mediation.dq.d.dq.ox oxVar, Bridge bridge);

    public abstract void dq(Context context, int[] iArr);

    public abstract void dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar);

    public abstract void dq(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar);

    public abstract void dq(String str);

    public abstract void dq(Map<String, Object> map);

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet d2 = d();
        this.dq = d2;
        return d2;
    }
}
