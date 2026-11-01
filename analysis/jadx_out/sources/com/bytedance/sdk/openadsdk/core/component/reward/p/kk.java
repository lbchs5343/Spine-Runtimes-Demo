package com.bytedance.sdk.openadsdk.core.component.reward.p;

import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.xz;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.tn;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public class kk extends dq {

    /* renamed from: c, reason: collision with root package name */
    private long f2644c;
    private final AtomicBoolean ce;
    private final AtomicBoolean er;
    protected final AtomicLong ir;
    private final AtomicBoolean j;
    private com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq nh;
    private final int u;
    private final com.bytedance.sdk.openadsdk.core.video.d.d vf;
    private final AtomicBoolean wn;

    public kk(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.u = 4;
        this.f2644c = 4L;
        this.ce = new AtomicBoolean(false);
        this.er = new AtomicBoolean(false);
        this.wn = new AtomicBoolean(false);
        this.j = new AtomicBoolean(false);
        this.ir = new AtomicLong();
        this.vf = new com.bytedance.sdk.openadsdk.core.video.d.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.kk.1
            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public void d() {
                kk.this.wn.set(false);
                kk.this.kk.s(8);
                if (!kk.this.mn()) {
                    kk.this.dq.vf();
                }
                kk.this.dq.k();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public void dq(long j, long j2) {
                kk.this.r.d(j);
                kk.this.r();
                kk.this.ir.set(j);
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public boolean dq() {
                if (!kk.this.wn.get() && !xz.d(kk.this.f2635d)) {
                    return false;
                }
                kk.this.bu();
                return true;
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public void ia() {
                kk.this.ws();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public boolean iw() {
                return kk.this.le.o();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public void kk() {
                kk.this.dq.vf();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public Map<String, Object> mn() {
                return tn.p(TTDownloadField.TT_REFER, "in_video");
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public int no() {
                return kk.this.wn.get() ? 1 : 2;
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public void o() {
                TTBaseVideoActivity tTBaseVideoActivity2 = kk.this.dq;
                if (tTBaseVideoActivity2 != null) {
                    tTBaseVideoActivity2.ig();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public void ox() {
                kk.this.ir();
                kk.this.j.set(true);
                kk.this.dq.mp();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public boolean p() {
                return kk.this.j.get();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.d
            public long s() {
                return kk.this.ir.get();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bu() {
        this.kk.s(0);
        this.dq.nh();
        this.nh.ox();
        this.dq.ia(2);
    }

    public static int d(j jVar) {
        return 10;
    }

    private void dq(int i, long j, long j2, boolean z) {
        if (z) {
            if (i <= 3) {
                ij();
            }
        } else if (i > 0) {
            long j3 = i * 1000;
            if (j3 > j) {
                return;
            }
            long j4 = j3 - j2;
            if (j4 <= 0 || Math.abs(j4) > 3200) {
                return;
            }
            ij();
        }
    }

    public static boolean dq(j jVar) {
        return xz.dq(jVar);
    }

    private void ij() {
        this.er.set(true);
        this.nh.dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ws() {
        this.ce.set(false);
    }

    private void xi() {
        if (this.ce.get()) {
            fd();
            z();
        }
    }

    private void z() {
        if (this.er.get()) {
            long j = this.f2644c - 1;
            this.f2644c = j;
            if (j != 0) {
                if (j > 0) {
                    this.nh.dq(j);
                }
            } else {
                this.nh.dq(j);
                this.wn.set(true);
                if (mn()) {
                    this.nh.dq(this.wp);
                } else {
                    this.nh.dq(this.ia);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
        xi();
        if (uh.fw(this.f2635d)) {
            this.dq.ox(0);
            if (e() > nh() || this.f2637f) {
                com.bytedance.sdk.openadsdk.core.mn.p.dq = 0;
            }
            com.bytedance.sdk.openadsdk.core.mn.p.dq = wn();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.kk.s(8);
        this.kk.iw(0);
        this.gh.s(true);
        this.gh.ox(true);
        this.gh.d(true);
        this.gh.dq(true);
        this.dq.t();
    }

    public void fd() {
        if (this.er.get()) {
            return;
        }
        int op = (int) this.r.op();
        int le = (int) this.r.le();
        int ox = xz.ox(this.f2635d);
        if (ox == 1) {
            dq(xz.p(this.f2635d), le, this.op.ox() * 1000, false);
        } else if (ox == 2) {
            dq((int) (le * 0.001f * 0.01f * xz.p(this.f2635d)), le, op, false);
        } else {
            if (ox != 3) {
                return;
            }
            dq(ce(), le, op, true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean ha() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ir() {
        super.ir();
        this.gh.dq(false, "奖励已领取", "跳过", false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void jw() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar = this.wp;
        if (sVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.vf);
            ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.wp.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.vf);
        }
        com.bytedance.sdk.openadsdk.core.d.mn mnVar = this.ia;
        if (mnVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) mnVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.vf);
            ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.ia.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.vf);
        }
        com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.component.reward.business.dq.dq(this.dq, this.f2635d, this.vf);
        this.nh = dqVar;
        dqVar.dq(this.dq.u().getSceneFrameContainer(), this.dq.u().getSceneFrame());
        this.ce.set(xz.ox(this.f2635d) != 0);
        if (this.ce.get()) {
            kx();
            this.fw = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void r() {
        super.r();
        this.fw = false;
        boolean z = ((int) (this.r.op() / 1000)) >= this.op.s() || this.dq.by();
        if (this.r.c()) {
            this.gh.dq(false, null, "跳过", false, true);
            return;
        }
        int n = this.r.n();
        if (this.r.dq()) {
            return;
        }
        this.gh.dq(false, n + "s", z ? "跳过" : "", false, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.video.d.d u() {
        return this.vf;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean v() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void wp() {
        super.wp();
        this.gh.dq(false, "奖励已领取", "跳过", false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return true;
    }
}
