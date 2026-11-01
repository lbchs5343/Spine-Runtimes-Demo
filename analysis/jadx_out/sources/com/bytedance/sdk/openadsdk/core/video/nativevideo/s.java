package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.p.d;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bykv.vk.openvk.component.video.dq.s.d;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.d.dq.d.mn;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.k;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.i;
import com.bytedance.sdk.openadsdk.core.r.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.f;
import com.bytedance.sdk.openadsdk.core.widget.jy;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import com.bytedance.sdk.openadsdk.upie.video.lottie.TTLottieVideoContainer;
import com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView;
import com.bytedance.sdk.openadsdk.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class s implements com.bykv.vk.openvk.component.video.api.p.d<j>, com.bykv.vk.openvk.component.video.api.renderview.dq, e.dq, f.d, jy.dq {
    boolean bl;
    private final int bu;
    private View by;

    /* renamed from: c, reason: collision with root package name */
    com.bytedance.sdk.openadsdk.i.dq.d.dq.dq f3671c;
    int cd;
    boolean ce;
    private com.bytedance.sdk.openadsdk.core.d.dq cv;

    /* renamed from: d, reason: collision with root package name */
    com.bykv.vk.openvk.component.video.api.renderview.d f3672d;
    private dq.InterfaceC0174dq dc;
    View dq;
    private String ds;

    /* renamed from: e, reason: collision with root package name */
    j f3673e;
    private View er;

    /* renamed from: f, reason: collision with root package name */
    protected TTViewStub f3674f;
    private final int fd;
    int fw;
    int gh;
    private TTViewStub gx;
    f h;
    private boolean ha;
    boolean i;
    View ia;
    TextView ig;
    com.bytedance.sdk.openadsdk.core.d.dq ir;
    ImageView iw;
    private TextView j;
    dq ji;
    private final int jw;
    TTProgressBar jy;
    int k;
    ImageView kk;
    Context kx;
    private TextView l;
    volatile boolean le;
    protected TTViewStub mn;
    TextView mp;
    com.bytedance.sdk.openadsdk.core.o.d.ox n;
    private NativeVideoTsView.dq nh;
    RoundImageView no;
    View o;
    private RoundImageView ob;
    com.bykv.vk.openvk.component.video.api.p.ox op;
    ImageView ox;
    View p;
    TextView q;
    int r;
    View s;
    private RelativeLayout t;
    com.bytedance.sdk.openadsdk.core.d.dq u;
    private RelativeLayout uh;
    private TextView v;
    private RelativeLayout vf;
    private int vw;
    private TextView wn;
    EnumSet<d.dq> wp;
    private AtomicBoolean ws;
    private RoundImageView xz;
    private TextView yy;

    public s(Context context, View view, boolean z, EnumSet<d.dq> enumSet, j jVar, com.bykv.vk.openvk.component.video.api.p.ox oxVar, com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this(context, view, z, enumSet, jVar, oxVar, true, dqVar);
    }

    public s(Context context, View view, boolean z, EnumSet<d.dq> enumSet, j jVar, com.bykv.vk.openvk.component.video.api.p.ox oxVar, boolean z2, com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this.i = true;
        this.bl = true;
        this.ce = true;
        this.jw = 1;
        this.fd = 2;
        this.bu = 3;
        this.ws = new AtomicBoolean(false);
        if (this instanceof p) {
            return;
        }
        this.kx = wp.getContext().getApplicationContext();
        p(z2);
        this.dq = view;
        this.i = z;
        this.wp = enumSet == null ? EnumSet.noneOf(d.dq.class) : enumSet;
        this.op = oxVar;
        this.cv = dqVar;
        this.f3673e = jVar;
        bl();
        p(8);
        dq(context, this.dq, jVar);
        p();
        f();
    }

    private void bl() {
        this.vw = 1;
        String d2 = c.d(this.f3673e);
        String str = "embeded_ad_landingpage";
        if (d2 == null) {
            d2 = this.bl ? "embeded_ad" : "embeded_ad_landingpage";
        }
        this.vw = c.dq(d2);
        if (!this.bl && d2.equals("draw_ad")) {
            str = "draw_ad_landingpage";
        } else if (this.bl || !d2.equals("embeded_ad")) {
            str = d2;
        }
        this.ds = str;
    }

    private void c() {
        final long currentTimeMillis = System.currentTimeMillis();
        j jVar = this.f3673e;
        if (jVar != null && com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            String kk = ce.kk(this.f3673e);
            if (!TextUtils.isEmpty(kk)) {
                com.bytedance.sdk.openadsdk.ia.d.dq(kk).dq(this.ob);
            }
            String ox = ce.ox(this.f3673e);
            String ia = ce.ia(this.f3673e);
            if (!TextUtils.isEmpty(ox)) {
                com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.l, ox);
            }
            if (this.vf == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.ia.d.dq(ia).ox(2).dq(new com.bytedance.sdk.component.iw.f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.12
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                    s sVar = s.this;
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(sVar.f3673e, sVar.ds, i, str);
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    Bitmap dq = com.bytedance.sdk.component.adexpress.p.dq.dq(s.this.kx, noVar.ox(), 25);
                    if (dq == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(s.this.vf.getResources(), dq);
                    mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (s.this.vf != null) {
                                s.this.vf.setBackground(bitmapDrawable);
                            }
                        }
                    });
                    s sVar = s.this;
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(sVar.f3673e, sVar.ds, System.currentTimeMillis() - currentTimeMillis);
                }
            }, 4);
        }
    }

    private boolean ce() {
        return TextUtils.equals(this.ds, "splash_ad") || TextUtils.equals(this.ds, "cache_splash_ad");
    }

    private void d(Context context, View view) {
        if (view == null) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(2114387893);
        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(2114387691);
        if (u()) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) relativeLayout, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) relativeLayout2, 8);
            this.vf = relativeLayout;
        } else {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) relativeLayout2, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) relativeLayout, 8);
            this.vf = relativeLayout2;
        }
        RelativeLayout relativeLayout3 = this.vf;
        if (relativeLayout3 == null) {
            return;
        }
        this.ob = (RoundImageView) relativeLayout3.findViewById(2114387836);
        this.l = (TextView) this.vf.findViewById(2114387747);
        this.t = (RelativeLayout) this.vf.findViewById(2114387696);
    }

    private void d(View view, Context context) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.f3674f) == null || tTViewStub.getParent() == null || this.er != null) {
            return;
        }
        this.f3674f.dq();
        this.er = view.findViewById(2114387677);
        this.wn = (TextView) view.findViewById(2114387873);
        this.j = (TextView) view.findViewById(2114387847);
    }

    private void d(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        j jVar;
        if (dqVar == null || (jVar = this.f3673e) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.d.jy dq = com.bytedance.sdk.openadsdk.core.video.p.dq.dq(Integer.valueOf(jVar.hashCode()));
        if (dq instanceof i) {
            ((i) dq).dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
        }
    }

    private void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        j jVar;
        if (dqVar == null || (jVar = this.f3673e) == null || !com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(tn.p("click_live_element", "click_live_feed"));
    }

    private void dq(q qVar, com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        k p;
        if (dqVar == null) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(qVar);
        com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar = (com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class);
        if ((qVar instanceof com.bytedance.sdk.openadsdk.core.i.ox) && (p = ((com.bytedance.sdk.openadsdk.core.i.ox) qVar).p()) != null) {
            p.dq(oxVar);
        }
    }

    private void er() {
        if (ce()) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, 8);
            if (!wp.d().nt()) {
                com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.p, 8);
                com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.s, 8);
                com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.iw, 8);
                return;
            }
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.p, 0);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.vf, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.iw(this.p);
        if (ce() && wp.d().nt()) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.s, 8);
        } else {
            com.bytedance.sdk.openadsdk.core.ir.ce.iw(this.s);
        }
        if (this.iw == null || TextUtils.isEmpty(pa.d(this.f3673e))) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.iw(this.iw);
        com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.f3673e)).dq(this.iw);
        dq(this.iw, pa.d(this.f3673e));
    }

    private void ia(int i) {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.o, i);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.er, i);
    }

    private void ir() {
        if (this.kx == null || this.dq == null) {
            return;
        }
        View view = new View(this.kx) { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.10

            /* renamed from: d, reason: collision with root package name */
            private final AtomicBoolean f3675d = new AtomicBoolean(true);

            private void d() {
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar;
                if (this.f3675d.getAndSet(true) || (oxVar = s.this.n) == null) {
                    return;
                }
                oxVar.kk();
            }

            private void dq() {
                if (this.f3675d.getAndSet(false)) {
                    if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(s.this.f3673e) || s.this.f3673e.y() == 4) {
                        s.this.n();
                    }
                }
            }

            @Override // android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                s.this.ws.set(false);
                dq();
            }

            @Override // android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                s.this.ws.set(true);
                d();
            }

            @Override // android.view.View
            public void onFinishTemporaryDetach() {
                super.onFinishTemporaryDetach();
                dq();
            }

            @Override // android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(0, 0);
            }

            @Override // android.view.View
            public void onStartTemporaryDetach() {
                super.onStartTemporaryDetach();
                d();
            }

            @Override // android.view.View
            public void onWindowFocusChanged(boolean z) {
                super.onWindowFocusChanged(z);
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = s.this.n;
                if (oxVar == null || !z) {
                    return;
                }
                oxVar.ia();
            }
        };
        View view2 = this.dq;
        if (view2 instanceof ViewGroup) {
            ((ViewGroup) view2).addView(view, 0, new RelativeLayout.LayoutParams(0, 0));
        }
    }

    private boolean j() {
        j jVar;
        return this.bl && this.o != null && (jVar = this.f3673e) != null && jVar.op() == 1;
    }

    private int mn(int i) {
        if (this.gh <= 0 || this.r <= 0) {
            return 0;
        }
        int ox = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 228.0f);
        int ox2 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 160.0f);
        int i2 = (int) (this.r * ((i * 1.0f) / this.gh));
        return i2 > ox ? ox : i2 < ox2 ? ox2 : i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        mn.dq(new kk("native_video_layout_download_listener") { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.1
            @Override // java.lang.Runnable
            public void run() {
                s sVar = s.this;
                if (sVar.n == null) {
                    sVar.n = com.bytedance.sdk.openadsdk.core.o.s.dq(sVar.kx, sVar.f3673e, sVar.ds, false);
                }
                com.bytedance.sdk.openadsdk.core.d.dq dqVar = s.this.ir;
                if (dqVar != null) {
                    ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(s.this.n);
                }
                com.bytedance.sdk.openadsdk.core.d.dq dqVar2 = s.this.u;
                if (dqVar2 != null) {
                    ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(s.this.n);
                }
                if (s.this.dc != null) {
                    s sVar2 = s.this;
                    sVar2.n.dq(sVar2.dc);
                }
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = s.this.n;
                if (oxVar != null) {
                    oxVar.s(false);
                }
            }
        });
    }

    private boolean op() {
        j jVar = this.f3673e;
        return jVar != null && jVar.tv() == null && this.f3673e.ny() == null && this.f3673e.gx() == 1 && j.d(this.f3673e);
    }

    private boolean u() {
        if (this.f3673e == null) {
            return false;
        }
        if ("fullscreen_interstitial_ad".equals(this.ds) || "rewarded_video".equals(this.ds)) {
            int ho = this.f3673e.ho();
            float es = this.f3673e.es();
            if (ho == 1 && es == 100.0f) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wn() {
        try {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            layoutParams.addRule(15);
            View view = this.o;
            if (view != null) {
                view.setLayoutParams(layoutParams);
            }
            View view2 = this.dq;
            if (view2 == null) {
                return;
            }
            int measuredWidth = view2.getMeasuredWidth();
            int measuredHeight = this.dq.getMeasuredHeight();
            int ox = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 200.0f);
            int ox2 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 331.0f);
            int ox3 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 110.0f);
            int ox4 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 100.0f);
            if (measuredWidth >= ox && measuredHeight >= ox2) {
                iw(1);
                return;
            }
            if (measuredWidth > ox3 && measuredHeight > ox4) {
                iw(3);
                return;
            }
            iw(2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void cd() {
        if (this.f3673e == null) {
            return;
        }
        if (this.ha) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.v, 8);
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3673e)) {
            String kk = ce.kk(this.f3673e);
            String ox = ce.ox(this.f3673e);
            String ia = ce.ia(this.f3673e);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.by, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.uh, 0);
            if (!TextUtils.isEmpty(kk)) {
                com.bytedance.sdk.openadsdk.ia.d.dq(kk).dq(this.xz);
            }
            if (!TextUtils.isEmpty(ox)) {
                com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.yy, ox);
            }
            if (this.uh == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.ia.d.dq(ia).ox(2).dq(new com.bytedance.sdk.component.iw.f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.11
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    Bitmap dq = com.bytedance.sdk.component.adexpress.p.dq.dq(s.this.kx, noVar.ox(), 25);
                    if (dq == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(s.this.uh.getResources(), dq);
                    mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (s.this.uh != null) {
                                s.this.uh.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    public void d() {
        if (ce()) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.p, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.s, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.iw, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, 8);
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.vf, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.s(this.p);
        com.bytedance.sdk.openadsdk.core.ir.ce.s(this.s);
        ImageView imageView = this.iw;
        if (imageView != null) {
            com.bytedance.sdk.openadsdk.core.ir.ce.s(imageView);
        }
    }

    public void d(int i) {
        ig.dq("Progress", "setSeekProgress-percent=".concat(String.valueOf(i)));
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.jy, 0);
        TTProgressBar tTProgressBar = this.jy;
        if (tTProgressBar != null) {
            tTProgressBar.setProgress(i);
        }
    }

    public void d(int i, int i2) {
        ViewGroup.LayoutParams layoutParams;
        View view = this.dq;
        if (view == null || (layoutParams = view.getLayoutParams()) == null) {
            return;
        }
        if (i == -1 || i == -2 || i > 0) {
            layoutParams.width = i;
        }
        if (i2 == -1 || i2 == -2 || i2 > 0) {
            layoutParams.height = i2;
        }
        this.dq.setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.dq
    public void d(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.f3672d.getHolder()) {
            return;
        }
        this.le = false;
        if (i()) {
            this.ji.d(this, surfaceHolder);
        }
    }

    public void d(ViewGroup viewGroup) {
    }

    public void d(boolean z) {
    }

    public void d(boolean z, boolean z2) {
        ImageView imageView = this.ox;
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(r.ox(this.kx, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageDrawable(r.ox(this.kx, "tt_stop_movebar_textpage"));
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    public void dq() {
        dq(false, this.i);
        e();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    public void dq(int i) {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.t, i);
    }

    public void dq(int i, int i2) {
        if (i == -1) {
            i = com.bytedance.sdk.openadsdk.core.ir.ce.p(this.kx);
        }
        if (i <= 0) {
            return;
        }
        this.fw = i;
        if (no() || o() || this.wp.contains(d.dq.fixedSize)) {
            this.cd = i2;
        } else {
            this.cd = mn(i);
        }
        d(this.fw, this.cd);
    }

    public void dq(long j) {
    }

    public void dq(long j, long j2) {
    }

    public void dq(Context context, View view) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.gx) == null || tTViewStub.getParent() == null || this.by != null) {
            return;
        }
        this.by = this.gx.dq();
        this.uh = (RelativeLayout) view.findViewById(2114387953);
        this.xz = (RoundImageView) view.findViewById(2114387958);
        this.yy = (TextView) view.findViewById(2114387932);
        this.v = (TextView) view.findViewById(2114387882);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.bytedance.sdk.openadsdk.upie.video.lottie.TTLottieVideoContainer] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView] */
    public void dq(Context context, View view, j jVar) {
        System.currentTimeMillis();
        if (view != null) {
            view.setKeepScreenOn(true);
        }
        SSRenderTextureView tTLottieVideoContainer = com.bytedance.sdk.openadsdk.s.dq.d(jVar) ? new TTLottieVideoContainer(this.kx) : com.bytedance.sdk.openadsdk.s.dq.ox(jVar) ? new UpieVideoView(context) : new SSRenderTextureView(this.kx);
        if (view instanceof RelativeLayout) {
            ((RelativeLayout) view).addView(tTLottieVideoContainer, 0, tn.q(-2, -2, 13));
            if (ce()) {
                view.setBackgroundColor(0);
            } else {
                view.setBackgroundColor(-16777216);
            }
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) tTLottieVideoContainer, 8);
        this.f3672d = tTLottieVideoContainer;
        this.ox = (ImageView) view.findViewById(2114387629);
        this.jy = (TTProgressBar) view.findViewById(2114387656);
        this.p = view.findViewById(2114387905);
        this.s = view.findViewById(2114387634);
        this.iw = (ImageView) view.findViewById(2114387654);
        this.mn = (TTViewStub) view.findViewById(2114387749);
        this.gx = (TTViewStub) view.findViewById(2114387669);
        this.f3674f = (TTViewStub) view.findViewById(2114387833);
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            d(context, view);
        }
        System.currentTimeMillis();
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.dq
    public void dq(SurfaceTexture surfaceTexture, int i, int i2) {
        this.le = true;
        if (i()) {
            this.ji.dq(this, surfaceTexture);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    public void dq(Drawable drawable) {
        View view = this.dq;
        if (view != null) {
            view.setBackgroundDrawable(drawable);
        }
    }

    public void dq(Message message) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.dq
    public void dq(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.f3672d.getHolder()) {
            return;
        }
        this.le = true;
        if (i()) {
            this.ji.dq(this, surfaceHolder);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.dq
    public void dq(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder != this.f3672d.getHolder()) {
            return;
        }
        i();
    }

    public void dq(View view, Context context) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.mn) == null || tTViewStub.getParent() == null || this.ia != null) {
            return;
        }
        this.ia = this.mn.dq();
        this.mn.setVisibility(0);
        this.kk = (ImageView) view.findViewById(2114387809);
        this.o = view.findViewById(2114387961);
        this.no = (RoundImageView) view.findViewById(2114387667);
        this.ig = (TextView) view.findViewById(2114387957);
        this.mp = (TextView) view.findViewById(2114387769);
        this.q = (TextView) view.findViewById(2114387689);
    }

    public void dq(View view, boolean z) {
    }

    public void dq(ViewGroup viewGroup) {
    }

    public void dq(final ImageView imageView, String str) {
        if (imageView == null || !com.bytedance.sdk.openadsdk.s.dq.dq(this.f3673e) || com.bytedance.sdk.openadsdk.s.dq.p(this.f3673e)) {
            return;
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(str).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new com.bytedance.sdk.component.iw.f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.2
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no<Bitmap> noVar) {
                Bitmap ox;
                if (noVar == null || (ox = noVar.ox()) == null) {
                    return;
                }
                final Bitmap dq = com.bytedance.sdk.component.adexpress.p.dq.dq(s.this.kx, ox, 25);
                mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dq != null) {
                            imageView.setBackground(new BitmapDrawable(dq));
                        }
                    }
                });
            }
        }, 4);
    }

    public void dq(com.bykv.vk.openvk.component.video.api.p.dq dqVar) {
        if (dqVar instanceof dq) {
            this.ji = (dq) dqVar;
            gh();
        }
    }

    public void dq(dq.InterfaceC0174dq interfaceC0174dq) {
        this.dc = interfaceC0174dq;
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.n;
        if (oxVar != null) {
            oxVar.dq(interfaceC0174dq);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @SuppressLint({"ClickableViewAccessibility"})
    public void dq(j jVar, WeakReference<Context> weakReference, boolean z) {
        j jVar2;
        if (jVar == null || ce()) {
            return;
        }
        dq(false, this.i);
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            dq(wp.getContext(), this.dq);
            cd();
            return;
        }
        dq(this.dq, wp.getContext());
        View view = this.ia;
        if (view != null) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(view, 0);
        }
        ImageView imageView = this.kk;
        if (imageView != null) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) imageView, 0);
        }
        if (c.ox(this.f3673e)) {
            d(this.dq, wp.getContext());
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.o, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.kk, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.er, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.wn, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.j, 0);
            if (this.j != null && com.bytedance.sdk.component.utils.q.ox(wp.getContext()) == 0) {
                com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.j, 8);
            }
            View view2 = this.ia;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        com.bykv.vk.openvk.component.video.api.p.ox oxVar = s.this.op;
                        if (oxVar != null) {
                            ((com.bykv.vk.openvk.component.video.api.p.dq) oxVar).dq();
                            com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar = s.this.f3671c;
                            if (dqVar != null) {
                                dqVar.dq();
                            }
                        }
                    }
                });
            }
            if (this.kk != null && !TextUtils.isEmpty(pa.d(this.f3673e))) {
                if (com.bytedance.sdk.openadsdk.s.dq.d(jVar)) {
                    com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.f3673e)).dq(this.kk);
                    dq(this.kk, pa.d(this.f3673e));
                } else {
                    com.bykv.vk.openvk.component.video.dq.s.d.dq(2147483647L, pa.dq(this.f3673e), new d.InterfaceC0011d() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.4
                        @Override // com.bykv.vk.openvk.component.video.dq.s.d.InterfaceC0011d
                        public void dq(Bitmap bitmap) {
                            if (bitmap == null) {
                                com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(s.this.f3673e)).dq(s.this.kk);
                                return;
                            }
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) s.this.kk.getLayoutParams();
                            if (bitmap.getWidth() > bitmap.getHeight()) {
                                float p = (com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext()) * bitmap.getHeight()) / bitmap.getWidth();
                                layoutParams.width = com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext());
                                layoutParams.height = (int) p;
                                layoutParams.addRule(13);
                                s.this.kk.setLayoutParams(layoutParams);
                            }
                            s.this.kk.setImageBitmap(bitmap);
                        }
                    });
                }
            }
        } else {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.o, 0);
            if (this.kk != null && !TextUtils.isEmpty(pa.d(this.f3673e))) {
                com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.f3673e)).dq(this.kk);
                dq(this.kk, pa.d(this.f3673e));
            }
            if (j()) {
                this.o.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.5
                    @Override // java.lang.Runnable
                    public void run() {
                        s.this.wn();
                    }
                });
            }
        }
        String w = !TextUtils.isEmpty(jVar.w()) ? jVar.w() : !TextUtils.isEmpty(jVar.lk()) ? jVar.lk() : !TextUtils.isEmpty(jVar.gl()) ? jVar.gl() : "";
        if (this.no != null && (jVar2 = this.f3673e) != null && jVar2.wq() != null && this.f3673e.wq().dq() != null) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.no, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ig, 4);
            com.bytedance.sdk.openadsdk.ia.d.dq(this.f3673e.wq()).dq(this.no);
            if (op()) {
                this.no.setOnClickListener(this.u);
                this.no.setOnTouchListener(this.u);
            } else {
                this.no.setOnClickListener(this.ir);
                this.no.setOnTouchListener(this.ir);
            }
        } else if (!TextUtils.isEmpty(w)) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.no, 4);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ig, 0);
            TextView textView = this.ig;
            if (textView != null) {
                textView.setText(w.substring(0, 1));
                if (op()) {
                    this.ig.setOnClickListener(this.u);
                    this.ig.setOnTouchListener(this.u);
                } else {
                    this.ig.setOnClickListener(this.ir);
                    this.ig.setOnTouchListener(this.ir);
                }
            }
        }
        if (this.mp != null && !TextUtils.isEmpty(w)) {
            this.mp.setText(w);
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.mp, 0);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.q, 0);
        String tu = jVar.tu();
        if (TextUtils.isEmpty(tu)) {
            int y = jVar.y();
            tu = y != 4 ? y != 5 ? "查看详情" : "立即拨打" : "立即下载";
        }
        TextView textView2 = this.q;
        if (textView2 != null) {
            textView2.setText(tu);
            this.q.setOnClickListener(this.ir);
            this.q.setOnTouchListener(this.ir);
        }
        TextView textView3 = this.wn;
        if (textView3 != null) {
            textView3.setText(tu);
            this.wn.setOnClickListener(this.ir);
            this.wn.setOnTouchListener(this.ir);
        }
        if (this.ce) {
            return;
        }
        ia(4);
    }

    public void dq(NativeVideoTsView.dq dqVar) {
        this.nh = dqVar;
    }

    public void dq(q qVar) {
        dq(qVar, this.ir);
        dq(qVar, this.u);
    }

    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        this.f3671c = dqVar;
        com.bytedance.sdk.openadsdk.core.d.dq dqVar2 = this.ir;
        if (dqVar2 != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(dqVar);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void dq(j jVar, WeakReference weakReference, boolean z) {
        dq(jVar, (WeakReference<Context>) weakReference, z);
    }

    public void dq(String str) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    public void dq(boolean z) {
        this.ce = z;
    }

    public void dq(boolean z, boolean z2) {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.jy, z ? 0 : 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, 8);
    }

    public void dq(boolean z, boolean z2, boolean z3) {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.jy, 0);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, (z && (com.bytedance.sdk.openadsdk.core.ir.ce.p(this.p) && com.bytedance.sdk.openadsdk.core.ir.ce.p(this.vf))) ? 0 : 8);
    }

    public boolean dq(int i, com.bykv.vk.openvk.component.video.api.ox.ox oxVar, boolean z) {
        f fVar = this.h;
        return fVar == null || fVar.dq(i, oxVar, z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.dq
    public boolean dq(SurfaceTexture surfaceTexture) {
        this.le = false;
        if (!i()) {
            return true;
        }
        this.ji.d(this, surfaceTexture);
        return true;
    }

    public void e() {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.ia, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.kk, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.o, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.no, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ig, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.mp, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.q, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.by, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.uh, 8);
    }

    public void f() {
        View view;
        bl();
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3673e)) {
            com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.cv;
            if (dqVar != null) {
                this.ir = dqVar;
            } else {
                this.ir = new com.bytedance.sdk.openadsdk.core.d.dq(this.kx, this.f3673e, this.ds, this.vw);
            }
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.6
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
                public void dq(View view2, int i) {
                    if (s.this.nh != null) {
                        s.this.nh.dq(view2, i);
                    }
                }
            });
            if (this.cv == null && (view = this.dq) != null) {
                view.setOnClickListener(this.ir);
                this.dq.setOnTouchListener(this.ir);
            }
            if (com.bytedance.sdk.openadsdk.core.ir.ce.p(this.t)) {
                this.t.setOnClickListener(this.ir);
                this.t.setOnTouchListener(this.ir);
                return;
            }
            return;
        }
        ir();
        com.bytedance.sdk.openadsdk.core.d.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.d.dq(this.kx, this.f3673e, this.ds, this.vw);
        this.ir = dqVar2;
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d(true);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.7
            @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
            public void dq(View view2, int i) {
                if (s.this.nh != null) {
                    s.this.nh.dq(view2, i);
                }
            }
        });
        d(this.ir);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.kk) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.kk.class)).s(true);
        if (this.bl) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
        } else {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(false);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
        }
        if (op()) {
            com.bytedance.sdk.openadsdk.core.d.dq dqVar3 = new com.bytedance.sdk.openadsdk.core.d.dq(this.kx, this.f3673e, this.ds, this.vw);
            this.u = dqVar3;
            d(dqVar3);
            mn.dq dqVar4 = new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.8
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.mn.dq
                public boolean d() {
                    View view2;
                    RoundImageView roundImageView;
                    TextView textView;
                    if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(s.this.f3673e)) {
                        return true;
                    }
                    View view3 = s.this.ia;
                    return (view3 != null && view3.getVisibility() == 0) || ((view2 = s.this.o) != null && view2.getVisibility() == 0) || (((roundImageView = s.this.no) != null && roundImageView.getVisibility() == 0) || ((textView = s.this.ig) != null && textView.getVisibility() == 0));
                }

                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.mn.dq
                public boolean dq() {
                    f fVar = s.this.h;
                    boolean dq = fVar != null ? fVar.dq() : false;
                    StringBuilder sb = new StringBuilder("isVisible=");
                    sb.append(dq);
                    sb.append(",mPlayBtn.getVisibility() == VISIBLE->");
                    sb.append(s.this.ox.getVisibility() == 0);
                    ig.dq("ClickCreativeListener", sb.toString());
                    return dq || s.this.ox.getVisibility() == 0;
                }
            };
            ((com.bytedance.sdk.openadsdk.core.d.dq.d.mn) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.mn.class)).dq(dqVar4);
            if (com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq()) {
                com.bytedance.sdk.component.no.s.dq.dq().dq(this.f3673e.hashCode() + this.f3673e.el()).put("visibility_listener", dqVar4);
            }
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d(true);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.9
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d.dq
                public void dq(View view2, int i) {
                    if (s.this.nh != null) {
                        s.this.nh.dq(view2, i);
                    }
                }
            });
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.kk) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.kk.class)).s(true);
            if (this.bl) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
            } else {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(false);
            }
            dq(this.u);
            View view2 = this.dq;
            if (view2 != null) {
                view2.setOnClickListener(this.u);
                this.dq.setOnTouchListener(this.u);
            }
        }
    }

    public com.bykv.vk.openvk.component.video.api.renderview.d fw() {
        return this.f3672d;
    }

    public void gh() {
        if (this.ji == null || this.h != null) {
            return;
        }
        System.currentTimeMillis();
        f fVar = new f();
        this.h = fVar;
        fVar.dq(this.kx, this.dq);
        this.h.dq(this.ji, this);
        System.currentTimeMillis();
    }

    public void h() {
        if (ce()) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.s(this.p);
            com.bytedance.sdk.openadsdk.core.ir.ce.s(this.s);
            ImageView imageView = this.iw;
            if (imageView != null) {
                com.bytedance.sdk.openadsdk.core.ir.ce.s(imageView);
            }
        }
    }

    public boolean i() {
        if (this.ji != null) {
            return true;
        }
        ig.p("NewLiveViewLayout", "callback is null");
        return false;
    }

    public void ia() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3673e)) {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.vf, 8);
        } else {
            com.bytedance.sdk.openadsdk.core.ir.ce.s(this.p);
        }
    }

    public void ig() {
        dq(true, false);
    }

    public void iw() {
    }

    public void iw(int i) {
        j jVar;
        if (this.no == null || (jVar = this.f3673e) == null || jVar.wq() == null || this.f3673e.wq().dq() == null) {
            return;
        }
        if (i == 1) {
            int ox = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 71.0f);
            RelativeLayout.LayoutParams q = tn.q(ox, ox, 14);
            this.no.setLayoutParams(q);
            this.ig.setLayoutParams(q);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.bottomMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 16.0f);
            layoutParams.topMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 8.0f);
            layoutParams.leftMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 16.0f);
            layoutParams.rightMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 16.0f);
            layoutParams.addRule(3, this.no.getId());
            layoutParams.addRule(14);
            this.mp.setLayoutParams(layoutParams);
            this.mp.setTextSize(16.0f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 32.0f));
            layoutParams2.addRule(14);
            layoutParams2.addRule(3, this.mp.getId());
            layoutParams2.leftMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 20.0f);
            layoutParams2.rightMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 20.0f);
            this.q.setPadding(com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 36.0f), com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 7.0f), com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 36.0f), com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 8.0f));
            this.q.setLayoutParams(layoutParams2);
            this.q.setEllipsize(TextUtils.TruncateAt.END);
            this.q.setSingleLine(true);
            this.q.setTextSize(14.0f);
            return;
        }
        if (i == 2) {
            int ox2 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 40.0f);
            RelativeLayout.LayoutParams q2 = tn.q(ox2, ox2, 14);
            this.no.setLayoutParams(q2);
            this.ig.setLayoutParams(q2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.bottomMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 8.0f);
            layoutParams3.topMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 8.0f);
            layoutParams3.addRule(3, this.no.getId());
            layoutParams3.addRule(14);
            this.mp.setLayoutParams(layoutParams3);
            this.mp.setTextSize(10.0f);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.q, 8);
            return;
        }
        int ox3 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 49.0f);
        RelativeLayout.LayoutParams q3 = tn.q(ox3, ox3, 14);
        this.no.setLayoutParams(q3);
        this.ig.setLayoutParams(q3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.bottomMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 8.0f);
        layoutParams4.topMargin = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 8.0f);
        layoutParams4.addRule(3, this.no.getId());
        layoutParams4.addRule(14);
        this.mp.setLayoutParams(layoutParams4);
        this.mp.setTextSize(13.0f);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 28.0f));
        layoutParams5.addRule(13);
        layoutParams5.addRule(3, this.mp.getId());
        int ox4 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 20.0f);
        int ox5 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 25.0f);
        int ox6 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 6.0f);
        TextPaint paint = this.q.getPaint();
        Rect rect = new Rect();
        CharSequence text = this.q.getText();
        if (TextUtils.isEmpty(text)) {
            text = "";
        }
        String charSequence = text.toString();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        this.q.setTextSize(13.0f);
        if (this.q.getWidth() > rect.width() + (ox5 * 2)) {
            if (this.q.getHeight() > rect.height() + (ox6 * 2)) {
                layoutParams5.leftMargin = ox4;
                layoutParams5.rightMargin = ox4;
                this.q.setPadding(ox5, com.bytedance.sdk.openadsdk.core.ir.ce.ox(this.kx, 5.0f), ox5, ox6);
            }
        }
        this.q.setEllipsize(TextUtils.TruncateAt.END);
        this.q.setSingleLine(true);
        this.q.setLayoutParams(layoutParams5);
    }

    public boolean ji() {
        return !this.wp.contains(d.dq.alwayShowMediaView) || this.i;
    }

    public boolean jy() {
        f fVar = this.h;
        return fVar != null && fVar.dq();
    }

    public void k() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3673e)) {
            le();
        } else {
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.vf, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.iw(this.p);
            com.bytedance.sdk.openadsdk.core.ir.ce.iw(this.s);
        }
        ImageView imageView = this.ox;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, 8);
    }

    public void kk() {
        TTProgressBar tTProgressBar = this.jy;
        if (tTProgressBar != null) {
            tTProgressBar.setProgress(0);
            this.jy.setSecondaryProgress(0);
        }
        p(8);
        if (ji()) {
            this.f3672d.setVisibility(8);
        }
        ImageView imageView = this.iw;
        if (imageView != null) {
            imageView.setImageDrawable(null);
            this.iw.setBackground(null);
        }
        ImageView imageView2 = this.kk;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
            this.kk.setBackground(null);
        }
        p(8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.ia, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.kk, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.o, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.no, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ig, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.mp, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.by, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.uh, 8);
        f fVar = this.h;
        if (fVar != null) {
            fVar.dq(true);
        }
    }

    public void kx() {
        j jVar = this.f3673e;
        if (jVar == null) {
            return;
        }
        if (this.f3673e.we() != 5 ? jVar.we() == 1 && uh.fw(this.f3673e) : true) {
            dq(false, this.i);
            dq(this.dq, wp.getContext());
            if (this.kk == null || TextUtils.isEmpty(pa.d(this.f3673e))) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.ia, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.kk, 0);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.o, 8);
            com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.f3673e)).dq(this.kk);
            dq(this.kk, pa.d(this.f3673e));
        }
    }

    public void le() {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.p, 8);
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.vf, 0);
        c();
    }

    public void mn() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3673e)) {
            le();
        } else {
            er();
        }
        ImageView imageView = this.ox;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.ce.dq((View) this.ox, 8);
    }

    public boolean mp() {
        return this.le;
    }

    public boolean no() {
        return this.i;
    }

    public boolean o() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.d
    public View ox() {
        return this.dq;
    }

    public void ox(int i, int i2) {
        this.gh = i;
        this.r = i2;
    }

    public void ox(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.dq.getParent() == null) {
            viewGroup.addView(this.dq);
        }
        p(0);
    }

    public void ox(boolean z) {
    }

    public boolean ox(int i) {
        return false;
    }

    public void p() {
        this.f3672d.dq(this);
        ImageView imageView = this.ox;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.s.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (s.this.i()) {
                        TextView textView = s.this.q;
                        if (textView == null || textView.getVisibility() != 0) {
                            s sVar = s.this;
                            sVar.ji.dq(sVar, view);
                        }
                    }
                }
            });
        }
    }

    public void p(int i) {
        this.k = i;
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.dq, i);
    }

    public void p(boolean z) {
        this.bl = z;
        if (z) {
            com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.ir;
            if (dqVar != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
            }
            com.bytedance.sdk.openadsdk.core.d.dq dqVar2 = this.u;
            if (dqVar2 != null) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar2.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.d.dq dqVar3 = this.ir;
        if (dqVar3 != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar3.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.ir.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
        }
        com.bytedance.sdk.openadsdk.core.d.dq dqVar4 = this.u;
        if (dqVar4 != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar4.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.u.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
        }
    }

    public void q() {
    }

    public void r() {
        f fVar = this.h;
        if (fVar != null) {
            fVar.dq(false);
        }
    }

    public void s() {
    }

    public void s(int i) {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.dq, 0);
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.f3672d;
        if (dVar != null) {
            dVar.setVisibility(i);
        }
    }

    public void s(boolean z) {
        this.ha = z;
    }

    @TargetApi(14)
    public void wp() {
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(this.dq, 0);
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.f3672d;
        if (dVar != null) {
            View view = dVar.getView();
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(view, 8);
            com.bytedance.sdk.openadsdk.core.ir.ce.dq(view, 0);
        }
    }
}
