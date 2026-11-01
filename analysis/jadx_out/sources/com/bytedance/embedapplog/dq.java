package com.bytedance.embedapplog;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.embedapplog.collector.Collector;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dq {

    /* renamed from: d, reason: collision with root package name */
    public static boolean f712d = true;

    @SuppressLint({"StaticFieldLeak"})
    public static c dq = null;
    private static volatile p ia = null;
    private static boolean iw = true;
    private static boolean mn;
    public static ConcurrentHashMap<String, String> ox = new ConcurrentHashMap<>(4);
    public static d p;

    @SuppressLint({"StaticFieldLeak"})
    private static volatile u s;

    public static void d() {
        le.dq();
    }

    public static void d(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() <= 0) {
            jo.d("call onEventData with invalid params, return", null);
            return;
        }
        try {
            le.dq(new cv(str, jSONObject));
        } catch (Exception e2) {
            jo.ox("call onEventData get exception: ", e2);
        }
    }

    public static <T> T dq(String str, T t) {
        c cVar = dq;
        if (cVar != null) {
            return (T) cVar.dq(str, t);
        }
        return null;
    }

    public static void dq() {
        c cVar;
        if (!f712d || (cVar = dq) == null) {
            return;
        }
        cVar.p();
    }

    public static void dq(Context context, ia iaVar) {
        if (s != null) {
            jo.d(new RuntimeException("Init Twice!"));
            return;
        }
        if (iaVar.n() == null) {
            jo.d(new RuntimeException("need to involve setSensitiveInfoProvider!"));
            return;
        }
        Application application = (Application) context.getApplicationContext();
        le iw2 = le.iw();
        u uVar = new u(application, iaVar);
        c cVar = new c(application, uVar);
        iw2.dq(application, uVar, cVar, new cd(iaVar.o()));
        s = uVar;
        dq = cVar;
        if (s.fw()) {
            application.registerReceiver(new Collector(), new IntentFilter());
        }
        jo.p("Inited", null);
    }

    public static void dq(s sVar) {
        bx.dq(sVar);
    }

    public static void dq(String str, Bundle bundle) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        jo.d(th);
                        dq(str, jSONObject);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        dq(str, jSONObject);
    }

    public static void dq(String str, Bundle bundle, int i) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        jo.d(th);
                        dq(str, jSONObject, i);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        dq(str, jSONObject, i);
    }

    public static void dq(String str, JSONObject jSONObject) {
        le.dq(new dc(str, false, jSONObject != null ? jSONObject.toString() : null));
    }

    public static void dq(String str, JSONObject jSONObject, int i) {
        le.dq(new dc(str, false, jSONObject != null ? jSONObject.toString() : null, i));
    }

    public static void dq(HashMap<String, Object> hashMap) {
        c cVar = dq;
        if (cVar != null) {
            cVar.dq(hashMap);
        }
    }

    public static void dq(boolean z) {
        f712d = z;
    }

    public static String ia() {
        c cVar = dq;
        return cVar != null ? cVar.mn() : "";
    }

    public static ia ig() {
        if (s != null) {
            return s.t();
        }
        return null;
    }

    public static JSONObject iw() {
        if (s != null) {
            return s.r();
        }
        return null;
    }

    public static String kk() {
        c cVar = dq;
        return cVar != null ? cVar.kk() : "";
    }

    public static boolean mn() {
        return true;
    }

    public static ox no() {
        return ij.dq();
    }

    public static String o() {
        c cVar = dq;
        return cVar != null ? cVar.o() : "";
    }

    public static p ox() {
        return ia;
    }

    public static d p() {
        return p;
    }

    public static String s() {
        c cVar = dq;
        if (cVar != null) {
            return cVar.mp();
        }
        return null;
    }
}
