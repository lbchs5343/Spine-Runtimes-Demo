package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.er;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.fw;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.jy;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.ox;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.iw.ox.fw;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class NativeVideoTsView extends FrameLayout implements ox.dq, e.dq, ox.dq {
    private static volatile com.bytedance.sdk.component.mn.dq vw;
    private long bl;
    private ViewTreeObserver.OnGlobalLayoutListener by;

    /* renamed from: c, reason: collision with root package name */
    private long f3646c;
    boolean cd;
    private long ce;
    private boolean cv;

    /* renamed from: d, reason: collision with root package name */
    private boolean f3647d;
    private boolean dc;
    private boolean dq;
    private mn ds;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3648e;
    private ox.InterfaceC0004ox er;

    /* renamed from: f, reason: collision with root package name */
    protected int f3649f;
    AtomicBoolean fw;
    public ox gh;
    private d gx;
    private NativeExpressVideoView h;
    private boolean ha;
    private String i;
    protected boolean ia;
    protected ImageView ig;
    private final String ir;
    protected ViewGroup iw;
    private boolean j;
    private boolean ji;
    private AtomicBoolean jw;
    protected String jy;
    private boolean k;
    protected boolean kk;
    private boolean kx;
    private boolean l;
    private boolean le;
    protected FrameLayout mn;
    protected ImageView mp;
    private final e n;
    private int nh;
    protected ImageView no;
    protected RelativeLayout o;
    private boolean ob;
    private boolean op;
    protected final Context ox;
    protected j p;
    protected boolean q;
    protected final AtomicBoolean r;
    protected com.bykv.vk.openvk.component.video.api.p.ox s;
    private boolean t;
    private TTViewStub u;
    private ViewTreeObserver uh;
    private UGenVideoPanelView v;
    private int vf;
    private boolean wn;
    private boolean wp;
    private View.OnAttachStateChangeListener xz;
    private ViewGroup yy;

    public static class d implements f {

        /* renamed from: d, reason: collision with root package name */
        private WeakReference<ViewGroup> f3654d;
        private jy dq;
        private int iw;
        private int mn;
        private WeakReference<GifView> ox = new WeakReference<>(null);
        private j p;
        private String s;

        public d(jy jyVar, ViewGroup viewGroup, j jVar, String str, int i, int i2) {
            this.dq = jyVar;
            this.f3654d = new WeakReference<>(viewGroup);
            this.p = jVar;
            this.s = str;
            this.iw = i;
            this.mn = i2;
        }

        private int dq() {
            if (this.dq.iw() <= 0.0d) {
                return this.mn / 2;
            }
            return (int) (this.dq.iw() * this.mn);
        }

        private void dq(Context context, FrameLayout.LayoutParams layoutParams, int i) {
            if (this.dq.ox() == 2) {
                layoutParams.gravity = 8388693;
                layoutParams.rightMargin = i;
                layoutParams.bottomMargin = i;
            } else {
                layoutParams.gravity = 8388659;
                layoutParams.leftMargin = i;
                layoutParams.topMargin = ce.ox(context, 19.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(Context context, jy jyVar, no noVar, ViewGroup viewGroup) {
            GifView gifView = new GifView(context);
            gifView.setAdjustViewBounds(true);
            gifView.setBackgroundColor(0);
            int ox = ce.ox(context, 12.0f);
            this.iw = viewGroup.getWidth() <= 0 ? this.iw : viewGroup.getWidth();
            this.mn = viewGroup.getHeight() <= 0 ? this.mn : viewGroup.getHeight();
            int dq = dq();
            if (jyVar.dq() == 3) {
                if (dq > ce.ox(context, 88.0f)) {
                    dq = ce.ox(context, 88.0f);
                }
            } else if (jyVar.dq() == 4 && dq > ce.ox(context, 178.0f)) {
                dq = ce.ox(context, 178.0f);
            }
            int i = this.iw - ox;
            int mn = (int) (jyVar.mn() * dq);
            FrameLayout.LayoutParams layoutParams = (mn <= i || mn <= 0 || i <= 0) ? new FrameLayout.LayoutParams(-2, dq) : new FrameLayout.LayoutParams(i, -2);
            dq(context, layoutParams, ox);
            gifView.setVisibility(0);
            dq(noVar.ox(), noVar, gifView);
            dq(this.ox.get());
            viewGroup.addView(gifView, layoutParams);
            this.ox = new WeakReference<>(gifView);
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.p, this.s, 0);
        }

        private void dq(GifView gifView) {
            if (gifView == null || gifView.getParent() == null) {
                return;
            }
            ((ViewGroup) gifView.getParent()).removeView(gifView);
        }

        private void dq(Object obj, no noVar, GifView gifView) {
            if (obj instanceof byte[]) {
                if (!noVar.ia()) {
                    gifView.setImageDrawable(fw.dq((byte[]) obj, 0));
                } else {
                    gifView.dq((byte[]) obj, false);
                    gifView.setRepeatConfig(false);
                }
            }
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(2)
        public void dq(int i, String str, Throwable th) {
            ig.p("copflg", "fail: ".concat(String.valueOf(str)));
            GifView gifView = this.ox.get();
            if (gifView != null) {
                gifView.setVisibility(8);
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.p, this.s, 2);
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(1)
        public void dq(final no noVar) {
            try {
                ViewGroup viewGroup = this.f3654d.get();
                if (viewGroup == null) {
                    return;
                }
                viewGroup.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ViewGroup viewGroup2 = (ViewGroup) d.this.f3654d.get();
                            if (viewGroup2 == null) {
                                return;
                            }
                            Context context = viewGroup2.getContext();
                            d dVar = d.this;
                            dVar.dq(context, dVar.dq, noVar, viewGroup2);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }, 100L);
            } catch (Exception e2) {
                dq(1002, "", e2);
            }
        }
    }

    public interface dq {
        void dq(View view, int i);
    }

    public interface ox {
        void dq(boolean z, long j, long j2, long j3, boolean z2, boolean z3);
    }

    public NativeVideoTsView(Context context) {
        this(context, null, false, false);
    }

    public NativeVideoTsView(Context context, j jVar) {
        this(context, jVar, false, false);
    }

    public NativeVideoTsView(Context context, j jVar, String str, boolean z, boolean z2) {
        this(context, jVar, false, false, str, z, z2);
    }

    public NativeVideoTsView(Context context, j jVar, boolean z, boolean z2) {
        this(context, jVar, z, z2, "embeded_ad", false, false);
    }

    public NativeVideoTsView(Context context, j jVar, boolean z, boolean z2, String str, boolean z3, boolean z4) {
        super(context);
        this.dq = true;
        this.ia = true;
        this.f3647d = false;
        this.le = false;
        this.k = false;
        this.wp = false;
        this.f3648e = true;
        this.kx = false;
        this.q = true;
        this.jy = "embeded_ad";
        this.f3649f = 50;
        this.ji = true;
        this.fw = new AtomicBoolean(false);
        this.n = new e(Looper.getMainLooper(), this);
        this.op = false;
        this.ir = i.le();
        this.cd = false;
        this.f3646c = 50L;
        this.ce = 500L;
        this.wn = true;
        this.j = false;
        this.ob = true;
        this.l = true;
        this.r = new AtomicBoolean(false);
        this.ha = true;
        this.dc = false;
        this.jw = new AtomicBoolean(false);
        this.jy = str;
        this.ox = context;
        this.p = jVar;
        this.f3647d = z;
        this.kx = z2;
        this.wp = z3;
        this.f3648e = z4;
        setContentDescription("NativeVideoAdView");
        mn();
        i();
        com.bytedance.sdk.openadsdk.h.mn.d(new kk("ts_video") { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.1
            @Override // java.lang.Runnable
            public void run() {
                if (NativeVideoTsView.vw == null) {
                    com.bytedance.sdk.component.mn.dq unused = NativeVideoTsView.vw = NativeVideoTsView.this.getKvCache();
                }
            }
        });
    }

    private boolean bl() {
        if (f()) {
            return false;
        }
        if (vw == null) {
            vw = getKvCache();
        }
        return vw.d("key_video_is_from_detail_page", false) || vw.d("key_video_isfromvideodetailpage", false);
    }

    private boolean c() {
        return 5 == wp.d().mn(c.kk(this.p));
    }

    private void ce() {
        ce.s(this.ig);
        ce.s(this.o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i, int i2) {
        if (f()) {
            return;
        }
        j jVar = this.p;
        jy pc = jVar == null ? null : jVar.pc();
        if (pc != null && i2 > 0) {
            if (!pc.ia()) {
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.p, this.jy, 1);
                return;
            }
            this.nh = i;
            this.vf = i2;
            if (this.gx == null) {
                this.gx = new d(pc, this.iw, this.p, this.jy, i, i2);
            }
            com.bytedance.sdk.openadsdk.ia.d.dq(pc.s()).ox(3).dq(Bitmap.Config.RGB_565).dq(this.gx);
        }
    }

    private void d(boolean z) {
        if (this.le == z) {
            return;
        }
        this.le = z;
        ox(z);
        if (this.p == null || this.s == null) {
            return;
        }
        boolean bl = bl();
        n();
        if (bl && this.s.r()) {
            p(true);
            ia();
            return;
        }
        if (!z || this.s.r() || this.s.f()) {
            if (this.s.fw() == null || !this.s.fw().mp()) {
                return;
            }
            this.s.iw();
            ox.InterfaceC0004ox interfaceC0004ox = this.er;
            if (interfaceC0004ox != null) {
                interfaceC0004ox.L_();
                return;
            }
            return;
        }
        if (this.s.fw() == null || !this.s.fw().q()) {
            if (this.dq && this.s.fw() == null) {
                if (!this.r.get()) {
                    this.r.set(true);
                }
                this.jw.set(false);
                p();
                return;
            }
            return;
        }
        if (!this.dq) {
            this.le = false;
            return;
        }
        if ("ALP-AL00".equals(this.ir)) {
            this.s.ia();
        } else {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.s).iw(bl);
        }
        ox.InterfaceC0004ox interfaceC0004ox2 = this.er;
        if (interfaceC0004ox2 != null) {
            interfaceC0004ox2.M_();
        }
    }

    private View dq(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setId(2114387853);
        layoutParams.gravity = 17;
        frameLayout.setVisibility(8);
        this.iw = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        frameLayout2.setId(2114387761);
        layoutParams2.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams2);
        frameLayout.addView(frameLayout2);
        this.mn = frameLayout2;
        TTViewStub tTViewStub = new TTViewStub(context, new com.bytedance.sdk.openadsdk.res.layout.video.s());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        tTViewStub.setId(2114387610);
        tTViewStub.setLayoutParams(layoutParams3);
        frameLayout.addView(tTViewStub);
        this.u = tTViewStub;
        return frameLayout;
    }

    private boolean e() {
        return TextUtils.equals(this.jy, "splash_ad") || TextUtils.equals(this.jy, "cache_splash_ad");
    }

    private void er() {
        if (TextUtils.isEmpty(this.jy)) {
            return;
        }
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        if (this.jy.equals("draw_ad")) {
            dq2.dq("draw_show_time", System.currentTimeMillis());
        } else if (this.jy.equals("embeded_ad")) {
            dq2.dq("feed_show_time", System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.component.mn.dq getKvCache() {
        return n.dq("sp_multi_native_video_data");
    }

    private void h() {
        boolean ji = ji();
        if (this.dc && ji) {
            com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
            if (oxVar instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) {
                ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) oxVar).n();
            }
            this.dc = false;
        } else {
            d(ji);
        }
        this.n.sendEmptyMessageDelayed(1, this.f3646c);
    }

    private void i() {
        addView(dq(this.ox));
        if (!this.f3647d) {
            this.v = new UGenVideoPanelView(this.ox, this.p, this, this.jy);
        }
        U_();
    }

    private void ia() {
        dq(0L, 0);
        this.er = null;
    }

    private void ir() {
        if (vw == null) {
            vw = getKvCache();
        }
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar == null || f() || !vw.d("key_video_is_update_flag", false)) {
            return;
        }
        boolean d2 = vw.d("key_native_video_complete", false);
        long d3 = vw.d("key_video_current_play_position", -1L);
        long d4 = vw.d("key_video_total_play_duration", oxVar.ig() + oxVar.q());
        long d5 = vw.d("key_video_duration", oxVar.q());
        oxVar.ox(d2);
        if (d2) {
            oxVar.d(d5);
        } else {
            oxVar.d(d3);
        }
        oxVar.ox(d4);
        oxVar.p(d5);
        vw.dq("key_video_is_update_flag", false);
    }

    private boolean ji() {
        View view;
        if (!o.dq(this.p)) {
            view = this;
        } else if (this.p.ce() == 2) {
            view = this.h;
        } else {
            ViewParent parent = getParent();
            view = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        }
        return er.dq(view, 50, 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        ViewTreeObserver viewTreeObserver = this.uh;
        if (viewTreeObserver == null || (onGlobalLayoutListener = this.by) == null) {
            return;
        }
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    private boolean kx() {
        boolean d2;
        if ((com.bytedance.sdk.openadsdk.core.ox.p.dq().ir() & 2) == 2) {
            d2 = com.bytedance.sdk.openadsdk.core.component.splash.mn.dq.get();
        } else {
            if (vw == null) {
                vw = getKvCache();
            }
            d2 = vw.d("key_video_is_form_splash_click_eye", false);
        }
        return e() && d2;
    }

    private void le() {
        if (!(this instanceof NativeDrawVideoTsView) || this.fw.get() || com.bytedance.sdk.openadsdk.core.no.ia().op() == null) {
            return;
        }
        this.mp.setImageBitmap(com.bytedance.sdk.openadsdk.core.no.ia().op());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mp.getLayoutParams();
        int ox2 = ce.ox(getContext(), this.f3649f);
        layoutParams.width = ox2;
        layoutParams.height = ox2;
        this.mp.setLayoutParams(layoutParams);
        this.fw.set(true);
    }

    private void n() {
        if (f()) {
            return;
        }
        if (vw == null) {
            vw = getKvCache();
        }
        vw.dq("key_video_isfromvideodetailpage", false);
        vw.dq("key_video_is_from_detail_page", false);
    }

    private void op() {
        if (this.yy == null) {
            return;
        }
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipChildren(false);
                if (viewGroup.hashCode() == this.yy.hashCode()) {
                    this.yy.hashCode();
                    return;
                }
            }
        }
    }

    private boolean u() {
        return 2 == wp.d().mn(c.kk(this.p));
    }

    private void wp() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar == null) {
            return;
        }
        oxVar.p(this.dq);
        ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.s).dq((ox.dq) this);
        this.s.dq(this);
    }

    public void U_() {
        this.s = dq(this.ox, this.mn, this.p, this.jy, !f(), this.wp, this.f3648e);
        wp();
        this.xz = new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.3
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                nativeVideoTsView.uh = nativeVideoTsView.iw.getViewTreeObserver();
                if (NativeVideoTsView.this.uh == null || NativeVideoTsView.this.by == null) {
                    return;
                }
                NativeVideoTsView.this.uh.addOnGlobalLayoutListener(NativeVideoTsView.this.by);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                NativeVideoTsView.this.k();
            }
        };
        this.by = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int width = NativeVideoTsView.this.iw.getWidth();
                int height = NativeVideoTsView.this.iw.getHeight();
                ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) NativeVideoTsView.this.s).dq(width, height);
                NativeVideoTsView.this.k();
                NativeVideoTsView.this.d(width, height);
                if (NativeVideoTsView.this.v != null) {
                    NativeVideoTsView.this.v.q();
                }
            }
        };
    }

    public void V_() {
        ce.dq((View) this.o, 8);
        ox.InterfaceC0004ox interfaceC0004ox = this.er;
        if (interfaceC0004ox != null && !this.cv) {
            this.cv = true;
            interfaceC0004ox.K_();
        }
        ce.dq((View) this.o, 8);
        mn mnVar = this.ds;
        if (mnVar != null) {
            mnVar.dq();
        }
    }

    public void cd() {
        if (this.s != null) {
            ce();
            this.s.d();
        }
    }

    public void d() {
        if (q.ox(wp.getContext()) == 0) {
            return;
        }
        if (this.s.fw() != null) {
            if (this.s.fw().mp()) {
                d(false);
                e eVar = this.n;
                if (eVar != null) {
                    eVar.removeMessages(1);
                }
                dq(true);
                return;
            }
            if (this.s.fw().q()) {
                this.dq = true;
                d(true);
                mn();
                e eVar2 = this.n;
                if (eVar2 != null) {
                    eVar2.sendEmptyMessageDelayed(1, this.f3646c);
                }
                dq(false);
                return;
            }
        }
        if (q() || this.jw.get()) {
            return;
        }
        this.jw.set(true);
        if (pa.q(this.p) != null) {
            ce();
            com.bykv.vk.openvk.component.video.api.ox.p dq2 = pa.dq(4, this.p);
            dq2.d(this.p.fx());
            dq2.d(this.iw.getWidth());
            dq2.ox(this.iw.getHeight());
            dq2.ox(this.p.dn());
            dq2.dq(this.bl);
            dq2.d(jy());
            dq(dq2);
        } else {
            ig.p("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
        }
        e eVar3 = this.n;
        if (eVar3 != null) {
            eVar3.sendEmptyMessageDelayed(1, this.f3646c);
        }
        dq(false);
    }

    public void d(int i) {
        if (q.ox(wp.getContext()) == 0) {
            return;
        }
        if (this.s.fw() != null) {
            if (this.s.fw().mp() && i == 2) {
                d(false);
                e eVar = this.n;
                if (eVar != null) {
                    eVar.removeMessages(1);
                }
                dq(true);
                return;
            }
            if (this.s.fw().q() && i == 3) {
                this.dq = true;
                d(true);
                mn();
                e eVar2 = this.n;
                if (eVar2 != null) {
                    eVar2.sendEmptyMessageDelayed(1, this.f3646c);
                }
                dq(false);
                return;
            }
        }
        if (q() || this.jw.get()) {
            return;
        }
        this.jw.set(true);
        if (pa.q(this.p) != null) {
            ce();
            com.bykv.vk.openvk.component.video.api.ox.p dq2 = pa.dq(4, this.p);
            dq2.d(this.p.fx());
            dq2.d(this.iw.getWidth());
            dq2.ox(this.iw.getHeight());
            dq2.ox(this.p.dn());
            dq2.dq(this.bl);
            dq2.d(jy());
            dq2.dq(com.bytedance.sdk.openadsdk.h.kk.dq(this.p.mx()).p());
            dq(dq2);
        } else {
            ig.p("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
        }
        e eVar3 = this.n;
        if (eVar3 != null) {
            eVar3.sendEmptyMessageDelayed(1, this.f3646c);
        }
        dq(false);
    }

    public void d(long j, int i) {
        this.k = true;
    }

    public void d(boolean z, boolean z2) {
        this.l = z;
        this.t = z2;
    }

    public com.bykv.vk.openvk.component.video.api.p.ox dq(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2, boolean z3) {
        return new com.bytedance.sdk.openadsdk.core.video.nativevideo.ox(context, viewGroup, jVar, str, z, z2, z3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
    public void dq() {
        if (this.er == null || !e()) {
            return;
        }
        this.er.N_();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.dq
    public void dq(int i) {
        mn();
    }

    public void dq(int i, int i2) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) oxVar).dq(i, i2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
    public void dq(long j, int i) {
        ox.InterfaceC0004ox interfaceC0004ox = this.er;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.N_();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
    public void dq(long j, long j2) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar;
        ox.InterfaceC0004ox interfaceC0004ox = this.er;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.dq(j, j2);
        }
        if (ji() || (oxVar = this.s) == null) {
            return;
        }
        oxVar.iw();
    }

    public void dq(final Context context, final int i, String str) {
        final com.bykv.vk.openvk.component.video.api.p.d cd;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar == null || (cd = oxVar.cd()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(str).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.5
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i2, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no<Bitmap> noVar) {
                Bitmap dq2 = com.bytedance.sdk.component.adexpress.p.dq.dq(context, noVar.ox(), i);
                if (dq2 == null) {
                    return;
                }
                final BitmapDrawable bitmapDrawable = new BitmapDrawable(NativeVideoTsView.this.getResources(), dq2);
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bykv.vk.openvk.component.video.api.p.d dVar = cd;
                        if (dVar != null) {
                            dVar.dq(bitmapDrawable);
                        }
                    }
                });
            }
        }, 4);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what != 1) {
            return;
        }
        h();
    }

    public void dq(final ImageView imageView, String str) {
        if (imageView == null || !com.bytedance.sdk.openadsdk.s.dq.dq(this.p) || com.bytedance.sdk.openadsdk.s.dq.p(this.p)) {
            return;
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(str).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.2
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no<Bitmap> noVar) {
                Bitmap ox2;
                if (noVar == null || (ox2 = noVar.ox()) == null) {
                    return;
                }
                final Bitmap dq2 = com.bytedance.sdk.component.adexpress.p.dq.dq(NativeVideoTsView.this.ox, ox2, 25);
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dq2 != null) {
                            imageView.setBackground(new BitmapDrawable(dq2));
                        }
                    }
                });
            }
        }, 4);
    }

    public void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.u.getParent() != null && (this.u.getParent() instanceof ViewGroup)) {
            this.o = (RelativeLayout) this.u.dq();
        }
        ImageView imageView = (ImageView) findViewById(2114387954);
        this.no = imageView;
        imageView.setImageDrawable(null);
        this.mp = (ImageView) findViewById(2114387852);
        com.bytedance.sdk.openadsdk.ia.d.dq(str).dq(this.no);
        dq(this.no, str);
        ce.dq((View) this.o, 0);
    }

    public void dq(boolean z) {
        if (this.ig == null) {
            this.ig = new ImageView(getContext());
            if (com.bytedance.sdk.openadsdk.core.no.ia().op() != null) {
                this.ig.setImageBitmap(com.bytedance.sdk.openadsdk.core.no.ia().op());
            } else {
                this.ig.setImageDrawable(r.ox(wp.getContext(), "tt_new_play_video"));
            }
            this.ig.setScaleType(ImageView.ScaleType.FIT_XY);
            int ox2 = ce.ox(getContext(), this.f3649f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ox2, ox2);
            layoutParams.gravity = 17;
            this.iw.addView(this.ig, layoutParams);
        }
        if (z) {
            this.ig.setVisibility(0);
        } else {
            this.ig.setVisibility(8);
        }
    }

    public boolean dq(long j, boolean z, boolean z2) {
        boolean z3 = false;
        this.iw.setVisibility(0);
        if (this.s == null) {
            this.s = new com.bytedance.sdk.openadsdk.core.video.nativevideo.ox(this.ox, this.mn, this.p, this.jy, this.wp, this.f3648e);
            wp();
        }
        this.bl = j;
        if (!f()) {
            if (ig() || this.kk) {
                dq(this.ox, 25, pa.d(this.p));
            }
            return true;
        }
        this.s.dq(false);
        if (pa.q(this.p) != null) {
            com.bykv.vk.openvk.component.video.api.ox.p dq2 = pa.dq(4, this.p);
            dq2.d(this.p.fx());
            dq2.d(this.iw.getWidth());
            dq2.ox(this.iw.getHeight());
            dq2.ox(this.p.dn());
            dq2.dq(j);
            dq2.d(jy());
            if (z2) {
                this.s.d(dq2);
                return true;
            }
            z3 = dq(dq2);
        }
        if (((j > 0 && !z && !z2) || (j > 0 && z && !this.kx)) && this.s != null) {
            fw.dq dqVar = new fw.dq();
            dqVar.dq(this.s.no());
            dqVar.ox(this.s.q());
            dqVar.d(this.s.ig());
            com.bytedance.sdk.openadsdk.iw.d.d.ox(this.s.cd(), dqVar);
        }
        return z3;
    }

    public boolean dq(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        if (this.s == null) {
            return false;
        }
        this.ji = false;
        this.f3646c = this.ce;
        if (this.t) {
            pVar.d(this.l);
        }
        return this.s.dq(pVar);
    }

    public boolean f() {
        return this.f3647d;
    }

    public void fw() {
        com.bykv.vk.openvk.component.video.api.p.d cd;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar == null || (cd = oxVar.cd()) == null) {
            return;
        }
        cd.dq();
        View ox2 = cd.ox();
        if (ox2 != null) {
            ox2.setVisibility(8);
            if (ox2.getParent() != null) {
                ((ViewGroup) ox2.getParent()).removeView(ox2);
            }
        }
    }

    public UGenVideoPanelView getGenVideoPanelView() {
        if (this.f3647d) {
            return null;
        }
        return this.v;
    }

    public com.bykv.vk.openvk.component.video.api.p.ox getNativeVideoController() {
        return this.s;
    }

    public boolean getVideoError() {
        return this.k;
    }

    public void gh() {
        e eVar = this.n;
        if (eVar != null) {
            eVar.removeCallbacksAndMessages(null);
        }
    }

    public boolean ig() {
        j jVar = this.p;
        return jVar != null && jVar.kr() == 4 && this.p.ce() == 1 && !TextUtils.equals("draw_ad", this.jy);
    }

    public boolean jy() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.dq
    public void kk() {
        this.dc = true;
        if (this.n.hasMessages(1)) {
            return;
        }
        this.n.sendEmptyMessage(1);
    }

    public void mn() {
        j jVar = this.p;
        if (jVar == null) {
            return;
        }
        int kk = c.kk(jVar);
        int mn = wp.d().mn(kk);
        if (mn == 1) {
            this.dq = q.p(this.ox);
        } else if (mn == 2) {
            this.dq = q.s(this.ox) || q.p(this.ox) || q.iw(this.ox) || q.ox(wp.getContext()) == 1;
        } else if (mn == 3) {
            this.dq = false;
        } else if (mn == 4) {
            this.cd = true;
        } else if (mn == 5) {
            this.dq = q.p(this.ox) || q.iw(this.ox);
        }
        if (this.f3647d) {
            this.ia = false;
        } else {
            this.ia = wp.d().p(kk);
        }
        if ("splash_ad".equals(this.jy)) {
            this.dq = true;
            this.ia = true;
        }
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.p(this.dq);
        }
        if ("feed_video_middle_page".equals(this.jy)) {
            this.dq = true;
        }
    }

    public void mp() {
        if (!this.r.get()) {
            this.r.set(true);
            if (this.s != null) {
                e eVar = this.n;
                if (eVar != null) {
                    eVar.removeCallbacksAndMessages(null);
                }
                this.s.dq(true, 3);
            }
        }
        this.jw.set(false);
    }

    public void no() {
        TTViewStub tTViewStub;
        if (e() || this.ox == null || (tTViewStub = this.u) == null || tTViewStub.getParent() == null || this.p == null || this.o != null) {
            return;
        }
        if (this.u.getParent() != null && (this.u.getParent() instanceof ViewGroup)) {
            this.o = (RelativeLayout) this.u.dq();
        }
        this.no = (ImageView) findViewById(2114387954);
        ImageView imageView = (ImageView) findViewById(2114387852);
        this.mp = imageView;
        if (this.q) {
            ce.dq((View) imageView, 0);
        }
        if (!TextUtils.isEmpty(pa.d(this.p))) {
            com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.p)).dq(this.no);
            dq(this.no, pa.d(this.p));
        }
        le();
    }

    public void o() {
        ox oxVar;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar2;
        if (this.f3647d || (oxVar = this.gh) == null || (oxVar2 = this.s) == null) {
            return;
        }
        oxVar.dq(oxVar2.r(), this.s.q(), this.s.q() + this.s.ig(), this.s.no(), this.dq, this.ia);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onAttachedToWindow();
        if (this.ob) {
            ViewGroup viewGroup = this.iw;
            if (viewGroup != null && (onAttachStateChangeListener = this.xz) != null) {
                viewGroup.addOnAttachStateChangeListener(onAttachStateChangeListener);
            }
            p();
            er();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onDetachedFromWindow();
        ViewGroup viewGroup = this.iw;
        if (viewGroup != null && (onAttachStateChangeListener = this.xz) != null) {
            viewGroup.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        s();
        this.gx = null;
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        if (this.ob) {
            p();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        o();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        s();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar2;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar3;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar4;
        super.onWindowFocusChanged(z);
        if (this.ob) {
            this.wn = z;
            ir();
            if (bl() && (oxVar4 = this.s) != null && oxVar4.r()) {
                n();
                ce.dq((View) this.o, 8);
                p(true);
                ia();
                return;
            }
            mn();
            if (!f() && q() && (oxVar2 = this.s) != null && !oxVar2.f()) {
                if (this.n != null) {
                    if (z && (oxVar3 = this.s) != null && !oxVar3.r()) {
                        this.n.obtainMessage(1).sendToTarget();
                        return;
                    } else {
                        this.n.removeMessages(1);
                        d(false);
                        return;
                    }
                }
                return;
            }
            if (q()) {
                return;
            }
            if (!z && (oxVar = this.s) != null && oxVar.fw() != null && this.s.fw().mp()) {
                this.n.removeMessages(1);
                d(false);
            } else if (z) {
                this.n.obtainMessage(1).sendToTarget();
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar2;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar3;
        super.onWindowVisibilityChanged(i);
        if (this.ob) {
            op();
            ir();
            if (this.ha) {
                this.ha = i == 0;
            }
            if (bl() && (oxVar3 = this.s) != null && oxVar3.r()) {
                n();
                ce.dq((View) this.o, 8);
                p(true);
                ia();
                return;
            }
            mn();
            if (f() || !q() || (oxVar = this.s) == null || oxVar.f() || this.p == null) {
                return;
            }
            boolean dq2 = er.dq(this, 20, 5);
            isShown();
            if (this.ji && pa.q(this.p) != null && dq2) {
                com.bykv.vk.openvk.component.video.api.ox.p dq3 = pa.dq(4, this.p);
                dq3.d(this.p.fx());
                dq3.d(this.iw.getWidth());
                dq3.ox(this.iw.getHeight());
                dq3.ox(this.p.dn());
                dq3.dq(this.bl);
                dq3.d(jy());
                dq(dq3);
                ce.dq((View) this.o, 8);
            } else {
                try {
                    StringBuilder sb = new StringBuilder("onWindowVisibilityChanged materialMeta.getVideo() is null ");
                    sb.append(this.o == null);
                    sb.append(" ");
                    sb.append(this.ha);
                    sb.append(" ");
                    sb.append(hashCode());
                    ig.p("NativeVideoAdView", sb.toString());
                    if (this.ha && this.o == null) {
                        no();
                        ce.dq((View) this.o, 0);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            if (i != 0 || !this.wn || this.n == null || (oxVar2 = this.s) == null || oxVar2.r()) {
                return;
            }
            this.n.obtainMessage(1).sendToTarget();
        }
    }

    public void ox(boolean z) {
        mn mnVar = this.ds;
        if (mnVar != null) {
            mnVar.dq(z);
        }
    }

    public void p() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar == null) {
            U_();
        } else if ((oxVar instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) && !f()) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.s).uh();
        }
        if (this.s == null || !this.r.get()) {
            return;
        }
        this.r.set(false);
        mn();
        if (!q()) {
            if (this.s.r()) {
                p(true);
                return;
            }
            ig.dq("NativeVideoAdView", "attachTask.......mRlImgCover.....VISIBLE");
            no();
            ce.dq((View) this.o, 0);
            return;
        }
        ImageView imageView = this.ig;
        if (imageView != null) {
            ce.dq((View) imageView, 8);
        }
        if (pa.q(this.p) == null) {
            ig.p("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        com.bykv.vk.openvk.component.video.api.ox.p dq2 = pa.dq(4, this.p);
        dq2.d(this.p.fx());
        dq2.d(this.iw.getWidth());
        dq2.ox(this.iw.getHeight());
        dq2.ox(this.p.dn());
        dq2.dq(0L);
        dq2.dq(o.dq(this.p));
        dq2.d(jy());
        if (e()) {
            String ox2 = com.bytedance.sdk.openadsdk.h.kk.dq(0).ox();
            if (this.p.jc()) {
                ox2 = com.bytedance.sdk.openadsdk.h.kk.dq();
            }
            dq2.dq(ox2);
        }
        dq(dq2);
        this.s.ox(false);
    }

    public void p(boolean z) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.ox(z);
            com.bykv.vk.openvk.component.video.api.p.d cd = this.s.cd();
            if (cd != null) {
                cd.d();
                View ox2 = cd.ox();
                if (ox2 != null) {
                    if (ox2.getParent() != null) {
                        ((ViewGroup) ox2.getParent()).removeView(ox2);
                    }
                    ox2.setVisibility(0);
                    addView(ox2);
                    cd.dq(this.p, new WeakReference<>(this.ox), false);
                }
            }
        }
    }

    public boolean q() {
        return this.dq;
    }

    public void s() {
        this.gh = null;
        if (kx()) {
            return;
        }
        fw();
        mp();
    }

    public void setAdCreativeClickListener(dq dqVar) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) oxVar).dq(dqVar);
        }
    }

    public void setComplete(boolean z) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.ox(z);
        }
    }

    public void setControllerStatusCallBack(ox oxVar) {
        this.gh = oxVar;
    }

    public void setDrawVideoListener(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) oxVar).dq(dqVar);
        }
    }

    public void setEasyPlayableEventSender(mn mnVar) {
        this.ds = mnVar;
    }

    public void setEnableAutoCheck(boolean z) {
        this.ob = z;
    }

    public void setEnableBlur(boolean z) {
        this.kk = z;
    }

    public void setIsAutoPlay(boolean z) {
        j jVar;
        if (this.op || (jVar = this.p) == null) {
            return;
        }
        int mn = wp.d().mn(c.kk(jVar));
        if (z && mn != 4 && (!q.s(this.ox) ? !(!q.iw(this.ox) ? q.p(this.ox) : u() || c()) : !u())) {
            z = false;
        }
        this.dq = z;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.p(z);
        }
        if (this.dq) {
            ce.dq((View) this.o, 8);
        } else {
            no();
            RelativeLayout relativeLayout = this.o;
            if (relativeLayout != null) {
                ce.dq((View) relativeLayout, 0);
                if (pa.q(this.p) != null) {
                    com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.p)).dq(this.no);
                    dq(this.no, pa.d(this.p));
                } else {
                    ig.p("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
                }
            }
        }
        this.op = true;
    }

    public void setIsQuiet(boolean z) {
        this.ia = z;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.d(z);
        }
    }

    public void setMaterialMeta(j jVar) {
        this.p = jVar;
    }

    public void setNativeExpressVideoView(NativeExpressVideoView nativeExpressVideoView) {
        this.h = nativeExpressVideoView;
    }

    public void setNativeVideoAdListener(ox.dq dqVar) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(dqVar);
        }
    }

    public void setNativeVideoController(com.bykv.vk.openvk.component.video.api.p.ox oxVar) {
        this.s = oxVar;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z) {
        this.q = z;
    }

    public void setRegisterContainer(ViewGroup viewGroup) {
        UGenVideoPanelView uGenVideoPanelView;
        if (this.f3647d || (uGenVideoPanelView = this.v) == null) {
            return;
        }
        uGenVideoPanelView.setDeveloperContainer(viewGroup);
    }

    public void setVideoAdClickListenerTTNativeAd(com.bytedance.sdk.openadsdk.f.d.d.q qVar) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) oxVar).dq(qVar);
        }
    }

    public void setVideoAdInteractionListener(ox.InterfaceC0004ox interfaceC0004ox) {
        this.er = interfaceC0004ox;
    }

    public void setVideoAdLoadListener(ox.p pVar) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(pVar);
        }
    }

    public void setVideoCacheUrl(String str) {
        this.i = str;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 4 || i == 8) {
            mp();
        }
    }
}
