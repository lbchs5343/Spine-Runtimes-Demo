package com.bytedance.sdk.gromore.init;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class d {
    public static com.bytedance.msdk.api.p.iw dq(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar) {
        if (oxVar == null) {
            return null;
        }
        com.bytedance.msdk.api.p.iw iwVar = new com.bytedance.msdk.api.p.iw();
        iwVar.dq(oxVar.d());
        iwVar.p(oxVar.iw());
        iwVar.d(oxVar.ox());
        iwVar.ox(oxVar.p());
        iwVar.dq(oxVar.s());
        iwVar.s(oxVar.mn());
        iwVar.dq(oxVar.dq());
        return iwVar;
    }

    public static Map<String, String> dq(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return hashMap;
    }
}
