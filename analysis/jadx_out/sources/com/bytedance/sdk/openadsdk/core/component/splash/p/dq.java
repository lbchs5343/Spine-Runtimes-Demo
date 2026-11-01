package com.bytedance.sdk.openadsdk.core.component.splash.p;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.component.splash.SplashClickBarBtn;
import com.bytedance.sdk.openadsdk.core.component.splash.TsView;
import com.bytedance.sdk.openadsdk.core.component.splash.o;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.ir.ji;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.s;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.ha;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.ox;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationSplashManagerDefault;
import g.hat;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends com.bytedance.sdk.openadsdk.f.d.d.d implements e.dq, TsView.dq {
    protected ox bl;
    private o bu;
    private com.bytedance.sdk.openadsdk.core.le.dq.d by;
    private Context ce;
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.ox cv;

    /* renamed from: d, reason: collision with root package name */
    protected j f2761d;
    private Activity dc;
    protected TsView dq;
    private String er;

    /* renamed from: f, reason: collision with root package name */
    protected ia f2763f;
    protected boolean gh;
    protected boolean h;
    private com.bytedance.sdk.openadsdk.p.dq.d.dq.d ha;
    protected com.bytedance.sdk.openadsdk.p.dq.d.dq.dq ia;
    private p<kk, mn> ij;
    protected View.OnTouchListener iw;
    private float j;
    private boolean jw;
    protected iw jy;
    protected mn k;
    protected com.bytedance.sdk.openadsdk.core.le.dq.d kx;
    protected d mn;
    private boolean nh;
    protected com.bytedance.sdk.openadsdk.core.o.d.ox ox;
    protected SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> p;
    protected boolean r;
    protected com.bytedance.sdk.openadsdk.core.d.dq s;
    private float wn;
    private com.bytedance.sdk.openadsdk.f.d.ox.d ws;
    private com.bytedance.sdk.openadsdk.core.component.splash.dq.dq xi;
    private boolean yy;
    protected final Map<String, Object> kk = new HashMap();
    private Double vf = null;
    private boolean ob = false;
    private boolean l = false;
    protected boolean o = false;
    private int t = 3;
    protected int no = -1;
    private final e gx = new e(Looper.getMainLooper(), this);
    protected boolean ig = false;
    protected boolean mp = false;
    protected long q = 0;
    protected Map<String, Object> fw = new HashMap();
    protected AtomicBoolean cd = new AtomicBoolean(false);
    protected boolean i = true;
    protected boolean le = false;
    private com.bytedance.sdk.openadsdk.core.component.splash.d uh = new com.bytedance.sdk.openadsdk.core.component.splash.d();
    private com.bytedance.sdk.openadsdk.core.component.splash.dq xz = new com.bytedance.sdk.openadsdk.core.component.splash.dq();
    private boolean v = false;
    private long ds = 0;
    private long vw = 5;
    protected AtomicBoolean wp = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    protected AtomicBoolean f2762e = new AtomicBoolean(false);
    protected AtomicBoolean ji = new AtomicBoolean(false);
    private boolean fd = true;
    protected AtomicBoolean n = new AtomicBoolean(false);
    protected AtomicBoolean op = new AtomicBoolean(false);
    protected AtomicBoolean ir = new AtomicBoolean(false);
    protected int u = -1;

    /* renamed from: c, reason: collision with root package name */
    protected int f2760c = -1;

    public interface d {
        void P_();
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.splash.p.dq$dq, reason: collision with other inner class name */
    public static class C0155dq implements dq.d {
        j dq;

        public C0155dq(j jVar) {
            this.dq = jVar;
        }

        @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
        public void d() {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq, "splash_ad", "splash_enter_foreground", System.currentTimeMillis());
        }

        @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
        public void dq() {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq, "splash_ad", "splash_enter_background", System.currentTimeMillis());
        }
    }

    private void cd() {
        EmptyView emptyView = new EmptyView(this.ce, this.dq, this.f2761d.vb());
        emptyView.setMaterialMeta(this.f2761d);
        emptyView.setAdType(3);
        this.dq.addView(emptyView);
        emptyView.setCallback(new EmptyView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.4

            /* renamed from: d, reason: collision with root package name */
            private volatile boolean f2765d = false;

            private void ox() {
                boolean z = true;
                if (!this.f2765d) {
                    this.f2765d = true;
                    if (dq.this.f2761d.y() == 4) {
                        com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("splash_register_download") { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TsView tsView;
                                Context context;
                                dq dqVar = dq.this;
                                dqVar.p(dqVar.f2761d.ce() != 1);
                                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = dq.this.ox;
                                if (oxVar != null) {
                                    oxVar.s(false);
                                }
                                dq dqVar2 = dq.this;
                                if (dqVar2.ox == null || (tsView = dqVar2.dq) == null || tsView.getParent() == null) {
                                    return;
                                }
                                try {
                                    context = ((View) dq.this.dq.getParent()).getContext();
                                } catch (Exception unused) {
                                    context = null;
                                }
                                if (context instanceof Activity) {
                                    dq.this.ox.dq((Activity) context);
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = dq.this.ox;
                if (oxVar != null) {
                    try {
                        oxVar.s(false);
                        dq dqVar = dq.this;
                        if (dqVar.f2761d.ce() == 1) {
                            z = false;
                        }
                        dqVar.s(z);
                    } catch (Exception unused) {
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq() {
                ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(View view) {
                iw iwVar;
                ox();
                boolean p = com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.p();
                if (!p) {
                    dq.this.dq(true);
                }
                dq.this.q = System.currentTimeMillis();
                d dVar = dq.this.mn;
                if (dVar != null) {
                    dVar.P_();
                }
                dq dqVar = dq.this;
                j jVar = dqVar.f2761d;
                if (jVar != null && (iwVar = dqVar.jy) != null) {
                    jVar.iw(iwVar.s());
                    dq.this.fw.put("cache_type", Integer.valueOf(wp.d().kk(c.kk(dq.this.f2761d))));
                    dq dqVar2 = dq.this;
                    dqVar2.fw.put("splash_show_time_type", Integer.valueOf(dqVar2.f2760c));
                }
                dq dqVar3 = dq.this;
                j jVar2 = dqVar3.f2761d;
                String str = dqVar3.er;
                dq dqVar4 = dq.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar2, str, dqVar4.fw, dqVar4.vf);
                com.bytedance.sdk.openadsdk.core.kx.dq.dq().p();
                dq.this.i();
                dq.this.r();
                dq dqVar5 = dq.this;
                dqVar5.d(dqVar5.nh);
                dq dqVar6 = dq.this;
                if (dqVar6.ia != null && !dqVar6.cd.getAndSet(true)) {
                    dq dqVar7 = dq.this;
                    dqVar7.ia.dq(dqVar7);
                }
                if (dq.this.op.get()) {
                    dq.this.ia = null;
                } else {
                    dq.this.n.set(true);
                }
                dq.this.gh();
                dq.this.ji.set(true);
                TsView tsView = dq.this.dq;
                if (tsView != null) {
                    tsView.setIsShowSuccess(true);
                }
                if (p) {
                    dq.this.dq(true);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
            public void dq(boolean z) {
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = dq.this.ox;
                if (oxVar == null || !z) {
                    return;
                }
                oxVar.ia();
            }
        });
        emptyView.setNeedCheckingShow(true);
        this.kk.put("splash_show_type", Integer.valueOf(this.no));
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.ce, this.f2761d, this.er, 4) { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.5
            @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                if ((view instanceof SplashClickBarBtn) && dq.this.o) {
                    return;
                }
                super.dq(view, oVar);
            }
        };
        this.s = dqVar;
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.s.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.kk);
        this.s.d(this.dq.getDislikeView());
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.s.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.6
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
            public void dq(View view, int i) {
                dq dqVar2 = dq.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.d(dqVar2.q, dqVar2.f2761d);
                dq dqVar3 = dq.this;
                com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar4 = dqVar3.ia;
                if (dqVar4 != null) {
                    dqVar4.d(dqVar3);
                }
                dq.this.ig();
            }
        });
        this.dq.setSkipListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq dqVar2 = dq.this;
                dqVar2.mp = true;
                if (!TextUtils.isEmpty(dqVar2.f2761d.dn())) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(dq.this.q > 0 ? System.currentTimeMillis() - dq.this.q : 0L, dq.this.f2761d);
                }
                if (!cv.fw(dq.this.f2761d)) {
                    dq.this.k();
                }
                dq dqVar3 = dq.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.d(dqVar3.q, dqVar3.f2761d);
                dq dqVar4 = dq.this;
                if (dqVar4.ia != null) {
                    dqVar4.t = 0;
                    dq dqVar5 = dq.this;
                    dqVar5.o = true;
                    dqVar5.ia.dq(dqVar5, 1);
                    if (dq.this.n.get()) {
                        dq.this.ia = null;
                    } else {
                        dq.this.op.set(true);
                    }
                    dq.this.dq(false);
                }
                dq.this.q();
            }
        });
    }

    private void d(int i) {
        TsView tsView = this.dq;
        if (tsView != null) {
            tsView.setCountDownTime(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        TsView tsView;
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d countDownView;
        if (z || (tsView = this.dq) == null || (countDownView = tsView.getCountDownView()) == null) {
            return;
        }
        countDownView.setCountdownListener(new com.bytedance.sdk.openadsdk.core.component.splash.countdown.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.10
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.dq
            public void dq() {
                TsView tsView2 = dq.this.dq;
                if (tsView2 != null && tsView2.getCountDownView() != null && dq.this.dq.getCountDownView().getView() != null) {
                    dq.this.dq.getCountDownView().getView().setVisibility(8);
                }
                dq.this.k();
                dq dqVar = dq.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.d(dqVar.q, dqVar.f2761d);
                dq dqVar2 = dq.this;
                com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar3 = dqVar2.ia;
                if (dqVar3 != null) {
                    dqVar2.o = true;
                    dqVar3.dq(dqVar2, 2);
                    if (dq.this.n.get()) {
                        dq.this.ia = null;
                    } else {
                        dq.this.op.set(true);
                    }
                    dq.this.dq(false);
                }
                dq.this.q();
            }
        });
        countDownView.dq();
    }

    private void dq(j jVar) {
        TsView tsView;
        if (jVar == null || (tsView = this.dq) == null) {
            return;
        }
        tsView.dq(jVar);
    }

    private void f() {
        if (this.f2761d == null) {
            return;
        }
        try {
            this.o = false;
            TsView tsView = new TsView(this.ce, this.er, this.f2761d);
            this.dq = tsView;
            tsView.setAttachedToWindowListener(this);
            fw();
            this.dq.setCountDownViewPosition(this.f2761d);
            if (this.f2761d.xz() == 0) {
                TsView tsView2 = this.dq;
                if (tsView2 != null) {
                    tsView2.setAdlogoViewVisibility(8);
                }
            } else {
                TsView tsView3 = this.dq;
                if (tsView3 != null) {
                    tsView3.setAdlogoViewVisibility(0);
                }
            }
            if (this.f2761d.ne() <= 0) {
                d(3);
            } else {
                int ne = this.f2761d.ne();
                this.t = ne;
                d(ne);
            }
            dq(this.f2761d);
            cd();
        } catch (ArrayIndexOutOfBoundsException e2) {
            ig.p("sbr", e2.getMessage());
        }
    }

    private void fw() {
        if (!this.h || this.dq == null) {
            return;
        }
        j jVar = this.f2761d;
        if (jVar != null && jVar.dh() != null && this.f2761d.dh().d() == 0) {
            this.dq.setVideoViewVisibility(8);
        } else {
            this.dq.setVideoViewVisibility(0);
            this.dq.setVoiceViewListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    dq.this.dq.setVoiceViewImageDrawable(dq.this.fd ? r.ox(dq.this.ce, "tt_splash_unmute") : r.ox(dq.this.ce, "tt_splash_mute"));
                    dq.this.fd = !r2.fd;
                    dq dqVar = dq.this;
                    ox oxVar = dqVar.bl;
                    if (oxVar != null) {
                        oxVar.d(dqVar.fd);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gh() {
        no.ia().p().d(new C0155dq(this.f2761d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        TsView tsView = this.dq;
        if (tsView != null) {
            tsView.dq(this.f2761d.bu(), this.s);
            if (this.f2761d.ce() == 1) {
                mp();
            }
        }
    }

    private void iw(boolean z) {
        if ((com.bytedance.sdk.openadsdk.core.ox.p.dq().ir() & 2) == 2) {
            com.bytedance.sdk.openadsdk.core.component.splash.mn.dq.set(z);
            return;
        }
        com.bytedance.sdk.component.mn.dq dq = n.dq("sp_multi_native_video_data");
        if (dq != null) {
            dq.dq("key_video_is_form_splash_click_eye", z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        boolean z = false;
        this.jw = false;
        o oVar = new o();
        this.bu = oVar;
        oVar.dq(this.ce, this.f2761d);
        boolean z2 = !this.xz.ox() && le();
        if (this.uh != null && jy()) {
            z = true;
        }
        if (z2) {
            SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = this.p;
            if (softReference == null) {
                this.bu.dq(this.er, this.no, this.xz, (com.bytedance.sdk.openadsdk.f.d.dq.d) null);
            } else {
                this.bu.dq(this.er, this.no, this.xz, softReference.get());
            }
            this.r = true;
            this.bu.dq(2);
            com.bytedance.sdk.openadsdk.core.component.splash.dq dqVar = this.xz;
            if (dqVar != null) {
                dqVar.dq(this);
            }
            com.bytedance.sdk.openadsdk.core.component.splash.d dVar = this.uh;
            if (dVar != null) {
                dVar.ox();
                return;
            }
            return;
        }
        if (z) {
            iw(true);
            SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference2 = this.p;
            if (softReference2 == null) {
                this.bu.dq(this.er, this.no, this.uh, (com.bytedance.sdk.openadsdk.f.d.dq.d) null);
            } else {
                this.bu.dq(this.er, this.no, this.uh, softReference2.get());
            }
            this.r = true;
            this.bu.dq(1);
            com.bytedance.sdk.openadsdk.core.component.splash.d dVar2 = this.uh;
            if (dVar2 != null) {
                dVar2.dq(this);
            }
            this.xz.p();
        }
    }

    private boolean le() {
        return (!cv.dq(this.f2761d) || this.ig || this.mp || this.gh) ? false : true;
    }

    private void ox(ViewGroup viewGroup) {
        TsView tsView;
        if (!this.r || (tsView = this.dq) == null || this.f2761d == null || this.bu == null || this.yy) {
            return;
        }
        ViewParent parent = tsView.getParent();
        this.yy = true;
        ViewGroup dq = this.bu.dq();
        if (dq == null) {
            return;
        }
        ox oxVar = this.bl;
        if (oxVar != null) {
            oxVar.iw();
        }
        if (dq.getParent() != null) {
            ((ViewGroup) dq.getParent()).removeView(dq);
        }
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).addView(dq);
            ce.ia(this.dq);
            this.dq.removeAllViews();
            this.dq = null;
        }
        dq.setOnClickListener(null);
        dq.setOnTouchListener(null);
        if (this.le) {
            ox oxVar2 = this.bl;
            if (oxVar2 != null) {
                oxVar2.o();
            }
            this.bl = null;
        }
        this.bu.dq(this.by, this.bl, new o.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.3
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.o.dq
            public void d() {
                dq.this.jw = true;
                dq.this.wp();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.o.dq
            public void dq() {
                dq.this.gx.removeMessages(1);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.o.dq
            public void dq(long j) {
                dq.this.gx.removeMessages(1);
                if (j < 0) {
                    dq.this.gx.sendEmptyMessageDelayed(1, 1000L);
                } else {
                    if (j == 0) {
                        dq.this.gx.sendEmptyMessage(2);
                        return;
                    }
                    dq.this.vw = j;
                    dq.this.ds = 0L;
                    dq.this.gx.sendEmptyMessageDelayed(1, 1000L);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.splash.o.dq
            public Context getActivity() {
                return dq.this.dc;
            }
        });
    }

    private void ox(boolean z) {
        TsView tsView;
        com.bytedance.sdk.openadsdk.core.component.splash.countdown.d countDownView;
        if (z || (tsView = this.dq) == null || (countDownView = tsView.getCountDownView()) == null) {
            return;
        }
        countDownView.setCountdownListener(new com.bytedance.sdk.openadsdk.core.component.splash.countdown.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.11
            @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.dq
            public void dq() {
                TsView tsView2 = dq.this.dq;
                if (tsView2 != null && tsView2.getCountDownView() != null && dq.this.dq.getCountDownView().getView() != null) {
                    dq.this.dq.getCountDownView().getView().setVisibility(8);
                }
                dq dqVar = dq.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.d(dqVar.q, dqVar.f2761d);
                dq dqVar2 = dq.this;
                com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar3 = dqVar2.ia;
                if (dqVar3 != null) {
                    dqVar2.o = true;
                    dqVar3.dq(dqVar2, 2);
                    if (dq.this.n.get()) {
                        dq.this.ia = null;
                    } else {
                        dq.this.op.set(true);
                    }
                    dq.this.dq(false);
                }
                dq.this.q();
            }
        });
        countDownView.dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(boolean z) {
        this.ox = s.dq(this.ce, this.f2761d, this.er, false);
        s(z);
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.s;
        if (dqVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.ox);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        TsView tsView = this.dq;
        if (tsView != null && tsView.getChildCount() > 0) {
            for (int i = 0; i < this.dq.getChildCount(); i++) {
                View childAt = this.dq.getChildAt(i);
                if (childAt != null && (childAt instanceof EmptyView)) {
                    this.dq.removeView(childAt);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final boolean z) {
        final String fx = this.f2761d.fx();
        this.ox.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void d(long j, long j2, String str, String str2) {
                long j3;
                long j4;
                SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = dq.this.p;
                if (softReference == null || softReference.get() == null) {
                    j3 = j;
                    j4 = j2;
                } else {
                    j3 = j;
                    j4 = j2;
                    dq.this.p.get().d(j3, j4, str, str2);
                }
                if (!z || j3 <= 0) {
                    return;
                }
                dq.C0166dq.dq(fx, 2, (int) ((j4 * 100) / j3));
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq() {
                SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = dq.this.p;
                if (softReference != null && softReference.get() != null) {
                    dq.this.p.get().dq();
                }
                if (z) {
                    dq.C0166dq.dq(fx, 1, 0);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, long j2, String str, String str2) {
                long j3;
                long j4;
                SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = dq.this.p;
                if (softReference == null || softReference.get() == null) {
                    j3 = j;
                    j4 = j2;
                } else {
                    j3 = j;
                    j4 = j2;
                    dq.this.p.get().dq(j3, j4, str, str2);
                }
                if (!z || j3 <= 0) {
                    return;
                }
                dq.C0166dq.dq(fx, 3, (int) ((j4 * 100) / j3));
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, String str, String str2) {
                SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = dq.this.p;
                if (softReference != null && softReference.get() != null) {
                    dq.this.p.get().dq(j, str, str2);
                }
                if (z) {
                    dq.C0166dq.dq(fx, 5, 100);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(String str, String str2) {
                SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = dq.this.p;
                if (softReference != null && softReference.get() != null) {
                    dq.this.p.get().dq(str, str2);
                }
                if (z) {
                    dq.C0166dq.dq(fx, 6, 100);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void ox(long j, long j2, String str, String str2) {
                long j3;
                long j4;
                SoftReference<com.bytedance.sdk.openadsdk.f.d.dq.d> softReference = dq.this.p;
                if (softReference == null || softReference.get() == null) {
                    j3 = j;
                    j4 = j2;
                } else {
                    j3 = j;
                    j4 = j2;
                    dq.this.p.get().ox(j3, j4, str, str2);
                }
                if (!z || j3 <= 0) {
                    return;
                }
                dq.C0166dq.dq(fx, 4, (int) ((j4 * 100) / j3));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wp() {
        iw(false);
        if (!this.yy) {
            this.i = false;
            return;
        }
        if (this.v) {
            return;
        }
        this.v = true;
        com.bytedance.sdk.openadsdk.core.component.splash.dq dqVar = this.xz;
        if (dqVar != null) {
            dqVar.dq();
            this.xz = null;
        }
        com.bytedance.sdk.openadsdk.core.component.splash.d dVar = this.uh;
        if (dVar != null) {
            dVar.dq();
            this.uh = null;
        }
        ox oxVar = this.bl;
        if (oxVar != null) {
            oxVar.o();
        }
        if (this.n.get()) {
            this.ia = null;
        } else {
            this.op.set(true);
        }
        this.ox = null;
        this.dc = null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View d() {
        o oVar;
        if (this.r && (oVar = this.bu) != null) {
            return oVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void d(ViewGroup viewGroup) {
        ox(viewGroup);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
        this.vf = d2;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View dq() {
        return null;
    }

    public void dq(int i) {
        this.u = i;
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        if (i == 1) {
            long j = this.ds + 1;
            this.ds = j;
            if (j >= this.vw) {
                this.gx.sendEmptyMessage(2);
                return;
            } else {
                this.gx.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
        }
        if (i != 2) {
            return;
        }
        if (!this.jw && cv.dq(this.f2761d)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("splash_card_close_type", 0);
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2761d, "splash_ad", "splash_card_close", jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        wp();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(ViewGroup viewGroup, Activity activity) {
        this.dc = activity;
        ox(viewGroup);
    }

    public synchronized void dq(ia iaVar, boolean z) {
        if (this.f2763f == null || !z) {
            this.f2763f = iaVar;
            if (iaVar != null) {
                this.h = iaVar.iw();
                this.kx = iaVar.p();
            }
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ox oxVar, p<kk, mn> pVar, com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar) {
        if (oxVar == null || pVar == null) {
            return;
        }
        this.xi = dqVar;
        this.ir.set(oxVar.kk());
        this.ij = pVar;
        mn mnVar = new mn();
        this.k = mnVar;
        mnVar.d(oxVar.kk());
        this.k.dq(oxVar.d());
        this.k.dq(this);
        this.ce = oxVar.getContext();
        this.er = oxVar.iw();
        this.jy = oxVar.p();
        dq(oxVar.s(), true);
        this.ws = oxVar.mn();
        iw iwVar = this.jy;
        if (iwVar == null) {
            this.k.d(3);
            this.k.dq("render splash ad model is null");
            pVar.dq(this.k);
        } else if (this.f2763f == null) {
            this.k.d(3);
            this.k.dq("render splash material is null");
            pVar.dq(this.k);
        } else {
            this.f2761d = iwVar.d();
            f();
            iw(false);
        }
    }

    public void dq(d dVar) {
        this.mn = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        this.p = new SoftReference<>(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
        j jVar = this.f2761d;
        if (jVar != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(jVar.ff(), dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.d dVar) {
        this.ha = dVar;
        com.bytedance.sdk.openadsdk.core.component.splash.dq dqVar = this.xz;
        if (dqVar != null) {
            dqVar.dq(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.dq dqVar) {
        this.ia = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void dq(com.bytedance.sdk.openadsdk.p.dq.d.dq.ox oxVar) {
        this.cv = oxVar;
        com.bytedance.sdk.openadsdk.core.component.splash.d dVar = this.uh;
        if (dVar != null) {
            dVar.dq(oxVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
        if (this.ob) {
            return;
        }
        ji.dq(this.f2761d, d2);
        this.ob = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
        if (this.l) {
            return;
        }
        ji.dq(this.f2761d, d2, str, str2);
        this.l = true;
    }

    public void dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.splash.dq.dq dqVar = this.xi;
        if (dqVar != null) {
            dqVar.dq(this.ij, this.f2761d, this.ws, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void ia() {
        k();
    }

    public void ig() {
        this.gx.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.8
            @Override // java.lang.Runnable
            public void run() {
                dq.this.ig = true;
                if (!com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.dq) {
                    if (dq.this.bu != null) {
                        dq.this.bu.d();
                    }
                } else {
                    com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.dq = false;
                    com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = dq.this.ox;
                    if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                        ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar).no().dq(new com.bytedance.sdk.openadsdk.core.o.ox.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.8.1
                            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.dq
                            public void dq() {
                                if (dq.this.bu != null) {
                                    dq.this.bu.d();
                                }
                            }
                        });
                    }
                }
            }
        }, 100L);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public int[] iw() {
        return cv.jy(this.f2761d);
    }

    public boolean jy() {
        j jVar = this.f2761d;
        if (jVar == null) {
            return false;
        }
        boolean z = cv.cd(jVar) == 0;
        if (cv.ox(this.f2761d)) {
            return (!this.i || this.ig || z) ? false : true;
        }
        ia iaVar = this.f2763f;
        if (iaVar != null) {
            this.by = iaVar.s();
        }
        return cv.p(this.f2761d) && !this.ig && !z && (this.by != null);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.mn kk() {
        return new MediationSplashManagerDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public void mn() {
        this.nh = true;
        TsView tsView = this.dq;
        if (tsView != null) {
            tsView.setSkipIconVisibility(8);
        }
    }

    public void mp() {
        ha sc;
        j jVar = this.f2761d;
        if (jVar == null || (sc = jVar.sc()) == null || sc.kk() != 5) {
            return;
        }
        final int jy = sc.jy();
        final ha.dq q = sc.q();
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.p.dq.9
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                dq dqVar;
                com.bytedance.sdk.openadsdk.core.d.dq dqVar2;
                TsView tsView;
                int p = ce.p(dq.this.ce, view.getWidth());
                int p2 = ce.p(dq.this.ce, view.getHeight());
                int p3 = ce.p(dq.this.ce, motionEvent.getX());
                int p4 = ce.p(dq.this.ce, motionEvent.getY());
                boolean z = p3 >= q.dq() && p4 >= q.ox() && p - p3 >= q.d() && p2 - p4 >= q.p();
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            dq.this.j = motionEvent.getY();
                        }
                    } else {
                        if (!z) {
                            return false;
                        }
                        dq.this.j = motionEvent.getY();
                        int p5 = ce.p(dq.this.ce, Math.abs(dq.this.j - dq.this.wn));
                        if (dq.this.j - dq.this.wn < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && p5 > jy && (dqVar2 = (dqVar = dq.this).s) != null && (tsView = dqVar.dq) != null) {
                            dqVar2.onClick(tsView);
                        }
                    }
                } else {
                    if (!z) {
                        return false;
                    }
                    dq.this.wn = motionEvent.getY();
                }
                return true;
            }
        };
        this.iw = onTouchListener;
        TsView tsView = this.dq;
        if (tsView != null) {
            tsView.setSlideUpTouchListener(onTouchListener);
        }
    }

    public void no() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.kk();
        }
        j jVar = this.f2761d;
        if (jVar != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(jVar.ff());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.TsView.dq
    public void o() {
        AtomicBoolean atomicBoolean = this.ji;
        if (atomicBoolean == null || !atomicBoolean.get()) {
            return;
        }
        ig.d("开屏view重复展示");
        TsView tsView = this.dq;
        if (tsView != null && tsView.getCountDownView() != null && this.dq.getCountDownView().getView() != null) {
            this.dq.getCountDownView().getView().setVisibility(0);
        }
        ox(this.nh);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public View ox() {
        o oVar;
        if (this.r && (oVar = this.bu) != null) {
            return oVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public int p() {
        j jVar = this.f2761d;
        if (jVar == null) {
            return -1;
        }
        return jVar.y();
    }

    public void q() {
        no.ia().kk(true);
        com.bytedance.sdk.openadsdk.core.ir.dq p = no.ia().p();
        if (p == null) {
            return;
        }
        p.d((dq.d) null);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d
    public Map<String, Object> s() {
        j jVar = this.f2761d;
        if (jVar == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.r.ji jiVar = jVar.oh().get(0);
        if (jiVar != null && jiVar.iw()) {
            String dq = jiVar.dq();
            Map<String, Object> ps = this.f2761d.ps();
            ps.put("image_url", dq);
            return ps;
        }
        return this.f2761d.ps();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.d, com.bytedance.sdk.openadsdk.f.d.d.kk, com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat e2 = hat.e(super.values());
        e2.o(1, op.f3334d);
        return e2.k();
    }
}
