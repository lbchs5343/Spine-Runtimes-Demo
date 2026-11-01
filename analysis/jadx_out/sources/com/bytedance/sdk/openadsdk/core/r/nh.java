package com.bytedance.sdk.openadsdk.core.r;

import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class nh {

    /* renamed from: f, reason: collision with root package name */
    public Bundle f3497f;
    public long ig;
    public long no;
    public long o;
    public String ox;
    public int p;
    public int s;
    public final String dq = com.bytedance.sdk.openadsdk.core.ir.c.ia();

    /* renamed from: d, reason: collision with root package name */
    public int f3496d = -1;
    public JSONArray iw = null;
    public int mn = 1;
    public long ia = System.currentTimeMillis();
    public long kk = System.currentTimeMillis();
    public JSONObject mp = null;
    public int q = -1;
    public com.bytedance.sdk.openadsdk.core.kx jy = com.bytedance.sdk.openadsdk.core.kx.dq("");

    public nh dq() {
        nh nhVar = new nh();
        nhVar.f3496d = this.f3496d;
        nhVar.iw = this.iw;
        nhVar.mn = this.mn;
        nhVar.ia = this.ia;
        nhVar.o = this.o;
        nhVar.no = this.no;
        nhVar.ig = this.ig;
        nhVar.q = this.q;
        return nhVar;
    }

    public void dq(String str, long j, boolean z) {
        com.bytedance.sdk.openadsdk.core.kx kxVar;
        if (!z || (kxVar = this.jy) == null || str == null) {
            return;
        }
        kxVar.dq("cst_".concat(str), j);
    }

    public void dq(String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.kx kxVar;
        if (!z || (kxVar = this.jy) == null || str == null) {
            return;
        }
        kxVar.d("cst_".concat(str));
    }
}
