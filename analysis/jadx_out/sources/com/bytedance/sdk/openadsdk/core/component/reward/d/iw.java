package com.bytedance.sdk.openadsdk.core.component.reward.d;

import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.p.kk;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.d.dq;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.iw.ox.fw;
import java.io.File;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw {

    /* renamed from: f, reason: collision with root package name */
    private com.bykv.vk.openvk.component.video.api.ox.p f2562f;
    long ia;
    private FrameLayout ig;
    boolean iw;
    private com.bytedance.sdk.openadsdk.core.d.dq jy;
    com.bykv.vk.openvk.component.video.api.p.ox mn;
    private String mp;
    private j no;
    private TTBaseVideoActivity o;
    protected long p;
    private long q;
    protected int s;
    private final int kk = MediaPlayer.MEDIA_PLAYER_OPTION_REND_FIRST_FRAME_TIME;
    boolean dq = false;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f2561d = false;
    protected boolean ox = false;
    private boolean fw = false;

    public iw(TTBaseVideoActivity tTBaseVideoActivity) {
        this.o = tTBaseVideoActivity;
    }

    private void t() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null || oxVar.fw() == null) {
            return;
        }
        this.ia = this.mn.no();
        if (this.mn.fw().o() || !this.mn.fw().kk()) {
            this.mn.iw();
            this.mn.kk();
            this.f2561d = true;
        }
    }

    public double bl() {
        if (pa.q(this.no) == null) {
            return 0.0d;
        }
        double iw = pa.iw(this.no);
        if (this.no.kr() != 2 || iw <= 60.0d) {
            return iw;
        }
        return 60.0d;
    }

    public boolean c() {
        com.bytedance.sdk.openadsdk.core.video.d.dq u = u();
        if (u == null) {
            return false;
        }
        return u.jw();
    }

    public long cd() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.ig();
        }
        return 0L;
    }

    public boolean ce() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null) {
            return false;
        }
        return oxVar.ox();
    }

    public void d(long j) {
        this.p = j;
        com.bytedance.sdk.openadsdk.core.video.d.dq u = u();
        if (!mp() && ig()) {
            this.s = (int) Math.max(0L, Math.round(bl() - ((this.p + (pa.f(this.no).iw() * 1000.0d)) / 1000.0d)));
        } else if (u == null || (this.o.yy() instanceof kk)) {
            this.s = Math.max(0, (int) (bl() - (this.p / 1000)));
        } else {
            this.s = Math.max(0, (int) (bl() - (u.by() / 1000)));
        }
    }

    public void d(boolean z) {
        if (this.mn == null) {
            return;
        }
        int i = z ? wn() ? 2 : 4 : wn() ? 0 : 1;
        fw.dq dqVar = new fw.dq();
        dqVar.d(cd());
        long i2 = i();
        dqVar.ox(i2);
        long fw = fw();
        if (u() != null) {
            dqVar.dq(u().dq(fw, i2));
        }
        dqVar.ox(1 ^ (wn() ? 1 : 0));
        dqVar.p(i);
        com.bytedance.sdk.openadsdk.iw.d.d.p(this.mn.cd(), dqVar);
    }

    public boolean d() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        return (oxVar == null || oxVar.fw() == null || !this.mn.fw().mp()) ? false : true;
    }

    public void dq(float f2) {
        if (this.mn.fw() != null) {
            this.mn.fw().dq(f2);
        }
    }

    public void dq(int i) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.dq(i);
        }
    }

    public void dq(long j) {
        this.ia = j;
    }

    public void dq(long j, boolean z) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null || this.ox) {
            return;
        }
        if (j == 0) {
            oxVar.ia();
        } else {
            oxVar.dq(j);
            this.mn.d(z);
        }
    }

    public void dq(FrameLayout frameLayout, String str, boolean z) {
        if (this.fw) {
            return;
        }
        this.fw = true;
        this.ig = frameLayout;
        this.mp = str;
        this.iw = z;
        if (z) {
            this.mn = new com.bytedance.sdk.openadsdk.core.component.reward.iw.d(this.o, frameLayout, this.no, this.jy);
        } else {
            this.mn = new com.bytedance.sdk.openadsdk.core.component.reward.iw.dq(this.o, frameLayout, this.no, this.jy);
        }
        this.s = (int) bl();
    }

    public void dq(TTBaseVideoActivity tTBaseVideoActivity) {
        if (!k() || tTBaseVideoActivity == null) {
            return;
        }
        tTBaseVideoActivity.d(iw(), true);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this.jy = dqVar;
    }

    public void dq(j jVar) {
        this.no = jVar;
    }

    public void dq(j jVar, com.bykv.vk.openvk.component.video.api.p.ox oxVar, com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        this.no = jVar;
        this.mn = oxVar;
        this.f2562f = pVar;
    }

    public void dq(dq.InterfaceC0195dq interfaceC0195dq) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar instanceof com.bytedance.sdk.openadsdk.core.video.d.dq) {
            ((com.bytedance.sdk.openadsdk.core.video.d.dq) oxVar).dq(interfaceC0195dq);
        }
    }

    public void dq(Map<String, Object> map) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.dq(map);
        }
    }

    public void dq(boolean z) {
        this.f2561d = z;
    }

    public void dq(boolean z, TTBaseVideoActivity tTBaseVideoActivity, boolean z2) {
        boolean z3;
        long j;
        boolean z4;
        if (!z2 || z || this.o.ds()) {
            return;
        }
        if (!ox()) {
            t();
            dq(tTBaseVideoActivity);
            return;
        }
        com.bytedance.sdk.openadsdk.core.video.d.d u = this.o.yy().u();
        if (u != null) {
            z3 = u.p();
            j = u.s();
            z4 = u.iw();
        } else {
            z3 = false;
            j = 0;
            z4 = false;
        }
        if (!z3) {
            dq(j, z4);
        } else {
            t();
            dq(tTBaseVideoActivity);
        }
    }

    public boolean dq() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        return (oxVar == null || oxVar.fw() == null || !this.mn.fw().kk()) ? false : true;
    }

    public boolean dq(long j, boolean z, int i) {
        if (this.mn == null || pa.q(this.no) == null) {
            return false;
        }
        com.bykv.vk.openvk.component.video.api.ox.p pVar = this.f2562f;
        if (pVar == null) {
            File file = new File(com.bytedance.sdk.openadsdk.h.kk.dq(this.no.mx()).dq(), pa.mn(this.no));
            if (file.exists() && file.length() > 0) {
                this.dq = true;
            }
            pVar = pa.dq(1, this.no);
            pVar.d(this.no.fx());
            FrameLayout frameLayout = this.ig;
            pVar.d(frameLayout == null ? 100 : frameLayout.getWidth());
            FrameLayout frameLayout2 = this.ig;
            pVar.ox(frameLayout2 != null ? frameLayout2.getHeight() : 100);
            pVar.ox(this.no.dn());
            pVar.dq(j);
            pVar.d(z);
            if (o.dq(this.no)) {
                pVar.dq(true);
            }
        }
        return this.mn.dq(pVar);
    }

    public boolean e() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        return oxVar != null && oxVar.fw() == null;
    }

    public com.bykv.vk.openvk.component.video.api.p.d er() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.cd();
        }
        return null;
    }

    public int f() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.jy();
        }
        return 0;
    }

    public long fw() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        return oxVar != null ? oxVar.no() : this.ia;
    }

    public int gh() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.mp();
        }
        return 0;
    }

    public void h() {
        try {
            this.o.q(1);
        } catch (Throwable th) {
            ig.p("TTBaseVideoActivity", "onPause throw Exception :" + th.getMessage());
        }
    }

    public long i() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null) {
            return 0L;
        }
        return this.mn.ig() + oxVar.q();
    }

    public void ia() {
        if (this.mn != null && d()) {
            this.mn.d(true);
        }
    }

    public boolean ig() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.p();
        }
        return false;
    }

    public long ir() {
        if (ig()) {
            double iw = pa.f(this.no).iw() * 1000.0d * u().xz();
            long j = this.p;
            if (iw - j > 210.0d) {
                long j2 = (long) (j + iw);
                this.q = j2;
                return j2;
            }
        }
        return Math.max(this.p, this.q);
    }

    public long iw() {
        return this.ia;
    }

    public com.bykv.vk.openvk.component.video.api.p.ox j() {
        return this.mn;
    }

    public void ji() {
        try {
            this.o.jy(1);
        } catch (Throwable th) {
            ig.p("TTBaseVideoActivity", "onContinue throw Exception :" + th.getMessage());
        }
    }

    public long jy() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.q();
        }
        return 0L;
    }

    public boolean k() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            if (oxVar.fw() != null) {
                com.bykv.vk.openvk.component.video.api.dq fw = this.mn.fw();
                if (fw.q() || fw.jy()) {
                    ((com.bytedance.sdk.openadsdk.core.video.d.dq) this.mn).v();
                    return true;
                }
            } else if (s()) {
                dq(false);
                ((com.bytedance.sdk.openadsdk.core.video.d.dq) this.mn).v();
                return true;
            }
        }
        return false;
    }

    public void kk() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.o();
        }
    }

    public void kx() {
        mn();
    }

    public void l() {
        try {
            com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
            if (oxVar instanceof com.bytedance.sdk.openadsdk.core.video.d.dq) {
                ((com.bytedance.sdk.openadsdk.core.video.d.dq) oxVar).bu();
            }
        } catch (Throwable unused) {
        }
    }

    public long le() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.q();
        }
        return 0L;
    }

    public void mn() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null) {
            return;
        }
        oxVar.kk();
        this.mn = null;
    }

    public boolean mp() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.s();
        }
        return false;
    }

    public int n() {
        return this.s;
    }

    public void nh() {
        fw.dq dqVar = new fw.dq();
        long i = i();
        long fw = fw();
        if (u() != null) {
            dqVar.dq(u().dq(fw, i));
        }
        dqVar.ox(i);
        dqVar.d(cd());
        dqVar.s(3);
        dqVar.iw(gh());
        com.bytedance.sdk.openadsdk.iw.d.d.dq(er(), dqVar, this.o.ia());
    }

    public void no() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.d();
        }
    }

    public void o() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null || this.ox) {
            return;
        }
        oxVar.iw();
    }

    public void ob() {
        this.ox = true;
    }

    public long op() {
        long ir = ir();
        com.bytedance.sdk.openadsdk.core.video.d.dq u = u();
        return (u == null || !u.u()) ? ir : u.dq(this.p, le());
    }

    public void ox(boolean z) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.d(z);
        }
    }

    public boolean ox() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        return (oxVar == null || oxVar.fw() == null || !this.mn.fw().q()) ? false : true;
    }

    public boolean p() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        return oxVar != null && oxVar.le();
    }

    public boolean q() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar != null) {
            return oxVar.gh();
        }
        return false;
    }

    public void r() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null || oxVar.fw() == null) {
            return;
        }
        this.mn.fw().p();
    }

    public boolean s() {
        return this.f2561d;
    }

    public com.bytedance.sdk.openadsdk.core.video.d.dq u() {
        return (com.bytedance.sdk.openadsdk.core.video.d.dq) j();
    }

    public boolean vf() {
        return this.ox;
    }

    public boolean wn() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.mn;
        if (oxVar == null || oxVar.fw() == null) {
            return false;
        }
        return this.mn.fw().iw();
    }

    public boolean wp() {
        return this.mn != null;
    }
}
