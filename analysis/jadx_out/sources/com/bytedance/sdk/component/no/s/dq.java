package com.bytedance.sdk.component.no.s;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static Map<String, Map<String, Object>> f2016d = new HashMap();
    private static volatile dq dq;

    private dq() {
    }

    public static dq dq() {
        if (dq != null) {
            return dq;
        }
        synchronized (dq.class) {
            try {
                if (dq != null) {
                    return dq;
                }
                dq dqVar = new dq();
                dq = dqVar;
                return dqVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Map<String, Object> dq(String str) {
        Map<String, Object> map = f2016d.get(str);
        if (map != null) {
            return map;
        }
        HashMap hashMap = new HashMap();
        f2016d.put(str, hashMap);
        return hashMap;
    }
}
