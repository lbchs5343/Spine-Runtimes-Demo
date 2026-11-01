package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class p {

    /* renamed from: d, reason: collision with root package name */
    private static final Map<Integer, Class> f2793d;
    private static final Map<Integer, d> dq = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        f2793d = hashMap;
        hashMap.put(-1, d.class);
        hashMap.put(4, ia.class);
        hashMap.put(5, mn.class);
        hashMap.put(3, kk.class);
        hashMap.put(2, dq.class);
    }

    private static d d(j jVar, Context context) {
        d dVar;
        Map<Integer, d> map = dq;
        map.put(-1, new d());
        map.put(4, new ia());
        map.put(5, new mn());
        map.put(3, new kk());
        map.put(2, new dq());
        if (jVar != null && (dVar = map.get(Integer.valueOf(jVar.y()))) != null) {
            dVar.dq(jVar);
            dVar.dq(context);
            return dVar;
        }
        return new d();
    }

    public static d dq(j jVar, Context context) {
        return dq(jVar, context, 0);
    }

    public static d dq(j jVar, Context context, int i) {
        if (jVar == null) {
            return d(null, context);
        }
        Map<Integer, Class> map = f2793d;
        Class cls = map.get(Integer.valueOf(i));
        if (cls == null) {
            cls = map.get(Integer.valueOf(jVar.y()));
        }
        try {
            d dVar = (d) cls.newInstance();
            dVar.dq(jVar);
            dVar.dq(context);
            return dVar;
        } catch (Throwable unused) {
            return d(jVar, context);
        }
    }
}
