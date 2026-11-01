package com.bytedance.embedapplog;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class mc {
    private static final cc dq = new cc();

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, String> f735d = new ConcurrentHashMap();

    public static String dq(String str) {
        Map<String, String> map = f735d;
        String str2 = map.get(str);
        if (str2 != null) {
            return str2;
        }
        String dq2 = dq.dq(str);
        if (dq2 != null) {
            map.put(str, dq2);
        }
        return dq2;
    }
}
