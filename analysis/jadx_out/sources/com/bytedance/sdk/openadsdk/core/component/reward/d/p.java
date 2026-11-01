package com.bytedance.sdk.openadsdk.core.component.reward.d;

import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.p.kk;
import com.bytedance.sdk.openadsdk.core.fw.ia;
import com.bytedance.sdk.openadsdk.core.fw.mn;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class p implements mn {
    protected ia dq;
    private d iw;
    private s kk;
    private String mn;
    protected boolean ox;
    private final TTBaseVideoActivity p;
    private j s;
    private boolean ia = false;

    /* renamed from: d, reason: collision with root package name */
    protected int f2570d = -1;
    private boolean o = false;

    public p(TTBaseVideoActivity tTBaseVideoActivity) {
        this.p = tTBaseVideoActivity;
    }

    private void ig() {
        ia iaVar;
        if (i.ox(this.s) && (iaVar = this.dq) != null) {
            iaVar.unregisterReceiver();
            this.dq.dq((mn) null);
        }
    }

    private void no() {
        ia iaVar;
        if (i.ox(this.s) && (iaVar = this.dq) != null) {
            iaVar.dq(this);
            this.dq.registerReceiver();
        }
    }

    public void d() {
        if (i.ox(this.s)) {
            this.ia = false;
        }
    }

    public void d(boolean z) {
        this.iw.iw(z);
    }

    public void dq() {
        ia iaVar;
        if (i.ox(this.s)) {
            this.ia = true;
            no();
            if ((this.iw.er() || ia()) && !this.ox && (iaVar = this.dq) != null && iaVar.d() == 0) {
                this.ox = true;
                this.kk.p(true);
                this.iw.dq(true);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.fw.mn
    public void dq(int i) {
        this.f2570d = i;
        if (this.ia) {
            if (this.iw.er() || ia()) {
                boolean z = i == 0;
                this.ox = z;
                this.kk.p(z);
                this.iw.dq(this.ox);
            }
        }
    }

    public void dq(int i, int i2) {
        this.iw.d(i, i2);
    }

    public void dq(d dVar, j jVar, String str, s sVar) {
        if (this.o) {
            return;
        }
        this.o = true;
        this.iw = dVar;
        this.s = jVar;
        this.mn = str;
        this.kk = sVar;
        p();
    }

    public void dq(j jVar) {
        this.s = jVar;
    }

    public void dq(boolean z) {
        ia iaVar;
        d dVar = this.iw;
        if (dVar != null && dVar.op()) {
            boolean z2 = z || ((iaVar = this.dq) != null && iaVar.d() == 0);
            this.ox = z2;
            this.kk.p(z2);
            this.iw.dq(z2);
        }
    }

    public void dq(boolean z, boolean z2) {
        this.iw.h();
        dq(z);
        d(z2);
    }

    public boolean ia() {
        d dVar = this.iw;
        if (dVar != null) {
            return dVar.ir();
        }
        return false;
    }

    public void iw() {
        if (i.ox(this.s)) {
            if (this.iw.er() || ia()) {
                boolean z = !this.ox;
                this.ox = z;
                this.iw.dq(z);
            }
        }
    }

    public boolean kk() {
        if (i.s(this.s)) {
            return this.iw.ce();
        }
        return false;
    }

    public void mn() {
        this.iw.n();
        this.kk.dq(this.p.yy().v());
    }

    public boolean o() {
        return this.ox;
    }

    public void ox() {
        if (i.ox(this.s)) {
            ig();
        }
    }

    public void p() {
        if (i.ox(this.s) && !(this.p.yy() instanceof kk)) {
            ia iaVar = new ia(this.p.getApplicationContext());
            this.dq = iaVar;
            iaVar.dq(this);
            int d2 = this.dq.d();
            this.f2570d = d2;
            if (d2 == 0) {
                this.ox = true;
            }
        }
    }

    public void s() {
        if (i.ox(this.s)) {
            HashMap hashMap = new HashMap();
            if (pa.q(this.s) != null) {
                hashMap.put("playable_url", i.dq(this.s));
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.kk(this.s, this.mn, "click_playable_download_button_loading", hashMap);
        }
    }
}
