package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class iw extends dq {
    public iw(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
    }

    private boolean bu() {
        return com.bytedance.sdk.openadsdk.h.o.dq(this.f2635d);
    }

    public static int d(j jVar) {
        return 4;
    }

    public static boolean dq(j jVar) {
        return (jVar == null || jVar.es() == 100.0f) ? false : true;
    }

    private boolean fd() {
        return j.d(this.f2635d);
    }

    private boolean ox(j jVar) {
        return (jVar.y() == 4) && !TextUtils.isEmpty(jVar.gn());
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.kk.s(8);
        this.kk.iw(8);
        if (iw()) {
            this.gh.dq(false);
            return;
        }
        this.gh.d(this.f2635d.qc());
        this.gh.s(fd() || bu());
        if (fd()) {
            return;
        }
        this.gh.dq(false, null, null, true, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.mn mnVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.mn(this.dq, this.f2635d, z);
        this.kk = mnVar;
        return mnVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean ds() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void f() {
        super.f();
        this.gh.d(this.f2635d.qc());
        if (fd() || bu()) {
            this.gh.s(true);
        }
        if (!fd()) {
            this.gh.dq(false, null, null, true, true);
        }
        if (!fd()) {
            this.kk.iw(8);
            this.kk.s(8);
        } else {
            this.kk.iw(0);
            this.kk.s(0);
            this.kk.ox(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ia() {
        super.ia();
        ob();
        try {
            final View decorView = this.dq.getWindow().getDecorView();
            if (decorView != null) {
                decorView.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.iw.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int no = (int) (ce.no(iw.this.dq) / 2.0f);
                        int paddingLeft = decorView.getPaddingLeft();
                        int paddingRight = decorView.getPaddingRight();
                        int paddingTop = decorView.getPaddingTop();
                        int paddingBottom = decorView.getPaddingBottom();
                        if (iw.this.ox == 1 && !ce.d()) {
                            paddingTop += no;
                            paddingBottom += no;
                        }
                        if (iw.this.ox == 2 && !ce.d()) {
                            paddingLeft += no;
                            paddingRight += no;
                        }
                        decorView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void jw() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.iw iwVar = this.k;
        if (iwVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq((Object) this.dq);
        }
        com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar = this.wp;
        if (sVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq((Object) this.dq);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f2635d)) {
            return com.bytedance.sdk.openadsdk.res.s.k(this.dq);
        }
        int i = (int) (this.p * 1000.0f);
        return this.ox == 1 ? i != 666 ? i != 1000 ? i != 1500 ? i != 1777 ? com.bytedance.sdk.openadsdk.res.s.ji(this.dq) : com.bytedance.sdk.openadsdk.res.s.h(this.dq) : com.bytedance.sdk.openadsdk.res.s.e(this.dq) : com.bytedance.sdk.openadsdk.res.s.kx(this.dq) : com.bytedance.sdk.openadsdk.res.s.wp(this.dq) : i != 562 ? i != 666 ? i != 1000 ? i != 1500 ? com.bytedance.sdk.openadsdk.res.s.ir(this.dq) : com.bytedance.sdk.openadsdk.res.s.n(this.dq) : com.bytedance.sdk.openadsdk.res.s.kx(this.dq) : com.bytedance.sdk.openadsdk.res.s.bl(this.dq) : com.bytedance.sdk.openadsdk.res.s.op(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean l() {
        return this.ox == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ox(boolean z) {
        super.ox(z);
        if (wp.d().no(c.kk(this.f2635d)) || this.q) {
            if (com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.ox && com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.f3324d && ox(this.f2635d)) {
                com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.f3324d = false;
                com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.ox = false;
                this.dq.finish();
            } else if (z && !com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.ox) {
                this.dq.finish();
            } else {
                if (!this.i.u() || com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.ox) {
                    return;
                }
                this.dq.finish();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void p(boolean z) {
        int i = (int) (this.p * 1000.0f);
        if (this.ox != 1) {
            this.kk.p(8);
            return;
        }
        if (i == 666 || i == 1000 || i == 1500 || i == 1777) {
            this.kk.p(8);
        } else {
            this.kk.p(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return xz() && this.f2635d.ce() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return fd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return fd() || bu();
    }
}
