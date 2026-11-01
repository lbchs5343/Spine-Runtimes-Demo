package com.bytedance.sdk.openadsdk.core.r;

import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class h {

    /* renamed from: d, reason: collision with root package name */
    private long f3444d;
    private int dq;
    private int ox;
    private boolean p;

    public static boolean d(j jVar) {
        return com.bytedance.sdk.openadsdk.core.wp.d().fw(String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(jVar))) && dq(jVar) && !com.bytedance.sdk.openadsdk.core.mp.s.dq(String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(jVar)));
    }

    public static h dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        h hVar = new h();
        hVar.dq = jSONObject.optInt("refresh_control", 0);
        hVar.f3444d = jSONObject.optLong("refresh_imp_max_time", 0L);
        hVar.ox = jSONObject.optInt("refresh_num", 0);
        hVar.p = jSONObject.optBoolean("is_force_show_skip", false);
        return hVar;
    }

    public static boolean dq(j jVar) {
        h eo;
        return (jVar == null || (eo = jVar.eo()) == null || eo.dq() != 1) ? false : true;
    }

    public static boolean dq(List<j> list) {
        Iterator<j> it = list.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            if (it.next().es() == 100.0f) {
                z = true;
            } else {
                z2 = true;
            }
        }
        return (z && z2) ? false : true;
    }

    public long d() {
        return this.f3444d;
    }

    public void d(JSONObject jSONObject) {
        try {
            jSONObject.put("refresh_control", this.dq);
            jSONObject.put("refresh_imp_max_time", this.f3444d);
            jSONObject.put("refresh_num", this.ox);
            jSONObject.put("is_force_show_skip", this.p);
        } catch (JSONException unused) {
        }
    }

    public int dq() {
        return this.dq;
    }

    public void dq(boolean z) {
        this.p = z;
    }

    public int ox() {
        return this.ox;
    }

    public boolean p() {
        return this.p;
    }
}
