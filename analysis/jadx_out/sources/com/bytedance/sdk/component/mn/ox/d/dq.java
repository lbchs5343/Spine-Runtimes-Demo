package com.bytedance.sdk.component.mn.ox.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class dq {
    private static Map<String, dq> dq = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private SharedPreferences f2004d;

    private dq(String str, Context context) {
        if (context != null) {
            this.f2004d = com.bytedance.sdk.openadsdk.api.plugin.d.d(context.getApplicationContext(), str, 0);
        }
    }

    public static dq dq(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_sp";
        }
        dq dqVar = dq.get(str);
        if (dqVar != null) {
            return dqVar;
        }
        dq dqVar2 = new dq(str, context);
        dq.put(str, dqVar2);
        return dqVar2;
    }

    public float d(String str, float f2) {
        try {
            return this.f2004d.getFloat(str, f2);
        } catch (Throwable unused) {
            return f2;
        }
    }

    public int d(String str, int i) {
        try {
            return this.f2004d.getInt(str, i);
        } catch (Throwable unused) {
            return i;
        }
    }

    public long d(String str, long j) {
        try {
            return this.f2004d.getLong(str, j);
        } catch (Throwable unused) {
            return j;
        }
    }

    public String d(String str, String str2) {
        try {
            return this.f2004d.getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public Set<String> d(String str, Set<String> set) {
        try {
            return this.f2004d.getStringSet(str, set);
        } catch (Throwable unused) {
            return set;
        }
    }

    public void d() {
        try {
            this.f2004d.edit().clear().apply();
        } catch (Throwable unused) {
        }
    }

    public boolean d(String str, boolean z) {
        try {
            return this.f2004d.getBoolean(str, z);
        } catch (Throwable unused) {
            return z;
        }
    }

    public Map<String, ?> dq() {
        try {
            return this.f2004d.getAll();
        } catch (Throwable unused) {
            return Collections.EMPTY_MAP;
        }
    }

    public void dq(String str) {
        try {
            this.f2004d.edit().remove(str).apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, float f2) {
        try {
            this.f2004d.edit().putFloat(str, f2).apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, int i) {
        try {
            this.f2004d.edit().putInt(str, i).apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, long j) {
        try {
            this.f2004d.edit().putLong(str, j).apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, String str2) {
        try {
            this.f2004d.edit().putString(str, str2).apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, Set<String> set) {
        try {
            this.f2004d.edit().putStringSet(str, set).apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, boolean z) {
        try {
            this.f2004d.edit().putBoolean(str, z).apply();
        } catch (Throwable unused) {
        }
    }
}
