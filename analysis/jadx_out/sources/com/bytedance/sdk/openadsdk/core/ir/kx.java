package com.bytedance.sdk.openadsdk.core.ir;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class kx {

    /* renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f3061d = new AtomicBoolean(true);
    public static volatile Map<String, Boolean> dq = new ConcurrentHashMap();
    private static final com.bytedance.sdk.component.mn.dq ox = n.dq("tt_scheme_check_list_cache", true);

    private kx() {
    }

    public static Map<String, Boolean> d(long j) {
        HashMap hashMap = new HashMap();
        try {
            Map<String, ?> dq2 = ox.dq();
            if (dq2 != null && !dq2.isEmpty()) {
                for (Map.Entry<String, ?> entry : dq2.entrySet()) {
                    JSONObject jSONObject = new JSONObject(entry.getValue().toString());
                    long currentTimeMillis = System.currentTimeMillis() - jSONObject.getLong("time");
                    String key = entry.getKey();
                    if (currentTimeMillis > 259200000) {
                        dq(key);
                    } else if (currentTimeMillis <= j) {
                        hashMap.put(key, Boolean.valueOf(Boolean.parseBoolean(jSONObject.get("value").toString())));
                    }
                }
                if (dq == null) {
                    dq = new ConcurrentHashMap();
                } else {
                    dq.clear();
                }
                dq.putAll(hashMap);
            }
        } catch (Throwable unused) {
        }
        return hashMap;
    }

    private static JSONObject d(String str) {
        String d2 = ox.d(str, "");
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        try {
            return new JSONObject(d2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean dq(String str, long j) {
        JSONObject d2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            d2 = d(str);
        } catch (Throwable unused) {
        }
        if (d2 == null) {
            return null;
        }
        if (System.currentTimeMillis() - d2.getLong("time") <= j) {
            return Boolean.valueOf(Boolean.parseBoolean(d2.getString("value")));
        }
        return null;
    }

    public static Map<String, Boolean> dq(long j) {
        try {
            if (f3061d.get()) {
                synchronized (kx.class) {
                    try {
                        if (f3061d.get()) {
                            Map<String, Boolean> d2 = d(j);
                            f3061d.set(false);
                            return d2;
                        }
                    } finally {
                    }
                }
            }
            return new HashMap(dq);
        } catch (Throwable unused) {
            return new HashMap();
        }
    }

    private static void dq(String str) {
        ox.dq(str);
    }

    public static void dq(String str, Boolean bool) {
        String bool2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (bool == null) {
            bool2 = "";
        } else {
            try {
                bool2 = bool.toString();
            } catch (Throwable unused) {
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("value", bool2);
        jSONObject.put("time", System.currentTimeMillis());
        ox.dq(str, jSONObject.toString());
        f3061d.set(true);
    }
}
