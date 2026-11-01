package com.bytedance.sdk.openadsdk.core.component.splash.ox.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.ws;

/* loaded from: classes3.dex */
public class d extends dq {
    private String ia;
    private com.bytedance.sdk.openadsdk.core.r.dq ig;
    private int iw;
    private com.bykv.vk.openvk.component.video.api.ox.ox kk;
    private int mn;
    private boolean mp;
    private boolean no;
    private int o;
    private int p;
    private boolean q;
    private com.bytedance.sdk.openadsdk.mp.d s;

    public d(j jVar, boolean z) {
        if (jVar == null) {
            return;
        }
        this.f2749d = jVar;
        this.q = z;
        this.mp = jVar.ce() == 2;
        d(jVar);
    }

    private void d(j jVar) {
        int dc = jVar.dc();
        j.dq tv = jVar.tv();
        ws ny = jVar.ny();
        if (TextUtils.isEmpty(pa.dq(jVar))) {
            this.p = 1;
        } else if (ox(jVar)) {
            if (dq(tv) || dq(ny)) {
                this.p = 2;
            } else {
                if (d(tv) || d(ny)) {
                    jVar.kk(1);
                }
                this.p = 1;
            }
        } else if (dc == 1) {
            this.p = 1;
        } else {
            this.p = 2;
        }
        p(jVar);
    }

    private boolean d(j.dq dqVar) {
        return dqVar != null && dq(dqVar.ia()) == 0;
    }

    private boolean d(ws wsVar) {
        return wsVar != null && wsVar.mn() == 0;
    }

    private int dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return 0;
        }
    }

    private boolean dq(j.dq dqVar) {
        return dqVar != null && dq(dqVar.ia()) == 2;
    }

    private boolean dq(ws wsVar) {
        return wsVar != null && wsVar.mn() == 2;
    }

    private void iw(j jVar) {
        this.kk = pa.q(jVar);
        this.o = c.kk(jVar);
        this.no = jVar.jc();
    }

    private boolean ox(j jVar) {
        return jVar.ce() == 2;
    }

    private void p(j jVar) {
        s(jVar);
        iw(jVar);
    }

    private void s(j jVar) {
        ji jiVar;
        if (jVar.oh() == null || (jiVar = jVar.oh().get(0)) == null) {
            return;
        }
        String dq = jiVar.dq();
        if (TextUtils.isEmpty(dq)) {
            return;
        }
        this.ia = cv.ig(jVar);
        this.iw = jiVar.d();
        this.mn = jiVar.ox();
        this.s = new com.bytedance.sdk.openadsdk.mp.d(dq, jiVar.mn());
    }

    public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar) {
        this.ig = dqVar;
    }

    public void dq(boolean z) {
        this.q = z;
    }

    public com.bykv.vk.openvk.component.video.api.ox.ox ia() {
        return this.kk;
    }

    public String ig() {
        return this.ia;
    }

    public int iw() {
        return this.iw;
    }

    public boolean jy() {
        return this.q;
    }

    public int kk() {
        return this.o;
    }

    public int mn() {
        return this.mn;
    }

    public com.bytedance.sdk.openadsdk.core.r.dq mp() {
        return this.ig;
    }

    public int no() {
        return this.p;
    }

    public boolean o() {
        return this.no;
    }

    public boolean p() {
        return this.p == 2;
    }

    public boolean q() {
        return this.mp;
    }

    public com.bytedance.sdk.openadsdk.mp.d s() {
        return this.s;
    }
}
