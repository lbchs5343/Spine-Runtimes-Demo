package com.bytedance.sdk.gromore.dq.d;

import java.util.Map;

/* loaded from: classes.dex */
public class d {
    public static Map<String, Object> dq(Map<String, Object> map, Map<String, Object> map2) {
        if (map == null) {
            return map2;
        }
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }
}
