package com.bytedance.sdk.openadsdk.core.component.dq;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.live.EcMallWebView;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.iw.ox.fw;
import com.bytedance.sdk.openadsdk.mediation.MediationNativeManagerDefault;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.f.d.d implements com.bykv.vk.openvk.component.video.api.d.dq, ox.InterfaceC0004ox, ox.p, dq.InterfaceC0174dq {

    /* renamed from: d, reason: collision with root package name */
    com.bytedance.sdk.openadsdk.f.d.ox.d f2517d;
    protected com.bytedance.sdk.openadsdk.core.multipro.d.dq dq;
    private com.bytedance.sdk.openadsdk.le.dq.d.d.dq ia;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.d ig;
    private com.bytedance.sdk.openadsdk.core.i.ox iw;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq jy;
    private boolean kk;
    private int mn;
    private volatile int mp;
    private WeakReference<View> no;
    private volatile WeakReference<NativeVideoTsView> o;
    int ox;
    private int[] p;
    private volatile boolean q;
    private com.bytedance.sdk.openadsdk.le.dq.d.dq.dq s;

    public ox(Context context, j jVar, int i, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(new com.bytedance.sdk.openadsdk.core.i.ox(context, jVar, i, dVar, true));
        this.p = null;
        this.kk = false;
        this.o = null;
        this.no = null;
        this.jy = new com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq(null) { // from class: com.bytedance.sdk.openadsdk.core.component.dq.ox.4
            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void d(View view, q qVar) {
                if (ox.this.o == null || ox.this.o.get() == null) {
                    return;
                }
                ((NativeVideoTsView) ox.this.o.get()).o();
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(View view, q qVar) {
                if (ox.this.o == null || ox.this.o.get() == null) {
                    return;
                }
                ((NativeVideoTsView) ox.this.o.get()).o();
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(q qVar) {
            }
        };
        com.bytedance.sdk.openadsdk.core.i.ox oxVar = (com.bytedance.sdk.openadsdk.core.i.ox) ir();
        this.iw = oxVar;
        oxVar.p().dq(this);
        this.ox = i;
        this.f2517d = dVar;
        this.dq = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
        int kk = c.kk(jVar);
        this.mn = kk;
        dq(kk);
        this.iw.dq(this.jy);
    }

    private int[] c() {
        if (this.iw.kx() == null) {
            return null;
        }
        if (this.iw.kx().gv() == 166 && ce.dq(this.iw.kx())) {
            return new int[]{ce.ig(this.iw.kx()), ce.mp(this.iw.kx())};
        }
        if (this.iw.kx().mx() == 1 && this.iw.kx().jn() == 1 && pa.jy(this.iw.kx()) != null) {
            return pa.jy(this.iw.kx()).o();
        }
        if (pa.q(this.iw.kx()) != null) {
            return pa.q(this.iw.kx()).o();
        }
        return null;
    }

    private boolean ce() {
        if (this.iw.kx() == null || this.ig == null) {
            return false;
        }
        int by = this.iw.kx().by();
        return by == 1 || by == 2;
    }

    private void d(long j, long j2) {
        if (ce() && !this.q) {
            int by = this.iw.kx().by();
            long j3 = by == 1 ? 15000L : by == 2 ? 30000L : 0L;
            int i = j2 <= j3 ? (int) ((j2 - j) / 1000) : (int) ((j3 - j) / 1000);
            if (i < 0) {
                i = 0;
            }
            if (i == this.mp) {
                return;
            }
            this.mp = i;
            if (this.mp == 0) {
                this.q = true;
            }
            this.ig.dq(this.mp);
        }
    }

    private void dq(int i) {
        int mn = wp.d().mn(i);
        if (3 == mn) {
            this.iw.d(false);
            this.iw.dq(false);
            return;
        }
        if (1 == mn && com.bytedance.sdk.component.utils.q.p(this.iw.getContext())) {
            this.iw.d(false);
        } else if (2 == mn) {
            if (!com.bytedance.sdk.component.utils.q.s(this.iw.getContext()) && !com.bytedance.sdk.component.utils.q.p(this.iw.getContext()) && !com.bytedance.sdk.component.utils.q.iw(this.iw.getContext())) {
                return;
            } else {
                this.iw.d(false);
            }
        } else if (4 == mn) {
            this.iw.d(true);
            return;
        } else {
            if (5 != mn) {
                return;
            }
            if (!com.bytedance.sdk.component.utils.q.p(this.iw.getContext()) && !com.bytedance.sdk.component.utils.q.iw(this.iw.getContext())) {
                return;
            }
        }
        this.iw.dq(true);
    }

    private View u() {
        View view;
        WeakReference<View> weakReference = this.no;
        if (weakReference != null && (view = weakReference.get()) != null) {
            return view;
        }
        EcMallWebView ecMallWebView = new EcMallWebView(this.iw.getContext(), this.iw.kx(), this.ox == 9 ? 6 : 1);
        this.no = new WeakReference<>(ecMallWebView);
        return ecMallWebView;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
    public void J_() {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.dq(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void K_() {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.d(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void L_() {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.ox(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void M_() {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.p(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void N_() {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.s(this);
        }
        if (!ce() || this.q) {
            return;
        }
        this.ig.dq(0);
        this.q = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
    public boolean bl() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public com.bytedance.sdk.openadsdk.le.dq.d.d.dq d() {
        if (!j.dq(this.iw.kx())) {
            return null;
        }
        if (this.ia == null) {
            this.ia = new com.bytedance.sdk.openadsdk.le.dq.d.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.ox.3

                /* renamed from: d, reason: collision with root package name */
                private long f2518d = 0;

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void d() {
                    this.f2518d = SystemClock.elapsedRealtime();
                    fw.dq dqVar = new fw.dq();
                    dqVar.d(true);
                    dqVar.dq(true);
                    com.bytedance.sdk.openadsdk.iw.d.d.dq(ox.this, dqVar);
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void d(long j) {
                    if (this.f2518d == 0) {
                        this.f2518d = SystemClock.elapsedRealtime();
                    }
                    long elapsedRealtime = (SystemClock.elapsedRealtime() - this.f2518d) - j;
                    long j2 = elapsedRealtime >= 0 ? elapsedRealtime : 0L;
                    fw.dq dqVar = new fw.dq();
                    dqVar.dq(j);
                    dqVar.ox(((long) ox.this.dq()) * 1000);
                    dqVar.d(j2);
                    dqVar.dq(true);
                    com.bytedance.sdk.openadsdk.iw.d.d.ox(ox.this, dqVar);
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public String dq() {
                    if (ox.this.iw.kx() == null || ox.this.iw.kx().ir() != 1 || pa.q(ox.this.iw.kx()) == null) {
                        return null;
                    }
                    if (!ox.this.kk) {
                        ox.this.kk = true;
                    }
                    return pa.dq(ox.this.iw.kx());
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void dq(int i, int i2) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("creative_id", ox.this.iw.kx().fx());
                    hashMap.put("error_code", Integer.valueOf(i));
                    hashMap.put("extra_error_code", Integer.valueOf(i2));
                    com.bykv.vk.openvk.component.video.api.ox.ox q = pa.q(ox.this.iw.kx());
                    if (q != null) {
                        hashMap.put("video_size", Long.valueOf(q.s()));
                        hashMap.put("video_resolution", q.kk());
                    }
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(ox.this.iw.kx(), c.d(ox.this.iw.kx()), "play_start_error", hashMap);
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void dq(long j) {
                    if (this.f2518d == 0) {
                        this.f2518d = SystemClock.elapsedRealtime();
                    }
                    long elapsedRealtime = (SystemClock.elapsedRealtime() - this.f2518d) - j;
                    long j2 = elapsedRealtime >= 0 ? elapsedRealtime : 0L;
                    fw.dq dqVar = new fw.dq();
                    dqVar.dq(j);
                    dqVar.ox(((long) ox.this.dq()) * 1000);
                    dqVar.d(j2);
                    dqVar.dq(true);
                    com.bytedance.sdk.openadsdk.iw.d.d.d(ox.this, dqVar);
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void dq(long j, int i, int i2) {
                    if (this.f2518d == 0) {
                        this.f2518d = SystemClock.elapsedRealtime();
                    }
                    long dq = ((long) ox.this.dq()) * 1000;
                    long elapsedRealtime = (SystemClock.elapsedRealtime() - this.f2518d) - j;
                    long j2 = elapsedRealtime >= 0 ? elapsedRealtime : 0L;
                    fw.dq dqVar = new fw.dq();
                    dqVar.d(j2);
                    dqVar.ox(dq);
                    dqVar.dq(j);
                    dqVar.dq(i);
                    dqVar.d(i2);
                    dqVar.dq(true);
                    com.bytedance.sdk.openadsdk.iw.d.d.dq(ox.this, dqVar, "customer error");
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void ox() {
                    if (this.f2518d == 0) {
                        this.f2518d = SystemClock.elapsedRealtime();
                    }
                    long dq = ((long) ox.this.dq()) * 1000;
                    long elapsedRealtime = (SystemClock.elapsedRealtime() - this.f2518d) - dq;
                    long j = elapsedRealtime >= 0 ? elapsedRealtime : 0L;
                    fw.dq dqVar = new fw.dq();
                    dqVar.dq(dq);
                    dqVar.ox(dq);
                    dqVar.d(j);
                    dqVar.iw(0);
                    dqVar.dq(true);
                    com.bytedance.sdk.openadsdk.iw.d.d.s(ox.this, dqVar);
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void ox(long j) {
                    if (this.f2518d == 0) {
                        this.f2518d = SystemClock.elapsedRealtime();
                    }
                    long dq = ((long) ox.this.dq()) * 1000;
                    long elapsedRealtime = (SystemClock.elapsedRealtime() - this.f2518d) - j;
                    long j2 = elapsedRealtime >= 0 ? elapsedRealtime : 0L;
                    fw.dq dqVar = new fw.dq();
                    dqVar.dq(j);
                    dqVar.ox(dq);
                    dqVar.d(j2);
                    dqVar.s(0);
                    dqVar.iw(0);
                    dqVar.dq(true);
                    com.bytedance.sdk.openadsdk.iw.d.d.dq(ox.this, dqVar, (Map<String, Object>) null);
                }

                @Override // com.bytedance.sdk.openadsdk.le.dq.d.d.dq
                public void p() {
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(ox.this.iw.kx(), c.d(ox.this.iw.kx()), "feed_auto_play", 0L, 0, (Map<String, Object>) null);
                    if (pa.q(ox.this.iw.kx()) != null) {
                        p dq = pa.dq(4, ox.this.iw.kx());
                        dq.dq("material_meta", ox.this.iw.kx());
                        com.bytedance.sdk.openadsdk.f.d.ox.d ds = ox.this.iw.kx().ds();
                        dq.dq("ad_slot", Integer.valueOf(ds != null ? ds.k() : 0));
                        dq.s(-1);
                        com.bytedance.sdk.openadsdk.iw.d.d.d(ox.this.iw.kx(), ox.this, dq);
                    }
                }
            };
        }
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public double dq() {
        if (o.dq(this.iw.kx())) {
            return 0.0d;
        }
        return pa.iw(this.iw.kx());
    }

    public NativeVideoTsView dq(boolean z) {
        NativeVideoTsView nativeDrawVideoTsView = z ? new NativeDrawVideoTsView(this.iw.getContext(), this.iw.kx()) : new NativeVideoTsView(this.iw.getContext(), this.iw.kx(), false, false, c.d(this.ox), false, false);
        this.o = new WeakReference<>(nativeDrawVideoTsView);
        this.iw.dq(this.o);
        this.iw.dq();
        return nativeDrawVideoTsView;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
    public void dq(int i, int i2) {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.dq(i, i2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void dq(long j, long j2) {
        com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar = this.s;
        if (dqVar != null) {
            dqVar.dq(j, j2);
        }
        d(j, j2);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
        View i;
        try {
            dq(viewGroup, (List<View>) null, list, list2, list3, (View) null, dqVar);
            if (pVar != null) {
                View findViewById = viewGroup.findViewById(pVar.ig());
                if (findViewById != null && iw() != null) {
                    findViewById.setVisibility(0);
                    if (findViewById instanceof ViewGroup) {
                        ((ViewGroup) findViewById).removeAllViews();
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(iw());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                        layoutParams.width = com.bytedance.sdk.openadsdk.core.ir.ce.ox(viewGroup.getContext(), 38.0f);
                        layoutParams.height = com.bytedance.sdk.openadsdk.core.ir.ce.ox(viewGroup.getContext(), 38.0f);
                        findViewById.setLayoutParams(layoutParams);
                        ((ViewGroup) findViewById).addView(imageView, -1, -1);
                    } else if (findViewById instanceof ImageView) {
                        ((ImageView) findViewById).setImageBitmap(iw());
                    }
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(pVar.mn());
                if (frameLayout != null && (i = i()) != null) {
                    com.bytedance.sdk.openadsdk.core.ir.ce.ia(i);
                    frameLayout.removeAllViews();
                    frameLayout.addView(i, -1, -1);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.d dVar) {
        this.ig = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public void dq(com.bytedance.sdk.openadsdk.le.dq.d.dq.dq dqVar) {
        this.s = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
        com.bytedance.sdk.openadsdk.core.i.ox oxVar = this.iw;
        if (oxVar != null) {
            oxVar.dq(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public s e() {
        return new MediationNativeManagerDefault();
    }

    public int h() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d, com.bytedance.sdk.openadsdk.f.d.d.q
    public View i() {
        NativeVideoTsView dq;
        NativeVideoTsView nativeVideoTsView;
        if (this.iw.kx() != null && this.iw.getContext() != null) {
            if (com.bytedance.sdk.openadsdk.core.live.p.p.dq(this.iw.kx())) {
                return u();
            }
            if (n()) {
                if (this.o != null && (nativeVideoTsView = this.o.get()) != null) {
                    return nativeVideoTsView;
                }
                dq = dq(false);
                dq.setVideoAdClickListenerTTNativeAd(this);
                dq.setAdCreativeClickListener(new NativeVideoTsView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.ox.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.dq
                    public void dq(View view, int i) {
                        if (ox.this.iw.p() != null) {
                            ox.this.iw.p().dq(view, i);
                        }
                    }
                });
                no.ia().dq(-1L);
                dq.setControllerStatusCallBack(new NativeVideoTsView.ox() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.ox.2
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.ox
                    public void dq(boolean z, long j, long j2, long j3, boolean z2, boolean z3) {
                        com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = ox.this.dq;
                        if (dqVar != null) {
                            dqVar.dq = z;
                            dqVar.s = j;
                            dqVar.iw = j2;
                            dqVar.mn = j3;
                            dqVar.p = z2;
                            dqVar.ia = z3;
                        }
                    }
                });
                dq.setVideoAdLoadListener(this);
                dq.setVideoAdInteractionListener(this);
                if (5 == this.ox) {
                    dq.setIsAutoPlay(this.iw.ji() ? this.f2517d.ia() : this.iw.h());
                } else {
                    dq.setIsAutoPlay(this.iw.h());
                }
                dq.setIsQuiet(wp.d().p(this.mn));
                com.bytedance.sdk.openadsdk.core.o.d.ox dq2 = this.iw.p().dq();
                if (dq2 != null) {
                    dq2.dq(this);
                }
                com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.iw.kx()).dq(this.ox).d(this.mn);
                if (!n() && dq != null && dq.dq(0L, true, false)) {
                    return dq;
                }
            }
            dq = null;
            com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.iw.kx()).dq(this.ox).d(this.mn);
            if (!n()) {
            }
        }
        return null;
    }

    public int ji() {
        return this.mn;
    }

    public NativeVideoTsView kx() {
        if (this.o != null) {
            return this.o.get();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d, com.bytedance.sdk.openadsdk.f.d.d.q
    public Map<String, Object> le() {
        Map<String, Object> le = this.iw.le();
        if (this.iw.kx() == null) {
            return le;
        }
        if (this.iw.kx().ur() != null) {
            if (le == null) {
                le = new HashMap<>();
            }
            le.put("group_info", this.iw.kx().ur().p());
            try {
                le.put("live_support_saas_live", Boolean.valueOf(com.bytedance.sdk.openadsdk.core.live.d.dq().ox() == 2 && com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.iw.kx().ap(), this.iw.kx().po())));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.iw.kx().gv() != 166) {
            return le;
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw.kx())) {
            int p = ce.p(this.iw.kx());
            int s = ce.s(this.iw.kx());
            if (le == null) {
                le = new HashMap<>();
            }
            le.put("live_author_follower_count", Integer.valueOf(p));
            le.put("live_watch_count", Integer.valueOf(s));
        }
        return le;
    }

    public boolean n() {
        return j.d(this.iw.kx());
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
    public com.bytedance.sdk.openadsdk.core.multipro.d.dq op() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int ox() {
        try {
            if (this.p == null) {
                this.p = c();
            }
            int[] iArr = this.p;
            if (iArr != null && iArr.length >= 2) {
                return iArr[0];
            }
            return 1280;
        } catch (Throwable th) {
            ig.d("TTFeedAdImpl", "getAdViewWidth error", th);
            return 1280;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.no
    public int p() {
        try {
            if (this.p == null) {
                this.p = c();
            }
            int[] iArr = this.p;
            if (iArr != null && iArr.length >= 2) {
                return iArr[1];
            }
            return 720;
        } catch (Throwable th) {
            ig.d("TTFeedAdImpl", "getAdViewHeight error", th);
            return 720;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d, com.bytedance.sdk.openadsdk.f.d.d.q
    public void wp() {
        NativeVideoTsView nativeVideoTsView;
        if (this.o != null && (nativeVideoTsView = this.o.get()) != null) {
            nativeVideoTsView.gh();
        }
        super.wp();
    }
}
