package com.bytedance.sdk.openadsdk.ats;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class AutoService implements Bridge {
    private static List<Bridge> dq = new ArrayList();

    public static <T> T dq(Class<T> cls) {
        T t = (T) dq.dq().dq(cls);
        if (t == null && dq.size() > 0) {
            Iterator<Bridge> it = dq.iterator();
            while (it.hasNext() && (t = (T) it.next().call(1, null, cls)) == null) {
            }
        }
        return t;
    }

    public static Bridge init(Bridge bridge) {
        if (bridge != null) {
            dq.add(bridge);
        }
        return new AutoService();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 1) {
            return null;
        }
        return (T) dq.dq().dq(cls);
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
