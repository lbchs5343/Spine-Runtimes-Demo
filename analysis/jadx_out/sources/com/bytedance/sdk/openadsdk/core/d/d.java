package com.bytedance.sdk.openadsdk.core.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.d.dq.d.kk;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;

/* loaded from: classes3.dex */
public class d extends p {

    /* renamed from: d, reason: collision with root package name */
    protected final j f2768d;
    protected com.bytedance.sdk.openadsdk.core.d.dq.ox iw;
    protected final String ox;
    protected final int p;
    public int s;

    public d(Context context, j jVar, String str, int i) {
        super(context);
        this.s = 1;
        this.f2768d = jVar;
        this.ox = str;
        this.p = i;
        s();
    }

    private void s() {
        com.bytedance.sdk.openadsdk.core.d.dq.ox dq = this.kk.dq(this.f2768d, this.mn, this, dq());
        this.iw = dq;
        dq.dq(this.ia);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.p);
        ((kk) dq(kk.class)).dq(this.ox);
        ((kk) dq(kk.class)).dq(this.p);
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.ox) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.ox.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.iw) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.iw.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.s) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.s.class)).dq(this.ox);
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.s) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.s.class)).dq(this.p);
        if (dq()) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).p(true);
            ((kk) dq(kk.class)).dq(true);
            ((com.bytedance.sdk.openadsdk.core.d.dq.d.mn) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.mn.class)).dq(this);
        }
    }

    public o d() {
        return this.ia;
    }

    public void d(int i) {
        this.ia.p(i);
    }

    public void d(View view) {
        this.ia.dq(view);
    }

    public void dq(int i) {
        this.s = i;
        o oVar = this.ia;
        if (oVar != null) {
            oVar.dq(i);
        }
    }

    public void dq(View view) {
        this.ia.d(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.p
    public void dq(View view, o oVar) {
        if (j.s(this.f2768d)) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).s());
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.s) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.s.class)).dq(((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).s());
        this.iw.dq(view);
        if (oVar == null) {
            oVar = new o();
        }
        this.iw.dq(oVar);
        this.iw.dq();
        j.iw(this.f2768d);
    }

    public void dq(o oVar) {
        this.ia = oVar;
    }

    public boolean dq() {
        return false;
    }

    public void ox(int i) {
        this.ia.ox(i);
    }

    public void p(int i) {
        this.ia.d(i);
    }
}
