package com.bytedance.sdk.component.mn.ox.dq;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
class ox {
    private static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> dq;

    private static Object d(Context context, String str, String str2, String str3) {
        String dq2 = dq(str);
        if (!dq(context, dq2, str2)) {
            return null;
        }
        if (str3.equalsIgnoreCase("string")) {
            return ox(context, dq2, str2, null);
        }
        if (str3.equalsIgnoreCase("boolean")) {
            return Boolean.valueOf(dq(context, dq2, str2, false));
        }
        if (str3.equalsIgnoreCase("int")) {
            return Integer.valueOf(dq(context, dq2, str2, 0));
        }
        if (str3.equalsIgnoreCase("long")) {
            return Long.valueOf(dq(context, dq2, str2, 0L));
        }
        if (str3.equalsIgnoreCase("float")) {
            return Float.valueOf(dq(context, dq2, str2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        }
        if (str3.equalsIgnoreCase("string_set")) {
            return ox(context, dq2, str2, null);
        }
        return null;
    }

    public static Map<String, ?> d(Context context, String str) {
        return ox(context, str).getAll();
    }

    public static void d(Context context, String str, String str2) {
        Map<String, Object> map;
        try {
            SharedPreferences ox = ox(context, str);
            if (ox == null) {
                return;
            }
            SharedPreferences.Editor edit = ox.edit();
            edit.remove(str2);
            edit.apply();
            SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = dq;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            String dq2 = dq(str);
            if (!TextUtils.isEmpty(dq2) && (map = dq.get().get(dq2)) != null && map.size() != 0) {
                map.remove(str2);
                SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference2 = dq;
                if (softReference2 == null || softReference2.get() == null) {
                    return;
                }
                dq.get().put(dq2, map);
            }
        } catch (Throwable unused) {
        }
    }

    private static void d(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = dq;
        if (softReference == null || softReference.get() == null || (map = dq.get().get(dq(str))) == null) {
            return;
        }
        map.clear();
    }

    private static float dq(Context context, String str, String str2, float f2) {
        SharedPreferences ox = ox(context, str);
        return ox == null ? f2 : ox.getFloat(str2, f2);
    }

    private static int dq(Context context, String str, String str2, int i) {
        SharedPreferences ox = ox(context, str);
        return ox == null ? i : ox.getInt(str2, i);
    }

    private static long dq(Context context, String str, String str2, long j) {
        SharedPreferences ox = ox(context, str);
        return ox == null ? j : ox.getLong(str2, j);
    }

    private static Object dq(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = dq;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(dq(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    public static String dq(Context context, String str, String str2, String str3) {
        Object dq2 = dq(str, str2);
        if (dq2 != null) {
            return String.valueOf(dq2);
        }
        Object d2 = d(context, str, str2, str3);
        dq(str, str2, d2);
        return String.valueOf(d2);
    }

    private static String dq(String str) {
        return TextUtils.isEmpty(str) ? "sphelper_ttopenadsdk" : str;
    }

    public static void dq(Context context, String str) {
        SharedPreferences.Editor edit = ox(context, str).edit();
        edit.clear();
        edit.apply();
        d(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized <T> void dq(Context context, String str, String str2, T t) {
        synchronized (ox.class) {
            try {
                SharedPreferences ox = ox(context, str);
                if (ox == null) {
                    return;
                }
                if (t.equals(dq(str, str2))) {
                    return;
                }
                SharedPreferences.Editor edit = ox.edit();
                if (t instanceof Boolean) {
                    edit.putBoolean(str2, ((Boolean) t).booleanValue());
                }
                if (t instanceof String) {
                    edit.putString(str2, (String) t);
                }
                if (t instanceof Integer) {
                    edit.putInt(str2, ((Integer) t).intValue());
                }
                if (t instanceof Long) {
                    edit.putLong(str2, ((Long) t).longValue());
                }
                if (t instanceof Float) {
                    edit.putFloat(str2, ((Float) t).floatValue());
                }
                edit.apply();
                dq(str, str2, t);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void dq(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = dq;
        if (softReference == null || softReference.get() == null) {
            dq = new SoftReference<>(new ConcurrentHashMap());
        }
        String dq2 = dq(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = dq.get();
        if (concurrentHashMap.get(dq2) == null) {
            concurrentHashMap.put(dq2, new HashMap());
        }
        concurrentHashMap.get(dq2).put(str2, obj);
    }

    public static boolean dq(Context context, String str, String str2) {
        SharedPreferences ox = ox(context, str);
        return ox != null && ox.contains(str2);
    }

    private static boolean dq(Context context, String str, String str2, boolean z) {
        SharedPreferences ox = ox(context, str);
        return ox == null ? z : ox.getBoolean(str2, z);
    }

    private static SharedPreferences ox(Context context, String str) {
        if (context == null) {
            return null;
        }
        return com.bytedance.sdk.openadsdk.api.plugin.d.d(context, dq(str), 0);
    }

    private static String ox(Context context, String str, String str2, String str3) {
        SharedPreferences ox = ox(context, str);
        return ox == null ? str3 : ox.getString(str2, str3);
    }
}
