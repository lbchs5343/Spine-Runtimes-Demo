package com.bytedance.msdk.ia;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class i {
    private static Map<Integer, Integer> dq = new ConcurrentHashMap();

    public static Integer dq(int i) {
        Integer num = dq.get(Integer.valueOf(i));
        if (num != null) {
            return num;
        }
        Integer valueOf = Integer.valueOf(i);
        dq.put(Integer.valueOf(i), valueOf);
        return valueOf;
    }
}
