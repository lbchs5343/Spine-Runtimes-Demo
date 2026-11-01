package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq;
import com.bytedance.sdk.openadsdk.core.component.reward.d.dq;
import com.bytedance.sdk.openadsdk.core.component.reward.d.iw;
import com.bytedance.sdk.openadsdk.core.component.reward.d.ox;
import com.bytedance.sdk.openadsdk.core.component.reward.d.p;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.layout.RewardAuthToastLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.layout.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.layout.s;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.ia;
import com.bytedance.sdk.openadsdk.core.component.reward.p.kk;
import com.bytedance.sdk.openadsdk.core.component.reward.p.no;
import com.bytedance.sdk.openadsdk.core.component.reward.view.saas.SaasAuthRewardDialog;
import com.bytedance.sdk.openadsdk.core.d.dq.ox.ox;
import com.bytedance.sdk.openadsdk.core.d.mn;
import com.bytedance.sdk.openadsdk.core.dislike.ui.dq;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.mn.d;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kx;
import com.bytedance.sdk.openadsdk.core.r.bl;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.video.d.dq;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.kk.dq.ox;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class TTBaseVideoActivity extends Activity implements e.dq, d {
    AbstractEndCardFrameLayout bl;
    private int bu;
    protected int by;

    /* renamed from: c, reason: collision with root package name */
    p f2519c;
    private AtomicBoolean cc;
    protected final AtomicBoolean cd;
    protected ox ce;
    private com.bytedance.sdk.openadsdk.core.d.d cv;

    /* renamed from: d, reason: collision with root package name */
    protected final e f2520d;
    private dq.d dc;
    protected final String dq;
    protected final com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq ds;

    /* renamed from: e, reason: collision with root package name */
    protected int f2521e;
    protected com.bytedance.sdk.openadsdk.core.component.reward.p.dq er;

    /* renamed from: f, reason: collision with root package name */
    protected final AtomicBoolean f2522f;
    private float fd;
    protected final AtomicBoolean fw;
    protected final AtomicBoolean gh;
    protected mn gx;
    com.bytedance.sdk.openadsdk.core.component.reward.layout.d h;
    private final AtomicBoolean ha;
    protected boolean i;
    protected final AtomicBoolean ia;
    protected final AtomicBoolean ig;
    private int ij;
    private long io;
    dq ir;
    protected final ConcurrentHashMap<Integer, Boolean> iw;
    protected j j;
    s ji;
    private dq.InterfaceC0144dq jw;
    protected final AtomicBoolean jy;
    protected boolean k;
    protected final AtomicBoolean kk;
    RewardFullBaseLayout kx;
    protected com.bytedance.sdk.openadsdk.core.dislike.ui.dq l;
    protected boolean le;
    private com.bytedance.sdk.openadsdk.core.component.reward.s.p m;
    public final AtomicBoolean mn;
    protected final AtomicBoolean mp;
    com.bytedance.sdk.openadsdk.core.component.reward.d.s n;
    protected int nh;
    protected final AtomicBoolean no;
    protected final AtomicBoolean o;
    protected String ob;
    com.bytedance.sdk.openadsdk.core.component.reward.d.d op;
    protected final AtomicBoolean ox;
    protected final AtomicBoolean p;
    private long pa;
    protected final AtomicBoolean q;
    protected final AtomicBoolean r;
    protected final ConcurrentHashMap<Integer, Boolean> s;
    protected int t;
    iw u;
    protected int uh;
    protected com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq v;
    protected String vf;
    private final AtomicBoolean vw;
    private final dq.InterfaceC0174dq wi;
    protected TTBaseVideoActivity wn;
    protected boolean wp;
    private int ws;
    private Double xi;
    private com.bytedance.sdk.openadsdk.h.dq xv;
    protected com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p xz;
    protected dq.InterfaceC0195dq yy;
    private d.dq z;

    public TTBaseVideoActivity() {
        this.dq = kx() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.f2520d = new e(Looper.getMainLooper(), this);
        this.ox = new AtomicBoolean(false);
        this.p = new AtomicBoolean(false);
        this.s = new ConcurrentHashMap<>();
        this.iw = new ConcurrentHashMap<>();
        this.mn = new AtomicBoolean(false);
        this.ia = new AtomicBoolean(false);
        this.kk = new AtomicBoolean(false);
        this.vw = new AtomicBoolean(false);
        this.ha = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.no = new AtomicBoolean(false);
        this.ig = new AtomicBoolean(false);
        this.mp = new AtomicBoolean(false);
        this.q = new AtomicBoolean(false);
        this.jy = new AtomicBoolean(false);
        this.f2522f = new AtomicBoolean(false);
        this.fw = new AtomicBoolean(false);
        this.cd = new AtomicBoolean(false);
        this.gh = new AtomicBoolean(false);
        this.r = new AtomicBoolean(false);
        this.f2521e = -1;
        this.bu = 1;
        this.xi = null;
        this.pa = 0L;
        this.by = 0;
        this.uh = 0;
        this.yy = new dq.InterfaceC0195dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void d() {
                TTBaseVideoActivity.this.f2520d.removeMessages(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
                TTBaseVideoActivity.this.fw();
                TTBaseVideoActivity.this.dq(false, false);
                TTBaseVideoActivity.this.u.dq(6);
                TTBaseVideoActivity.this.u.kk();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void dq() {
                TTBaseVideoActivity.this.f2520d.removeMessages(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
                TTBaseVideoActivity.this.fw();
                if (!TTBaseVideoActivity.this.u.mp()) {
                    if (TTBaseVideoActivity.this.io()) {
                        iw iwVar = TTBaseVideoActivity.this.u;
                        iwVar.d(iwVar.ir());
                    } else {
                        iw iwVar2 = TTBaseVideoActivity.this.u;
                        iwVar2.d(iwVar2.op() + 1000);
                    }
                }
                if (TTBaseVideoActivity.this.er.iw() && !TTBaseVideoActivity.this.u.mp()) {
                    TTBaseVideoActivity.this.ji.d(true);
                }
                TTBaseVideoActivity.this.dq();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void dq(int i, String str) {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                if (tTBaseVideoActivity.le) {
                    tTBaseVideoActivity.f2520d.removeMessages(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
                    TTBaseVideoActivity.this.q();
                    TTBaseVideoActivity.this.u.dq(5);
                    TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                    tTBaseVideoActivity2.d(tTBaseVideoActivity2.u.d());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void dq(long j, long j2) {
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                if (!tTBaseVideoActivity.le && tTBaseVideoActivity.u.d()) {
                    TTBaseVideoActivity.this.u.o();
                }
                boolean z = true;
                if (TTBaseVideoActivity.this.op.er()) {
                    TTBaseVideoActivity.this.u.ox(true);
                    return;
                }
                TTBaseVideoActivity.this.f2520d.removeMessages(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
                if (j != TTBaseVideoActivity.this.u.op()) {
                    TTBaseVideoActivity.this.fw();
                }
                if (TTBaseVideoActivity.this.u.d() || j2 == j) {
                    TTBaseVideoActivity.this.u.d(j);
                    if (TTBaseVideoActivity.this.jw()) {
                        TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                        s sVar = tTBaseVideoActivity2.ji;
                        String valueOf = String.valueOf(tTBaseVideoActivity2.u.n());
                        int op = (int) (TTBaseVideoActivity.this.u.op() / 1000);
                        if (j != j2 && !TTBaseVideoActivity.this.u.c()) {
                            z = false;
                        }
                        sVar.dq(valueOf, op, 0, z);
                    }
                    TTBaseVideoActivity.this.ox(0);
                    TTBaseVideoActivity.this.t();
                    TTBaseVideoActivity.this.er.r();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
            public void ox() {
                com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar = TTBaseVideoActivity.this.xz;
                if (pVar == null || pVar.dq() == null) {
                    return;
                }
                TTBaseVideoActivity.this.xz.dq().dq();
            }
        };
        this.v = new com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.12
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int d() {
                return TTBaseVideoActivity.this.er.t().d();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void d(int i) {
                TTBaseVideoActivity.this.er.t().d(i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void d(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                o oVar;
                if ((i == 1 || i == 2) && (oxVar instanceof k)) {
                    k kVar = (k) oxVar;
                    oVar = new o();
                    oVar.dq(kVar.dq);
                    oVar.d(kVar.f3469d);
                    oVar.ox(kVar.ox);
                    oVar.p(kVar.p);
                    oVar.dq(kVar.s);
                    oVar.d(kVar.iw);
                    oVar.dq(kVar.jy);
                } else {
                    oVar = null;
                }
                if (i == 2) {
                    TTBaseVideoActivity.this.gx.dq(view, oVar);
                }
                if (i == 1) {
                    TTBaseVideoActivity.this.gx.dq(view, oVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long dq() {
                return TTBaseVideoActivity.this.er.t().dq();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(float f2) {
                TTBaseVideoActivity.this.er.t().dq(f2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i) {
                TTBaseVideoActivity.this.er.t().dq(i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void dq(int i, String str) {
                TTBaseVideoActivity.this.er.t().dq(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(View view) {
                TTBaseVideoActivity.this.dq(2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                o oVar;
                if (TTBaseVideoActivity.this.gx != null) {
                    if (oxVar instanceof k) {
                        k kVar = (k) oxVar;
                        oVar = new o();
                        oVar.dq(kVar.dq);
                        oVar.d(kVar.f3469d);
                        oVar.ox(kVar.ox);
                        oVar.p(kVar.p);
                        oVar.dq(kVar.s);
                        oVar.d(kVar.iw);
                        oVar.dq(kVar.jy);
                    } else {
                        oVar = null;
                    }
                    TTBaseVideoActivity.this.gx.dq(view, oVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq
            public void dq(ViewGroup viewGroup) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public long getActualPlayDuration() {
                return TTBaseVideoActivity.this.er.t().getActualPlayDuration();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public int ox() {
                return TTBaseVideoActivity.this.er.t().ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void p() {
                TTBaseVideoActivity.this.er.t().p();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void s() {
                TTBaseVideoActivity.this.er.t().s();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
            public void setPauseFromExpressView(boolean z) {
                TTBaseVideoActivity.this.er.t().setPauseFromExpressView(z);
            }
        };
        this.wi = new dq.InterfaceC0174dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.15
            @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
            public boolean bl() {
                return false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
            public com.bytedance.sdk.openadsdk.core.multipro.d.dq op() {
                com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
                iw iwVar = TTBaseVideoActivity.this.u;
                if (iwVar != null) {
                    dqVar.mn = iwVar.fw();
                    dqVar.dq = TTBaseVideoActivity.this.u.dq();
                    dqVar.ia = TTBaseVideoActivity.this.i;
                }
                return dqVar;
            }
        };
        this.ds = new com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.d(new dq.InterfaceC0142dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.16
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public j d() {
                return TTBaseVideoActivity.this.j;
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public RewardFullBaseLayout dq() {
                return TTBaseVideoActivity.this.kx;
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public TTBaseVideoActivity getActivity() {
                return TTBaseVideoActivity.this.wn;
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public void ia() {
                TTBaseVideoActivity.this.q(2);
                TTBaseVideoActivity.this.ds.ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public boolean iw() {
                return TTBaseVideoActivity.this.gh.get();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public boolean mn() {
                return TTBaseVideoActivity.this.v();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public int ox() {
                return TTBaseVideoActivity.this.by;
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public int p() {
                return TTBaseVideoActivity.this.uh;
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.dq.InterfaceC0142dq
            public int s() {
                return TTBaseVideoActivity.this.er.iw(true);
            }
        });
        this.cc = new AtomicBoolean(true);
    }

    private void bu() {
        this.kx = new RewardFullBaseLayout(this.wn);
        this.n = new com.bytedance.sdk.openadsdk.core.component.reward.d.s(this.wn);
        this.op = new com.bytedance.sdk.openadsdk.core.component.reward.d.d(this.wn);
        this.ir = new com.bytedance.sdk.openadsdk.core.component.reward.d.dq(this.wn);
        this.u = new iw(this.wn);
        this.f2519c = new p(this.wn);
        this.ce = new ox(this.wn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cc() {
        if (e()) {
            pa();
            this.u.dq(false, this, this.p.getAndSet(true));
        }
    }

    private void cv() {
        if (this.u.u().vw()) {
            if (this.j.we() == 9 && this.u.ce()) {
                this.ji.d(true);
                this.u.nh();
            } else {
                this.ji.d(false);
            }
            iw(1);
            return;
        }
        this.ji.d(true);
        if (this.u.u().xz() < 2) {
            dc();
        }
        if (this.j.we() == 8) {
            iw(1);
        } else {
            gh();
        }
    }

    private void d(com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        int ce = this.er.ce();
        TTBaseVideoActivity tTBaseVideoActivity = this.wn;
        if (tTBaseVideoActivity != null && tTBaseVideoActivity.getIntent() != null) {
            this.wn.getIntent().putExtra("remainTime", ce);
        }
        if (ce <= 0) {
            d();
        } else {
            if (dq(oVar)) {
                return;
            }
            oVar.d();
        }
    }

    private void dc() {
        if (gh.p(this.j)) {
            this.u.ob();
            return;
        }
        mp();
        if (!uh.fw(this.j)) {
            com.bykv.vk.openvk.component.video.api.p.ox j = uh().j();
            if (!(j instanceof com.bytedance.sdk.openadsdk.core.video.dq.dq) || !((com.bytedance.sdk.openadsdk.core.video.dq.dq) j).u()) {
                ox(0);
                this.n.dq(false, null, null, true, true);
                if (uh.mn(this.j) && this.u.le() >= uh.o(this.j)) {
                    ox(2);
                }
                this.er.ir();
            }
        }
        mc();
        if (uh.mn(this.j)) {
            ox(2);
        }
        this.er.ir();
    }

    private boolean fd() {
        if (this.j != null && com.bytedance.sdk.openadsdk.core.live.d.dq().d(this.j)) {
            String rq = this.j.rq();
            if (TextUtils.isEmpty(rq)) {
                return false;
            }
            try {
                return new JSONObject(rq).optInt("saas_play_time_type") == 1;
            } catch (JSONException e2) {
                ig.d("TTBaseVideoActivity", e2);
            }
        }
        return false;
    }

    private void ij() {
        j jVar = this.j;
        if (jVar == null || this.kx == null) {
            return;
        }
        String rq = jVar.rq();
        if (TextUtils.isEmpty(rq)) {
            return;
        }
        try {
            int optInt = new JSONObject(rq).optInt("auth_reward_gold");
            if (optInt > 0) {
                this.kx.addView(new RewardAuthToastLayout(this.wn, optInt));
            }
        } catch (JSONException e2) {
            ig.d("TTBaseVideoActivity", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean io() {
        com.bykv.vk.openvk.component.video.api.p.ox j = uh().j();
        if (j instanceof com.bytedance.sdk.openadsdk.core.video.d.dq) {
            return ((com.bytedance.sdk.openadsdk.core.video.d.dq) j).u();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean jw() {
        return (this.j.gv() == 180 && uh.fw(this.j) && com.bytedance.sdk.openadsdk.h.o.dq(this.j) && this.ji.kk() == 7) ? false : true;
    }

    private int m() {
        com.bykv.vk.openvk.component.video.api.p.ox j = uh().j();
        if (j instanceof com.bytedance.sdk.openadsdk.core.video.d.dq) {
            return ((com.bytedance.sdk.openadsdk.core.video.d.dq) j).xz();
        }
        return 0;
    }

    private void mc() {
        this.ig.set(true);
    }

    private void ox(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        final boolean[] zArr = {false};
        com.bytedance.sdk.openadsdk.kk.dq.ox.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.kk.dq.ox.dq
            public void dq() {
                zArr[0] = true;
                oVar.d();
            }

            @Override // com.bytedance.sdk.openadsdk.kk.dq.ox.dq
            public void dq(int i) {
                zArr[0] = true;
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this.wn;
                if (tTBaseVideoActivity != null && tTBaseVideoActivity.getIntent() != null) {
                    TTBaseVideoActivity.this.wn.getIntent().putExtra("remainTime", i);
                }
                if (i <= 0 || !TTBaseVideoActivity.this.dq(oVar)) {
                    oVar.d();
                }
            }
        });
        d("onClickBrowseClose");
        new CountDownTimer(1000L, 1000L) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.5
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (zArr[0]) {
                    return;
                }
                TTBaseVideoActivity.this.d();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }
        }.start();
    }

    private void pa() {
        if (this.op.er() || !this.le || ds() || !this.er.yy() || this.u.vf()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if ((dqVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.ox) || (dqVar instanceof no)) {
            return;
        }
        this.f2520d.removeMessages(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        this.f2520d.sendEmptyMessageDelayed(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX, PushUIConfig.dismissTime);
    }

    private boolean wi() {
        d.dq dqVar = this.z;
        return dqVar != null && dqVar.p();
    }

    private void ws() {
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dq = com.bytedance.sdk.openadsdk.core.component.reward.p.p.dq(this.wn, this.j);
        this.er = dq;
        if (dq == null) {
            ig.p("TTBaseVideoActivity", "initAdType failed , finish activity");
            finish();
            return;
        }
        dq.getClass();
        if (!bl.p(this.j, true)) {
            this.i = wp.d().dq(this.j, this.nh);
        }
        this.er.dq(this.n, this.u, this.op, this.f2519c, this.ir);
        this.er.dq(this.dq, this.i, kx());
        this.er.ia();
    }

    private void xi() {
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.j, getClass().getName());
        this.nh = c.kk(this.j);
        this.fd = this.j.es();
        this.bu = this.j.ho();
        uh.dq(this.j, false);
        uh.d(this.j, false);
        com.bytedance.sdk.openadsdk.core.mn.p.ox = false;
        com.bytedance.sdk.openadsdk.core.mn.p.f3170d = 0;
        com.bytedance.sdk.openadsdk.core.mn.p.dq = 0;
        com.bytedance.sdk.openadsdk.core.mn.p.p = false;
    }

    private void xv() {
        final View view;
        try {
            view = getWindow().getDecorView();
        } catch (Throwable unused) {
            view = null;
        }
        if (view == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    view.findViewById(R.id.statusBarBackground).setVisibility(8);
                } catch (Exception unused2) {
                }
            }
        });
        view.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    view.findViewById(R.id.statusBarBackground).setVisibility(8);
                } catch (Exception unused2) {
                }
            }
        }, 300L);
    }

    private void z() {
        final View view;
        try {
            requestWindowFeature(1);
            getWindow().addFlags(16777216);
            getWindow().addFlags(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            wp.dq(this.wn);
            if (!this.er.l()) {
                getWindow().addFlags(1024);
            }
        } catch (Throwable unused) {
        }
        try {
            view = getWindow().getDecorView();
        } catch (Throwable unused2) {
            view = null;
        }
        if (view == null) {
            return;
        }
        view.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ce.d() && TTBaseVideoActivity.this.bu == 1 && TTBaseVideoActivity.this.wn.getResources().getConfiguration().orientation == 1) {
                        if (Math.abs(ce.kk((Context) TTBaseVideoActivity.this.wn) - TTBaseVideoActivity.this.getWindow().getDecorView().getHeight()) == 0 && view.isAttachedToWindow()) {
                            View view2 = view;
                            view2.setPadding(view2.getPaddingLeft(), view.getPaddingTop() + ((int) ce.no(TTBaseVideoActivity.this.wn)), view.getPaddingRight(), view.getPaddingBottom());
                        }
                    }
                } catch (Throwable unused3) {
                }
            }
        });
    }

    public int bl() {
        return 0;
    }

    public boolean by() {
        return this.f2519c.ia() || this.op.er();
    }

    public void c() {
        boolean z = !this.i;
        this.i = z;
        this.er.s(z);
    }

    public void cd() {
        if (!io()) {
            gh();
        }
        this.u.no();
    }

    public void ce() {
        this.f2519c.iw();
    }

    public void d() {
        finish();
    }

    public void d(int i) {
        if (i <= 0) {
            this.n.dq(false, null, null, true, true);
        } else {
            this.f2520d.sendEmptyMessageDelayed(600, i);
        }
    }

    public void d(Intent intent) {
    }

    public void d(Bundle bundle) {
        if (bundle != null) {
            this.vf = bundle.getString("multi_process_key");
            this.k = bundle.getBoolean("is_preload");
            this.wp = bundle.getBoolean("is_adm");
            this.f2521e = bundle.getInt("key_video_cache_callback", -1);
            this.ob = bundle.getString("rit_scene");
            String string = bundle.getString("_client_bidding_aution_price");
            this.xi = TextUtils.isEmpty(string) ? null : Double.valueOf(Double.parseDouble(string));
            this.i = bundle.getBoolean("is_mute");
            long j = bundle.getLong("video_current");
            if (j > 0) {
                this.u.dq(j);
            }
        }
    }

    public void d(String str) {
        com.bytedance.sdk.openadsdk.core.c bl = this.op.bl();
        if (bl == null || isFinishing()) {
            d();
            return;
        }
        try {
            bl.d(str, (JSONObject) null);
        } catch (Exception e2) {
            d();
            e2.printStackTrace();
        }
    }

    public void d(boolean z) {
        Message message = new Message();
        message.what = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        this.f2520d.sendMessageDelayed(message, z ? 2000L : 0L);
    }

    public void d(boolean z, boolean z2) {
        int i = 1;
        if (z) {
            Map<String, Object> ia = ia();
            this.vw.set(true);
            if (!this.ha.get()) {
                try {
                    String el = this.j.el();
                    Integer remove = com.bytedance.sdk.openadsdk.core.mn.p.s.remove(el);
                    Integer valueOf = remove == null ? 1 : Integer.valueOf(remove.intValue() + 1);
                    com.bytedance.sdk.openadsdk.core.mn.p.s.put(el, valueOf);
                    ia.put("meta_show_count", valueOf);
                    String o = c.o(this.j);
                    Integer remove2 = com.bytedance.sdk.openadsdk.core.mn.p.iw.remove(o);
                    if (remove2 != null) {
                        i = Integer.valueOf(remove2.intValue() + 1);
                    }
                    com.bytedance.sdk.openadsdk.core.mn.p.iw.put(o, i);
                    ia.put("meta_origin_show_count", i);
                } catch (Throwable unused) {
                }
                ia.put("cache_strategy", Integer.valueOf(com.bytedance.sdk.openadsdk.core.component.reward.dq.p.dq(kx())));
                ia.put("is_adm", Boolean.valueOf(this.wp));
                ia.put("is_play_again", Boolean.valueOf(ji()));
                ia.put("if_cache_callback", Integer.valueOf(this.f2521e == 1 ? 1 : 0));
                ia.put("src_req_id", this.j.hz());
                ia.put("is_map", Boolean.valueOf(this.j.ml()));
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.j, this.dq, ia, this.xi);
                com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
            }
        }
        if (z2) {
            if (!bl.p(this.j, true)) {
                if (this.cd.getAndSet(true)) {
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(this.j, "stats_callback_repeat");
                } else {
                    p("onAdShow");
                }
            }
            if (this.er.iw()) {
                this.ji.mn();
            }
            com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar = this.xz;
            if (pVar != null && pVar.dq() != null) {
                this.xz.dq().p();
            }
        }
        ox(false);
    }

    public boolean d(long j, boolean z) {
        this.u.dq(this.gx);
        this.u.dq(this.er.cd(), this.dq, kx());
        this.u.dq(ia());
        if (this.er.iw()) {
            this.ji.dq(this.u.j());
        }
        this.u.dq(this.yy);
        boolean dq = dq(j, z);
        if (dq && !z) {
            this.t = (int) (System.currentTimeMillis() / 1000);
        }
        return dq;
    }

    public void dq() {
        if (io()) {
            cv();
            return;
        }
        if (!this.u.ce() && !this.u.mp()) {
            dc();
        }
        iw(1);
    }

    public void dq(float f2, float f3, float f4, float f5, int i) {
        s sVar = this.ji;
        if (sVar == null || sVar.dq() == null) {
            return;
        }
        int measuredWidth = this.ji.dq().getMeasuredWidth();
        int measuredHeight = this.ji.dq().getMeasuredHeight();
        if (this.u.j() instanceof com.bytedance.sdk.openadsdk.core.video.d.dq ? ((com.bytedance.sdk.openadsdk.core.video.d.dq) this.u.j()).ds() : false) {
            this.ji.dq().animate().translationY(-((1.0f - f3) * measuredHeight)).setDuration(i).start();
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, f2, 1.0f, f3, measuredWidth * f4, measuredHeight * f5);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setDuration(i);
        this.ji.dq().startAnimation(scaleAnimation);
    }

    @Override // com.bytedance.sdk.openadsdk.core.mn.d
    public void dq(int i) {
        this.gh.set(true);
        s sVar = this.ji;
        if (sVar != null) {
            sVar.dq("notifyAdClicked", (JSONObject) null);
        }
        if (!this.mn.get()) {
            this.mn.set(true);
            this.f2522f.set(true);
        }
        ox(0);
        if (System.currentTimeMillis() - this.io > 50) {
            this.io = System.currentTimeMillis();
            p("onAdVideoBarClick");
        }
        o(i);
    }

    public void dq(int i, com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p pVar) {
    }

    public void dq(int i, boolean z) {
        ig(i);
        if (z) {
            no(i);
        }
    }

    public void dq(long j) {
        Message obtain = Message.obtain();
        obtain.what = 700;
        this.f2520d.sendMessageDelayed(obtain, j);
    }

    public void dq(Intent intent) {
        if (intent != null) {
            this.ob = intent.getStringExtra("rit_scene");
            this.k = intent.getBooleanExtra("is_preload", false);
            this.wp = intent.getBooleanExtra("is_adm", false);
            this.vf = intent.getStringExtra("multi_process_key");
            this.f2521e = intent.getIntExtra("key_video_cache_callback", -1);
            String stringExtra = intent.getStringExtra("_client_bidding_aution_price");
            this.xi = TextUtils.isEmpty(stringExtra) ? null : Double.valueOf(Double.parseDouble(stringExtra));
        }
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        if (i == 300) {
            ig();
            return;
        }
        if (i == 400) {
            this.u.kk();
            if (this.er.iw()) {
                this.ji.dq(true);
            }
            dq(false, true);
            return;
        }
        if (i == 500) {
            this.op.mn();
            this.op.k();
            this.u.ia();
            this.h.ox(false);
            this.ji.ox(false);
            this.ji.p();
            return;
        }
        if (i == 600) {
            this.n.dq(false, null, null, true, true);
            return;
        }
        if (i == 700) {
            this.op.c();
            return;
        }
        if (i == 1200) {
            if (uh.fw(this.j)) {
                return;
            }
            if (this.op.ir()) {
                dq(1, false);
                this.f2519c.dq(wn(), this.er.ce());
                ox(0);
            }
            this.f2520d.sendEmptyMessageDelayed(1200, 1000L);
            return;
        }
        if (i != 1300) {
            return;
        }
        this.f2520d.sendEmptyMessageDelayed(1300, 1000L);
        if (wp()) {
            return;
        }
        this.uh++;
        if (!ds()) {
            this.by++;
            dq(2, (com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p) null);
            com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p pVar = new com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p();
            pVar.dq = true;
            dq(3, pVar);
        }
        this.ds.iw();
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar) {
        oxVar.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.dq
            public boolean dq() {
                oxVar.dq(TTBaseVideoActivity.this.ia());
                oxVar.dq(TTBaseVideoActivity.this.dq);
                oxVar.dq(TTBaseVideoActivity.this.xi);
                boolean z = TTBaseVideoActivity.this.vw.get();
                TTBaseVideoActivity.this.ha.set(!z);
                return z;
            }
        });
    }

    public void dq(j jVar, com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.op.dq(jVar, dVar);
        this.f2519c.dq(jVar);
    }

    public void dq(String str) {
        this.op.dq(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.mn.d
    public void dq(boolean z) {
        if (z) {
            if (this.ji.iw()) {
                return;
            }
            this.er.p(true);
            return;
        }
        if (this.ji.iw() && this.u.er() != null) {
            this.u.er().dq(8);
        }
        this.er.p(false);
        if (this.ji.iw() || this.bu == 2 || !com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.j)) {
            return;
        }
        this.h.iw(8);
    }

    public void dq(boolean z, boolean z2) {
        this.u.d(z2);
        q();
        if (z) {
            this.jy.set(true);
            if (uh.fw(this.j)) {
                this.er.ji();
            }
            s();
            return;
        }
        if (uh.i(this.j)) {
            this.op.nh();
        } else {
            p(0);
        }
        if (this.u.vf()) {
            return;
        }
        if (uh.fw(this.j)) {
            this.er.ji();
        }
        s();
    }

    public boolean dq(long j, boolean z) {
        if (!this.u.wp()) {
            return false;
        }
        if (!z || !this.u.e()) {
            pa();
        }
        boolean dq = this.u.dq(j, this.i, this.er.k());
        if (dq && !z) {
            if (i.kk(this.j)) {
                return true;
            }
            d(true, true);
        }
        return dq;
    }

    public boolean dq(Bundle bundle) {
        j dq = c.dq(getIntent());
        this.j = dq;
        this.ir.dq(dq, this.dq, this.vf);
        if (bundle != null) {
            this.ir.dq();
        }
        com.bytedance.sdk.openadsdk.core.s.dq().d(this.j);
        if (this.j != null) {
            return true;
        }
        ig.p("TTBaseVideoActivity", "mMaterialMeta is null , no data to display ,the TTBaseVideoActivity finished !!");
        d();
        return false;
    }

    public boolean dq(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        if (!kx() || !wp.d().mn(String.valueOf(this.nh)) || this.s.containsKey(0) || isFinishing()) {
            return false;
        }
        if (System.currentTimeMillis() - this.pa < 1000) {
            return true;
        }
        this.pa = System.currentTimeMillis();
        d.dq dq = this.er.dq(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.6
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                TTBaseVideoActivity.this.q.set(true);
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.d();
                }
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.ce.dq("reward_retain_dialog_skip", tTBaseVideoActivity.z.dq(), TTBaseVideoActivity.this.z.d());
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq() {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.dq();
                }
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.ce.dq("reward_retain_dialog_cancel", tTBaseVideoActivity.z.dq(), TTBaseVideoActivity.this.z.d());
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq(int i) {
                TTBaseVideoActivity.this.dq(i, true);
                TTBaseVideoActivity.this.n.d("恭喜您，可提前" + i + "s获得奖励～");
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void ox() {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.ox();
                }
            }
        });
        this.z = dq;
        this.ce.dq("reward_retain_dialog_show", dq.dq(), this.z.d());
        return this.z.ox();
    }

    public boolean ds() {
        return !this.iw.isEmpty();
    }

    public boolean e() {
        if (wp() || this.u.vf()) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        return ((dqVar != null && !dqVar.yy()) || this.f2519c.ia() || this.op.er()) ? false : true;
    }

    public e er() {
        return this.f2520d;
    }

    public void f() {
        this.f2520d.removeMessages(700);
        this.f2520d.removeMessages(600);
    }

    public void f(int i) {
        if (i == 0) {
            return;
        }
        this.iw.put(Integer.valueOf(i), Boolean.TRUE);
    }

    @Override // android.app.Activity
    public void finish() {
        Map<String, Object> ob = ob();
        com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar = this.op;
        if (dVar != null) {
            dVar.dq(ob);
            this.op.p();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (dqVar != null) {
            dqVar.d(ob);
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.iw(this.j, this.dq, "click_close", ob);
        h();
        super.finish();
    }

    public void fw() {
        this.f2520d.removeMessages(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL);
    }

    public void fw(int i) {
        if (i == 0) {
            return;
        }
        this.iw.remove(Integer.valueOf(i));
    }

    public void gh() {
        s sVar = this.ji;
        if (sVar != null) {
            sVar.dq("videoLoopBegin", (JSONObject) null);
        }
    }

    public void gx() {
        if (this.mp.getAndSet(true)) {
            return;
        }
        iw(3);
    }

    public abstract void h();

    public void ha() {
        this.gh.set(true);
    }

    public void i() {
        s sVar;
        if (this.xz == null || (sVar = this.ji) == null || sVar.mp() == null) {
            return;
        }
        this.ji.mp().setEasyPlayableSender(this.xz.dq());
        this.xz.dq(u().getEasyPlayableContainer(), null);
    }

    public Map<String, Object> ia() {
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar;
        s sVar;
        Map<String, Object> ob = ob();
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (dqVar != null) {
            if (dqVar.iw() && (sVar = this.ji) != null) {
                kx.dq(ob, this.j, sVar.mp());
            }
            if (this.er.ds() && i.p(this.j)) {
                ob.put("openPlayableLandingPage", Boolean.valueOf(this.ji.o().booleanValue() || ((pVar = this.xz) != null && pVar.dq().s())));
            }
        }
        return ob;
    }

    public void ia(int i) {
        int i2;
        boolean z;
        if (i == 1) {
            i2 = 3;
            z = true;
        } else {
            i2 = 1;
            z = false;
        }
        this.n.dq(i2);
        if (!uh.fw(this.j)) {
            this.n.dq(false, null, null, true, true);
        }
        this.n.dq(true);
        this.n.s(true);
        this.n.iw(z);
        this.n.d(this.j.qc());
        this.f2519c.dq(this.i, this.s.containsKey(0));
        this.f2520d.sendEmptyMessage(1200);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("state", 1);
            this.ji.dq("playableStateChange", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void ig() {
        if (this.er.yy()) {
            this.u.dq(3);
            this.u.r();
            this.u.ox(true);
            dq(false, false);
        }
    }

    public void ig(int i) {
        this.er.p(i);
        ox(0);
    }

    public String ir() {
        return "";
    }

    public void iw() {
        if (this.er.yy()) {
            if (d(this.u.iw(), false)) {
                return;
            }
            dq(true, true);
        } else {
            if (i.kk(this.j)) {
                return;
            }
            d(true, true);
        }
    }

    public void iw(int i) {
        int s = s(i);
        if (i != 2) {
            if (this.f2519c.ia()) {
                return;
            }
            if (this.u.mp()) {
                this.u.no();
                return;
            }
            if (uh.fw(this.j)) {
                if (this.ig.get() && !this.mp.get()) {
                    if (s == 1 && !this.s.containsKey(0) && kx()) {
                        this.n.d((this.j.y() == 3 && uh.cd(this.j)) ? "奖励就快来了\n去详情页看看也累计时长哦～" : "奖励还在路上狂奔\n再等一下下哦～");
                    }
                    this.u.ob();
                }
                if (!this.ig.get() && this.mp.get() && (!io() || i == 3)) {
                    return;
                }
                if (s == 1 && (!this.ig.get() || !this.mp.get())) {
                    return;
                }
            }
        }
        if (s == 1) {
            d();
            return;
        }
        if (s == 2) {
            if (this.ia.get()) {
                this.op.le();
            }
            s();
        } else if (s == 3) {
            this.u.ob();
        } else if (s == 4 && i != 3) {
            cd();
        }
    }

    public void j() {
        this.f2520d.removeMessages(600);
    }

    public boolean ji() {
        return false;
    }

    public void jy() {
        if (this.no.get() || this.kk.getAndSet(true)) {
            return;
        }
        p("onSkippedVideo");
    }

    public void jy(int i) {
        fw(i);
        if (this.er instanceof kk) {
            this.f2520d.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.14
                @Override // java.lang.Runnable
                public void run() {
                    TTBaseVideoActivity.this.cc();
                }
            }, 500L);
        } else {
            cc();
        }
        if (wp()) {
            return;
        }
        if (this.op.ir()) {
            this.f2520d.sendEmptyMessageDelayed(1200, 1000L);
        }
        if (!ds() || this.op.er() || this.op.ir()) {
            this.er.le();
        }
        this.op.ox();
    }

    public void k() {
        this.f2519c.mn();
        this.op.wn();
        this.n.dq(1);
        this.f2520d.removeMessages(1200);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("state", 0);
            if (kx()) {
                jSONObject.put("reduce_duration", this.er.gx());
            }
            this.ji.dq("playableStateChange", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f2522f.set(true);
        dq(1, (com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p) null);
    }

    public void kk() {
        float[] dq = com.bytedance.sdk.openadsdk.core.component.reward.s.d.dq(this.wn.getApplicationContext(), this.fd, this.bu);
        float f2 = dq[0];
        float f3 = dq[1];
        if (this.fd == 100.0f) {
            this.ws = (int) f2;
            this.ij = (int) f3;
            return;
        }
        int[] dq2 = com.bytedance.sdk.openadsdk.core.component.reward.s.d.dq(this.wn.getApplicationContext(), this.fd, this.j.pn(), this.bu);
        int i = dq2[0];
        int i2 = dq2[1];
        int i3 = dq2[2];
        int i4 = dq2[3];
        float f4 = i;
        float f5 = i3;
        this.ws = (int) ((f2 - f4) - f5);
        float f6 = i2;
        float f7 = i4;
        this.ij = (int) ((f3 - f6) - f7);
        if (!h.dq(this.j) || com.bytedance.sdk.openadsdk.core.mp.s.dq(String.valueOf(this.nh))) {
            try {
                getWindow().getDecorView().setPadding(ce.ox(this.wn, f4), ce.ox(this.wn, f6), ce.ox(this.wn, f5), ce.ox(this.wn, f7));
            } catch (Throwable unused) {
            }
        }
    }

    public void kk(int i) {
    }

    public abstract boolean kx();

    public Double l() {
        return this.xi;
    }

    public boolean le() {
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.l;
        if (dqVar != null) {
            return dqVar.ox();
        }
        return false;
    }

    public void mn() {
        mn mnVar = new mn(this.wn, this.j, this.dq, kx() ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.18
            @Override // com.bytedance.sdk.openadsdk.core.d.mn
            public void d(View view, o oVar) {
                TTBaseVideoActivity.this.er.dq(view);
                TTBaseVideoActivity.this.dq(2);
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.ir.dq(view, tTBaseVideoActivity.jw, oVar);
            }
        };
        this.gx = mnVar;
        if (this.er instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.iw) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) mnVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.wi);
        }
        dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.gx.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        this.gx.dq(this.h.mp());
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.gx.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(ob());
        com.bytedance.sdk.openadsdk.core.d.d dVar = new com.bytedance.sdk.openadsdk.core.d.d(this.wn, this.j, this.dq, kx() ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.19
            @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, o oVar) {
                TTBaseVideoActivity.this.ce.dq(view, oVar);
            }
        };
        this.cv = dVar;
        dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        this.jw = new dq.InterfaceC0144dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.20
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.InterfaceC0144dq
            public void dq(View view, o oVar) {
                TTBaseVideoActivity.this.ce.dq(view, oVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.InterfaceC0144dq
            public void dq(String str, JSONObject jSONObject) {
                TTBaseVideoActivity.this.ce.dq(str, jSONObject);
            }
        };
        this.dc = new dq.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.21
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.d
            public void d(boolean z, long j, long j2, String str, String str2) {
                if (z) {
                    TTBaseVideoActivity.this.op.dq(j2, j, 2);
                }
                TTBaseVideoActivity.this.dq("下载暂停");
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.d
            public void dq(boolean z) {
                if (z) {
                    TTBaseVideoActivity.this.op.dq(1, 0);
                }
                TTBaseVideoActivity.this.dq("点击开始下载");
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.d
            public void dq(boolean z, long j, long j2, String str, String str2) {
                long j3;
                long j4;
                if (z) {
                    j3 = j;
                    j4 = j2;
                    TTBaseVideoActivity.this.op.dq(j4, j3, 3);
                } else {
                    j3 = j;
                    j4 = j2;
                }
                if (j3 > 0) {
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    tTBaseVideoActivity.dq("已下载" + ((int) ((100 * j4) / j3)) + "%");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.d
            public void dq(boolean z, long j, String str, String str2) {
                if (z) {
                    TTBaseVideoActivity.this.op.dq(5, 100);
                }
                TTBaseVideoActivity.this.dq("点击安装");
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.d
            public void dq(boolean z, String str, String str2) {
                if (z) {
                    TTBaseVideoActivity.this.op.dq(6, 100);
                }
                TTBaseVideoActivity.this.dq("点击打开");
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.d.dq.d
            public void ox(boolean z, long j, long j2, String str, String str2) {
                if (z) {
                    TTBaseVideoActivity.this.op.dq(j2, j, 4);
                }
                TTBaseVideoActivity.this.dq("下载失败");
            }
        };
        this.er.dq(this.gx);
    }

    public void mn(int i) {
        this.kx.dq(i);
    }

    public void mp() {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(this.j, "stats_reward_full_completed", this.ce.dq(new JSONObject()));
        if (this.no.getAndSet(true)) {
            return;
        }
        p("onVideoComplete");
    }

    public void mp(int i) {
        this.h.s(i);
    }

    public String n() {
        return "";
    }

    public void nh() {
        q(0);
    }

    public void no(int i) {
        if (this.ji != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("time", i);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            this.ji.dq("reduceTime", jSONObject);
        }
    }

    public boolean no() {
        if (!kx() || !wp.d().mn(String.valueOf(this.nh)) || this.s.containsKey(0)) {
            return false;
        }
        if (System.currentTimeMillis() - this.pa < 1000) {
            return true;
        }
        this.pa = System.currentTimeMillis();
        nh();
        this.f2520d.removeMessages(1200);
        ia iaVar = new ia(this.wn, this.j);
        iaVar.dq(this.op.r());
        iaVar.dq(this.er.wn());
        iaVar.d(true);
        d.dq d2 = iaVar.d(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.7
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                TTBaseVideoActivity.this.vf();
                TTBaseVideoActivity.this.op.dq(true);
                TTBaseVideoActivity.this.op.le();
                TTBaseVideoActivity.this.ox();
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.ce.dq("reward_retain_dialog_skip", tTBaseVideoActivity.z.dq(), TTBaseVideoActivity.this.z.d());
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq() {
                TTBaseVideoActivity.this.vf();
                TTBaseVideoActivity.this.f2520d.sendEmptyMessageDelayed(1200, 1000L);
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                tTBaseVideoActivity.ce.dq("reward_retain_dialog_cancel", tTBaseVideoActivity.z.dq(), TTBaseVideoActivity.this.z.d());
            }
        });
        this.z = d2;
        this.ce.dq("reward_retain_dialog_show", d2.dq(), this.z.d());
        return this.z.ox();
    }

    public void o() {
        if (this.op.q()) {
            this.op.jy();
            return;
        }
        if (!this.op.ji() && !com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.j) && !com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.j)) {
            d();
            return;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.3
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                if (gh.no(TTBaseVideoActivity.this.j)) {
                    new dq.C0163dq().s(TTBaseVideoActivity.this.j.fx()).dq("rewarded_video").d("popup_cancel").p(TTBaseVideoActivity.this.j.dn()).dq((com.bytedance.sdk.openadsdk.iw.dq.dq) null);
                    TTBaseVideoActivity.this.jy();
                    TTBaseVideoActivity.this.d();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq() {
                if (gh.no(TTBaseVideoActivity.this.j)) {
                    new dq.C0163dq().s(TTBaseVideoActivity.this.j.fx()).dq("rewarded_video").d("popup_play").p(TTBaseVideoActivity.this.j.dn()).dq((com.bytedance.sdk.openadsdk.iw.dq.dq) null);
                    if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(TTBaseVideoActivity.this.j) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(TTBaseVideoActivity.this.j)) {
                        return;
                    }
                    TTBaseVideoActivity.this.d("onClickModalCallback");
                }
            }
        };
        if (com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.j) || com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.j)) {
            d(oVar);
        } else {
            ox(oVar);
        }
    }

    public void o(int i) {
        com.bytedance.sdk.openadsdk.core.video.d.d u;
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (!(dqVar instanceof kk) || (u = dqVar.u()) == null) {
            return;
        }
        if (u.no() == 1 && i == 1 && this.cc.getAndSet(false)) {
            int ia = ce.ia(wp.getContext());
            float iw = ce.iw(wp.getContext());
            float mn = ce.mn(wp.getContext());
            Map<String, Object> ob = ob();
            ob.putAll(u.mn());
            com.bytedance.sdk.openadsdk.core.ig.ox.dq("click", this.j, new kk.dq().iw(-1.0f).s(-1.0f).p(-1.0f).ox(-1.0f).d(-1L).dq(-1L).ox(-1).p(-1).s(-1024).d(com.bytedance.sdk.openadsdk.core.no.ia().ox() ? 1 : 2).dq(ia).dq(iw).d(mn).dq(), this.dq, true, ob, -1, false);
        }
    }

    public Map<String, Object> ob() {
        HashMap hashMap = new HashMap();
        String str = this.ob;
        if (str != null) {
            hashMap.put("rit_scene", str);
        }
        hashMap.put("insert_ad_control", Integer.valueOf(bl.dq(this.j)));
        hashMap.put("carousel_pos", Integer.valueOf(bl.p(this.j)));
        hashMap.put("refresh_ad_control", Integer.valueOf(bl.d(this.j)));
        if (this.ds.d() != 0) {
            hashMap.put("carousel_type", Integer.valueOf(this.ds.d()));
        }
        this.ce.dq(hashMap);
        return hashMap;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ce.d((Activity) this.wn);
        try {
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.8
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i) {
                    if (i == 0) {
                        try {
                            if (TTBaseVideoActivity.this.isFinishing()) {
                                return;
                            }
                            if (TTBaseVideoActivity.this.bu == 2) {
                                TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.8.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ce.dq((Activity) TTBaseVideoActivity.this.wn);
                                    }
                                }, 2500L);
                            } else {
                                TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.8.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ce.d((Activity) TTBaseVideoActivity.this.wn);
                                    }
                                }, 500L);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        j jVar = this.j;
        if (jVar == null) {
            return;
        }
        if (j.ox(jVar) || this.j.rc() == 1 || (this.er instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.kk)) {
            this.op.jy();
        }
        if (gh.no(this.j)) {
            o();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wn = this;
        bu();
        dq(getIntent());
        d(bundle);
        d(getIntent());
        if (dq(bundle)) {
            xi();
            ws();
            z();
            kk();
            this.er.dq(this.ws, this.ij);
            setContentView(this.kx);
            p();
            this.er.d();
            s sVar = this.ji;
            if (sVar != null) {
                sVar.dq(this.wi);
            }
            if (fd()) {
                this.m = new com.bytedance.sdk.openadsdk.core.component.reward.s.p();
            }
            SaasAuthRewardDialog saasAuthRewardDialog = (SaasAuthRewardDialog) findViewById(2114387968);
            if (saasAuthRewardDialog != null) {
                saasAuthRewardDialog.dq(this.j, this.dq, kx() ? 7 : 5);
            }
            if (bl.p(this.j, true)) {
                u().getSceneFrameContainer().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.17
                    @Override // java.lang.Runnable
                    public void run() {
                        TranslateAnimation translateAnimation = new TranslateAnimation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTBaseVideoActivity.this.u().getSceneFrameContainer().getHeight(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        translateAnimation.setDuration(300L);
                        translateAnimation.setFillAfter(true);
                        TTBaseVideoActivity.this.u().getSceneFrameContainer().startAnimation(translateAnimation);
                    }
                });
            }
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(this.j, "stats_reward_full_destroy");
        com.bytedance.sdk.openadsdk.core.mn.p.ox = false;
        com.bytedance.sdk.openadsdk.core.mn.p.f3170d = 0;
        com.bytedance.sdk.openadsdk.core.mn.p.dq = 0;
        com.bytedance.sdk.openadsdk.core.mn.p.p = false;
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (dqVar != null) {
            dqVar.jy();
        }
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar2 = this.l;
        if (dqVar2 != null) {
            dqVar2.d();
        }
        this.f2520d.removeCallbacksAndMessages(null);
        this.u.kx();
        this.ir.iw();
        this.op.iw();
        this.f2519c.ox();
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p pVar = this.xz;
        if (pVar != null) {
            pVar.d();
        }
        ox(true);
        h();
        p("recycleRes");
        j jVar = this.j;
        if (jVar != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(jVar.ff());
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        nh();
        this.le = false;
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (dqVar != null) {
            dqVar.q();
        }
        this.ir.s();
        this.f2519c.d();
        this.op.p();
        com.bytedance.sdk.openadsdk.core.component.reward.s.p pVar = this.m;
        if (pVar != null) {
            pVar.ox();
        }
        this.f2520d.removeMessages(1300);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        com.bytedance.sdk.openadsdk.core.component.reward.s.p pVar = this.m;
        if (pVar != null) {
            pVar.p();
            int dq = (int) this.m.dq(TimeUnit.SECONDS);
            dq(dq, false);
            this.m.s();
            if (this.ji != null && !uh.fw(this.j)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("time", dq);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                this.ji.dq("reduceTime", jSONObject);
            }
        }
        this.le = true;
        this.op.d();
        this.ir.p();
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (dqVar != null) {
            dqVar.d(this.s.containsKey(0));
            vf();
            this.f2519c.dq();
            xv();
            this.f2520d.sendEmptyMessageDelayed(1300, 1000L);
        }
        dq(1, (com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p) null);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putString("multi_process_key", this.vf);
            bundle.putBoolean("is_preload", this.k);
            bundle.putBoolean("is_adm", this.wp);
            bundle.putInt("key_video_cache_callback", this.f2521e);
            bundle.putLong("video_current", this.u.fw());
            bundle.putBoolean("is_mute", this.i);
            bundle.putString("rit_scene", this.ob);
            Double d2 = this.xi;
            bundle.putString("_client_bidding_aution_price", d2 == null ? "" : String.valueOf(d2));
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    public void onSkipBorderClick(View view) {
        this.er.d(view);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.op.ig();
        com.bytedance.sdk.openadsdk.h.dq dqVar = this.xv;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar = this.er;
        if (dqVar != null) {
            dqVar.ox(this.mn.get());
        }
        this.op.s();
        com.bytedance.sdk.openadsdk.h.dq dqVar2 = this.xv;
        if (dqVar2 != null) {
            dqVar2.d();
        }
    }

    public String op() {
        return "";
    }

    public void ox() {
        this.u.nh();
        this.u.dq(2);
        this.u.kk();
        jy();
        iw(2);
    }

    public void ox(int i) {
    }

    public void ox(String str) {
        if (isFinishing()) {
            return;
        }
        if (this.l == null) {
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(this.wn, this.j.ez(), this.dq, true);
            this.l = dqVar;
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.wn, dqVar, this.j);
            this.l.dq(new dq.InterfaceC0156dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.10
                @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                public void d() {
                    TTBaseVideoActivity.this.vf();
                }

                @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                public void dq() {
                    TTBaseVideoActivity.this.nh();
                }

                @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
                public void dq(int i, String str2, boolean z) {
                    TTBaseVideoActivity.this.f2520d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TTBaseVideoActivity.this.vf();
                        }
                    });
                }
            });
        }
        this.l.dq(str);
        this.l.dq();
    }

    public abstract void ox(boolean z);

    public void p() {
        this.kx.dq(this.er);
        ij();
        this.h = this.er.dq(kx());
        this.ji = this.er.ig();
        this.bl = this.er.mp();
        this.h.dq();
        mn();
        this.h.dq(this.gx, this.cv);
        this.h.dq(this.ir.mn());
        this.n.dq(this.j, this.op, kx(), this.gx);
        this.n.p(this.i);
        if (this.ir.ox()) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.gx.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ir.d());
            this.ir.dq(this.jw);
        }
        this.ir.dq(this.dc);
        this.ir.dq(this.wi);
        this.op.dq(this.n, this.ir, kx(), this.dq, this.ws, this.ij);
        this.op.dq(this.j, this.gx, this.wi.op(), this.bl);
        this.f2519c.dq(this.op, this.j, this.dq, this.n);
        this.ce.dq(this.j, this.dq, this.h.mp());
        this.u.dq(this.j);
        this.xv = new com.bytedance.sdk.openadsdk.h.dq();
        this.xz = new com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p(this.j, this.v);
    }

    public void p(int i) {
    }

    public abstract void p(String str);

    public void p(boolean z) {
        this.ir.dq(z);
    }

    public void q() {
        if (this.o.getAndSet(true)) {
            return;
        }
        p("onVideoError");
    }

    public void q(int i) {
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq dqVar;
        if (this.u.d()) {
            this.u.o();
        }
        this.f2520d.removeMessages(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        this.f2520d.removeMessages(1200);
        f(i);
        if ((ds() && uh.fw(this.j) && this.f2519c.ia()) || (dqVar = this.er) == null) {
            return;
        }
        dqVar.i();
        this.op.d(ds());
    }

    public void r() {
        s();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0027, code lost:
    
        if (r3 > 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x002a, code lost:
    
        if (r7 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0035, code lost:
    
        if (r6.q.get() != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0039, code lost:
    
        if (r7 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0041, code lost:
    
        if (r7 != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int s(int i) {
        boolean z = i == 2;
        boolean xz = this.er.xz();
        int i2 = 4;
        switch (this.j.we()) {
            case 1:
                i2 = 1;
                break;
            case 2:
            default:
                i2 = 2;
                break;
            case 3:
                break;
            case 4:
            case 5:
                if (!z) {
                    i2 = 3;
                    break;
                }
                i2 = 1;
                break;
            case 6:
                break;
            case 7:
                if (z) {
                    break;
                }
                i2 = 2;
                break;
            case 8:
            case 9:
                if (io()) {
                    int m = m();
                    if (!z) {
                    }
                    i2 = 1;
                    break;
                }
                break;
        }
        if (i2 == 2 && !xz) {
            i2 = 1;
        }
        return ((this.er instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.iw) && com.bytedance.sdk.openadsdk.h.o.dq(this.j)) ? z ? 1 : 3 : i2;
    }

    public void s() {
        com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar;
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(this.j, "stats_reward_full_show_endcard");
        if (isDestroyed() || isFinishing() || (dVar = this.op) == null || dVar.er()) {
            return;
        }
        if (!gh.p(this.j)) {
            this.op.p(true);
        }
        this.er.wp();
        if ((!(this.er instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.ia) && !l.le(this.j)) || !this.op.gh() || (this.er instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.kk)) {
            this.op.le();
        }
        this.n.dq(true);
        this.f2519c.dq(this.i);
        this.op.no();
        if ((this.er instanceof com.bytedance.sdk.openadsdk.core.component.reward.p.ia) && this.op.op()) {
            this.op.ia();
            return;
        }
        this.n.dq(2);
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.l;
        if (dqVar != null) {
            dqVar.d();
        }
        d.dq dqVar2 = this.z;
        if (dqVar2 != null) {
            dqVar2.s();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar2 = this.h;
        if (dVar2 != null) {
            dVar2.s(8);
        }
        this.op.ox(false);
        if (this.op.f()) {
            if (!pa.o(this.j) && !i.ox(this.j)) {
                this.op.dq(true, 0, (String) null);
            }
            this.op.mp();
            this.f2520d.sendEmptyMessageDelayed(500, 100L);
            return;
        }
        if (!pa.o(this.j)) {
            this.op.dq(false, TTAdConstant.INTERACTION_TYPE_CODE, "end_card_timeout");
        }
        this.op.s(true);
        this.u.ia();
        this.op.k();
    }

    public void t() {
    }

    public RewardFullBaseLayout u() {
        return this.kx;
    }

    public iw uh() {
        return this.u;
    }

    public boolean v() {
        return this.s.containsKey(0);
    }

    public void vf() {
        jy(0);
    }

    public void vw() {
        this.n.iw();
    }

    public int wn() {
        return Math.max(this.er.by() - (this.er.gx() + ((int) (this.u.op() / 1000))), 0);
    }

    public boolean wp() {
        return wi() || le() || this.er.n();
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.d.ox xz() {
        return this.ce;
    }

    public com.bytedance.sdk.openadsdk.core.component.reward.p.dq yy() {
        return this.er;
    }
}
