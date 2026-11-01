package com.bytedance.sdk.openadsdk.core.ugeno.dq;

import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public abstract class dq implements d {
    public static boolean d(j jVar) {
        return jVar != null && jVar.mj() == 2 && ox(jVar);
    }

    public static d dq(j jVar, mp mpVar) {
        if (jVar != null && s(jVar) == 5) {
            return ((mpVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) && ((com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) mpVar).op()) ? new com.bytedance.sdk.openadsdk.core.ugeno.dq.d.dq() : new com.bytedance.sdk.openadsdk.core.ugeno.dq.dq.dq();
        }
        return null;
    }

    public static boolean ox(j jVar) {
        return s(jVar) == 5;
    }

    private int p(j jVar) {
        if (jVar == null) {
            return -1;
        }
        return jVar.gv();
    }

    private static int s(j jVar) {
        int ia;
        if (jVar == null) {
            return -1;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.d ds = jVar.ds();
        int k = ds != null ? ds.k() : -1;
        return ((k <= 0 || k >= 10) && (ia = c.ia(jVar)) > 0 && ia < 10) ? ia : k;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.dq.d
    public String dq(j jVar) {
        int s = s(jVar);
        int p = p(jVar);
        if (s <= 0 || s > 9 || p == -1) {
            return null;
        }
        return dq(jVar, s, p);
    }

    public abstract String dq(j jVar, int i, int i2);
}
