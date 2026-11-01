package com.bytedance.sdk.component.ia.d;

import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.ia.dq.iw;
import com.bytedance.sdk.component.ia.dq.mn;
import com.bytedance.sdk.component.ia.dq.s;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    public static final ConcurrentHashMap<String, d> dq = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private static volatile List<com.bytedance.sdk.component.ia.dq.ox> f1903d = new ArrayList();
    private static ConcurrentHashMap<String, s> ox = new ConcurrentHashMap<>();

    public static void d(String str) {
        dq(false, str);
        ox(str).dq();
    }

    public static mn dq(com.bytedance.sdk.component.ia.dq.dq dqVar) {
        if (dqVar == null || TextUtils.isEmpty(dqVar.s()) || dqVar.getContext() == null) {
            Log.e("log_error", "config or adLogFrom or context is null");
            return null;
        }
        ConcurrentHashMap<String, d> concurrentHashMap = dq;
        d dVar = concurrentHashMap.get(dqVar.s());
        if (dVar == null) {
            dVar = new d(dqVar);
        } else {
            dVar.d(dqVar);
        }
        concurrentHashMap.put(dqVar.s(), dVar);
        return dVar;
    }

    public static List<com.bytedance.sdk.component.ia.dq.ox> dq() {
        return f1903d;
    }

    public static void dq(com.bytedance.sdk.component.ia.dq.d dVar, String str) {
        ox(str).dq(dVar);
    }

    public static void dq(iw iwVar, String str) {
        ox(str).dq(iwVar);
    }

    public static void dq(com.bytedance.sdk.component.ia.dq.ox oxVar) {
        if (oxVar != null) {
            f1903d.add(oxVar);
        }
    }

    public static void dq(String str, String str2) {
        ox(str).dq(str2);
    }

    public static void dq(String str, String str2, List<String> list, boolean z, Map<String, String> map, JSONObject jSONObject) {
        ox(str).dq(str2, list, z, map, jSONObject);
    }

    public static void dq(boolean z, String str) {
        ox(str).dq(z);
    }

    public static boolean dq(String str) {
        d dVar = dq.get(str);
        return dVar == null || dVar.s() == null || dVar.iw() == null || dVar.mn() == null;
    }

    public static void iw(String str) {
        ox(str).ox();
    }

    public static s mn(String str) {
        s sVar = ox.get(str);
        if (sVar == null && (sVar = ox(str).s()) != null) {
            ox.put(str, sVar);
        }
        return sVar;
    }

    public static mn ox(String str) {
        ConcurrentHashMap<String, d> concurrentHashMap = dq;
        d dVar = concurrentHashMap.get(str);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        concurrentHashMap.put(str, dVar2);
        return dVar2;
    }

    public static void p(String str) {
        ox(str).d();
    }

    public static void s(String str) {
        ox(str).p();
    }
}
