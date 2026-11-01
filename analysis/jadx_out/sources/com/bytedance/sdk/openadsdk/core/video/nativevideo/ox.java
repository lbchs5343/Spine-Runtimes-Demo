package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.api.p.d;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.k;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.er;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.bu;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.f;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.iw.ox.fw;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import com.bytedance.sdk.openadsdk.res.layout.video.LayoutVideoDetail;
import com.bytedance.sdk.openadsdk.res.layout.video.iw;
import com.bytedance.sdk.openadsdk.res.layout.video.mn;
import com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.core.video.dq.dq {

    /* renamed from: c, reason: collision with root package name */
    private WeakReference<ox.d> f3662c;
    private int dc;
    private ox.dq h;
    private long ha;
    private boolean ir;
    private final boolean ji;
    private int l;
    private WeakReference<ox.p> nh;
    private int ob;
    private String op;
    private boolean u;
    private long uh;
    private WeakReference<dq> vf;
    private ViewGroup wp;
    private int xz;
    private Map<String, Object> yy;

    /* renamed from: e, reason: collision with root package name */
    private long f3663e = 0;
    private long kx = 0;
    private boolean bl = false;
    private boolean n = false;
    private boolean ce = false;
    private boolean er = false;
    private boolean wn = true;
    private volatile boolean j = false;
    private int t = 0;
    private boolean gx = false;
    private boolean by = true;
    private dq.InterfaceC0003dq v = new dq.InterfaceC0003dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1
        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void d(com.bykv.vk.openvk.component.video.api.dq dqVar) {
            if (!ox.this.ji || o.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw)) {
                ox.this.dc();
            }
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.3
                @Override // java.lang.Runnable
                public void run() {
                    if (ox.this.nh != null && ox.this.nh.get() != null) {
                        ((ox.p) ox.this.nh.get()).J_();
                    }
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null && (!ox.this.jw() || !wp.d().nt())) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.d();
                    }
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.removeCallbacks(ox.this.k);
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void d(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.1
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.v();
                }
            });
            ox.this.dq(4);
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.8
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.d();
                    }
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.removeCallbacks(ox.this.k);
                    ox.this.gx = false;
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, final int i, final int i2) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.6
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.d(i, i2);
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2, int i3) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.7
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.k();
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.postDelayed(ox.this.k, 8000L);
                        ox.this.gx = true;
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, long j) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.2
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                        if (ox.this.jw() && wp.d().nt()) {
                            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.h();
                        } else {
                            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.d();
                        }
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.removeCallbacks(ox.this.k);
                        ox.this.gx = false;
                    }
                    if (ox.this.vf != null && ox.this.vf.get() != null) {
                        ((dq) ox.this.vf.get()).V_();
                    }
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.removeCallbacks(ox.this.k);
                }
            });
            ox.this.dc();
            ox.this.uh = System.currentTimeMillis();
            ox.this.z();
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, final long j, final long j2) {
            if (Math.abs(j - ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).mn) < 50) {
                return;
            }
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.9
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).i != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).i.dq(j, j2);
                    }
                    ox.this.d(j, j2);
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, final com.bykv.vk.openvk.component.video.api.ox.d dVar) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.4
                /* JADX WARN: Removed duplicated region for block: B:22:0x00d6  */
                /* JADX WARN: Removed duplicated region for block: B:25:0x00eb  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void run() {
                    int dq2 = dVar.dq();
                    int d2 = dVar.d();
                    ox.this.d(dq2, d2, dVar.ox());
                    ig.p("NativeVideoController", "CALLBACK_ON_ERROR、、before isVideoPlaying、、、、、");
                    if (!ox.this.by() || d2 == -1004) {
                        ig.p("NativeVideoController", "出错后 errorcode,extra、、、、、、、" + dq2 + "," + d2);
                        if (!ox.this.p(dq2, d2) && !com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw)) {
                            if (dq2 == 1 && (d2 == -19 || d2 == -38)) {
                                if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).kk, false);
                                }
                            }
                            if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.d();
                            }
                            if (ox.this.h != null) {
                                ox.this.h.d(ox.this.kx, com.bykv.vk.openvk.component.video.dq.s.dq.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).mn, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).f3644f));
                            }
                            if (ox.this.nh != null || ox.this.nh.get() == null || ox.this.by()) {
                                return;
                            }
                            ((ox.p) ox.this.nh.get()).dq(dq2, d2);
                            return;
                        }
                        ig.p("NativeVideoController", "出错后展示结果页、、、、、、、");
                        if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).kk, false);
                        }
                        ox.this.ox(true);
                        ox.this.o();
                        if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                        }
                        if (ox.this.h != null) {
                        }
                        if (ox.this.nh != null) {
                        }
                    }
                }
            });
            ox.this.dq(dVar.dq(), dVar.ox());
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, JSONObject jSONObject, String str) {
            if (no.ia().c()) {
                jSONObject.optString("start");
                jSONObject.optString("sdk_dns_analysis_end");
                jSONObject.optString("player_dns_analysis_end");
                jSONObject.optString("tcp_connect_end");
                jSONObject.optString("tcp_first_package_end");
                jSONObject.optString("first_video_package_end");
                jSONObject.optString("first_frame_video_decode_end");
                jSONObject.optString("first_frame_render_end");
                jSONObject.optLong("first_frame_render_end");
                jSONObject.optLong("start");
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.dq((Context) ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).kk.get(), ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw, ox.this.op, "pangle_live_sdk_monitor", jSONObject);
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, boolean z) {
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.1.5
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.d();
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void ox(com.bykv.vk.openvk.component.video.api.dq dqVar) {
            ox.this.ij();
        }
    };
    private int ds = 0;
    private long vw = 0;
    Runnable k = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.4
        @Override // java.lang.Runnable
        public void run() {
            if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).kk, false);
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.d();
                ox.this.ox(true);
                ig.p("NativeVideoController", "出错后展示结果页、、、、、、、showAdCard");
            }
        }
    };
    private final k.dq cv = new k.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.6
        @Override // com.bytedance.sdk.component.utils.k.dq
        public void dq(Context context, Intent intent, boolean z, int i) {
            ox.this.ox(context, i);
        }
    };
    private boolean jw = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox$9, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass9 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[f.dq.values().length];
            dq = iArr;
            try {
                iArr[f.dq.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[f.dq.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[f.dq.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface dq {
        void V_();

        void dq(int i);

        void kk();
    }

    public ox(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2) {
        this.op = "embeded_ad";
        this.ir = false;
        this.u = true;
        this.ob = 0;
        this.l = 0;
        this.dc = 1;
        this.dc = q.ox(context);
        try {
            this.ob = viewGroup.getWidth();
            this.l = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        this.wp = viewGroup;
        this.op = str;
        this.kk = new WeakReference<>(context);
        this.iw = jVar;
        dq(context);
        this.ji = true;
        this.ir = z;
        this.u = z2;
    }

    public ox(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2, boolean z3) {
        this.op = "embeded_ad";
        this.ir = false;
        this.u = true;
        this.ob = 0;
        this.l = 0;
        this.dc = 1;
        this.dc = q.ox(context);
        dq(z);
        this.op = str;
        try {
            this.ob = viewGroup.getWidth();
            this.l = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        this.wp = viewGroup;
        this.kk = new WeakReference<>(context);
        this.iw = jVar;
        dq(context);
        this.ji = true;
        this.ir = z2;
        this.u = z3;
    }

    private boolean bu() {
        j jVar = this.iw;
        return jVar != null && jVar.uh() == 1 && "draw_ad".equals(this.op) && this.wp != null;
    }

    private void cv() {
        com.bykv.vk.openvk.component.video.api.ox.p pVar;
        ig.dq("NativeVideoController", "resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.o));
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            if (dqVar.q() && !ha()) {
                if (this.o || (((pVar = this.r) != null && pVar.mn()) || com.bytedance.sdk.openadsdk.s.dq.d(this.iw))) {
                    er();
                } else {
                    d(this.le);
                }
                ig.dq("NativeVideoController", "resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.o));
            } else if (ha()) {
                this.mn = no.ia().t();
                no.ia().dq(-1L);
                this.p.dq(this.mn);
                this.p.d();
            } else {
                this.p.dq(false, this.mn, this.fw);
            }
        }
        if (this.bl) {
            fw.dq dqVar2 = new fw.dq();
            dqVar2.dq(no());
            dqVar2.ox(q());
            dqVar2.d(ig());
            com.bytedance.sdk.openadsdk.iw.d.d.ox(cd(), dqVar2);
        }
    }

    private View d(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387717);
        relativeLayout.setBackgroundColor(-16777216);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(2114387905);
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setGravity(17);
        relativeLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(relativeLayout2);
        ImageView imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        imageView.setId(2114387654);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setLayoutParams(layoutParams2);
        relativeLayout2.addView(imageView);
        TTProgressBar tTProgressBar = new TTProgressBar(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        tTProgressBar.setId(2114387634);
        layoutParams3.addRule(13, -1);
        tTProgressBar.setLayoutParams(layoutParams3);
        tTProgressBar.setIndeterminateDrawable(r.ox(context, "tt_video_loading_progress_bar"));
        relativeLayout2.addView(tTProgressBar);
        View dq2 = new com.bytedance.sdk.openadsdk.res.layout.video.p().dq(context);
        dq2.setId(2114387691);
        dq2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.addView(dq2);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        imageView2.setId(2114387629);
        layoutParams4.addRule(13, -1);
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        imageView2.setImageDrawable(r.ox(context, "tt_play_movebar_textpage"));
        imageView2.setVisibility(8);
        imageView2.setLayoutParams(layoutParams4);
        relativeLayout.addView(imageView2);
        TTProgressBar tTProgressBar2 = new TTProgressBar(context, null, r.mn(context, "tt_Widget_ProgressBar_Horizontal"));
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.5f, resources.getDisplayMetrics()));
        tTProgressBar2.setMax(100);
        tTProgressBar2.setId(2114387656);
        tTProgressBar2.setBackgroundColor(0);
        tTProgressBar2.setIndeterminateDrawable(null);
        GradientDrawable gradientDrawable = new GradientDrawable();
        float v = tn.v("#A5FFFFFF", gradientDrawable, context, 1.0f);
        gradientDrawable.setCornerRadius(v);
        int ox = ce.ox(context, 2.0f);
        gradientDrawable.setSize(-1, ox);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#FFFFFFFF"));
        gradientDrawable2.setCornerRadius(v);
        gradientDrawable2.setSize(-1, ox);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#FFF85959"));
        gradientDrawable3.setCornerRadius(v);
        gradientDrawable3.setSize(-1, ox);
        tTProgressBar2.setProgressDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        tTProgressBar2.setVisibility(8);
        layoutParams5.addRule(12, -1);
        tTProgressBar2.setLayoutParams(layoutParams5);
        relativeLayout.addView(tTProgressBar2);
        View tTViewStub = new TTViewStub(context, new iw());
        ViewGroup.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        tTViewStub.setId(2114387749);
        tTViewStub.setLayoutParams(layoutParams6);
        relativeLayout.addView(tTViewStub);
        View tTViewStub2 = new TTViewStub(context, new com.bytedance.sdk.openadsdk.res.layout.video.d());
        ViewGroup.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        tTViewStub2.setId(2114387669);
        tTViewStub2.setLayoutParams(layoutParams7);
        relativeLayout.addView(tTViewStub2);
        View tTViewStub3 = new TTViewStub(context, new mn());
        ViewGroup.LayoutParams ac = tn.ac(-2, -2, 13, -1);
        tTViewStub3.setId(2114387833);
        tTViewStub3.setLayoutParams(ac);
        relativeLayout.addView(tTViewStub3);
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i, int i2, String str) {
        if (this.kk == null) {
            return;
        }
        fw.dq dqVar = new fw.dq();
        dqVar.d(ig());
        dqVar.ox(q());
        dqVar.dq(no());
        dqVar.dq(i);
        dqVar.d(i2);
        com.bytedance.sdk.openadsdk.iw.d.d.dq(cd(), dqVar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j, long j2) {
        this.mn = j;
        this.f3644f = j2;
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq(j, j2);
            this.s.d(com.bykv.vk.openvk.component.video.dq.s.dq.dq(j, j2));
        }
        try {
            ox.dq dqVar = this.h;
            if (dqVar != null) {
                dqVar.dq(j, j2);
            }
        } catch (Throwable th) {
            ig.d("NativeVideoController", "onProgressUpdate error: ", th);
        }
    }

    private void d(Context context, int i) {
        if (!ji() || context == null || this.dc == i) {
            return;
        }
        this.dc = i;
        if (i != 4 && i != 0) {
            this.ce = false;
        }
        if (!this.ce && !r() && this.ir) {
            ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.7
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.mn(2);
                }
            });
        }
        WeakReference<dq> weakReference = this.vf;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.vf.get().dq(this.dc);
    }

    private boolean d(int i, int i2, int i3, int i4) {
        return (i3 > i4 && !ox(i, i2)) || i3 <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dc() {
        if (!this.bl || ds()) {
            fw.dq dqVar = new fw.dq();
            if (jw()) {
                this.wn = true;
            }
            dqVar.d(this.wn);
            dqVar.ox(q());
            com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s, dqVar);
            this.bl = true;
        }
    }

    private void dq(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        float f2 = i3;
        float f3 = i;
        float f4 = f2 / f3;
        float f5 = i4;
        float f6 = i2;
        float f7 = f5 / f6;
        try {
            Object k = k();
            Matrix matrix = k instanceof TextureView ? ((TextureView) k).getMatrix() : k instanceof UpieVideoView ? ((UpieVideoView) k).getMatrix() : k instanceof SurfaceView ? ((SurfaceView) k).getMatrix() : null;
            float max = Math.max(f4, f7);
            if (matrix == null) {
                matrix = new Matrix();
            } else {
                matrix.reset();
            }
            matrix.preTranslate((i3 - i) / 2, (i4 - i2) / 2);
            matrix.preScale(f3 / f2, f6 / f5);
            matrix.postScale(max, max, i3 / 2, i4 / 2);
            if (k instanceof TextureView) {
                ((TextureView) k).setTransform(matrix);
                ((TextureView) k).postInvalidate();
            } else if (k instanceof UpieVideoView) {
                if (Build.VERSION.SDK_INT >= 29) {
                    ((UpieVideoView) k).setAnimationMatrix(matrix);
                }
                ((UpieVideoView) k).postInvalidate();
            } else if (k instanceof SurfaceView) {
                if (Build.VERSION.SDK_INT >= 29) {
                    ((SurfaceView) k).setAnimationMatrix(matrix);
                }
                ((SurfaceView) k).postInvalidate();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str) {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
            if (this.op.equals("embeded_ad")) {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.iw, "embeded_ad", i, str);
            } else if (this.op.equals("draw_ad")) {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.iw, "draw_ad", i, str);
            }
        }
    }

    private void dq(long j, boolean z) {
        if (this.p == null) {
            return;
        }
        if (z) {
            xi();
        }
        this.p.dq(j);
    }

    @SuppressLint({"InflateParams"})
    private void dq(Context context) {
        EnumSet<d.dq> noneOf = EnumSet.noneOf(d.dq.class);
        noneOf.add(d.dq.hideCloseBtn);
        noneOf.add(d.dq.hideBackBtn);
        try {
            s dq2 = dq(context, noneOf);
            this.s = dq2;
            if (dq2 != null) {
                dq2.dq((com.bykv.vk.openvk.component.video.api.p.dq) this);
                this.s.dq((dq.InterfaceC0174dq) this);
            }
        } catch (Throwable th) {
            ig.p("NativeVideoController", th.getMessage());
        }
    }

    private boolean ds() {
        return this.ds > 0 && c.ox(this.iw);
    }

    private boolean fd() {
        bu dh;
        if (!jw()) {
            return false;
        }
        j jVar = this.iw;
        return jVar == null || (dh = jVar.dh()) == null || dh.dq() != 0;
    }

    private boolean ha() {
        return this.ig && no.ia().t() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ij() {
        s sVar;
        if (!this.j || (sVar = this.s) == null || sVar.ox() == null) {
            return;
        }
        this.j = false;
        this.s.ox().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.5
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.d(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw.fx());
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.d(ox.this.ob);
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.ox(ox.this.l);
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.dq((List<String>) null);
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.ox(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).iw.dn());
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.dq(0L);
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.d(ox.this.gh());
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).r.s());
                ox oxVar = ox.this;
                oxVar.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) oxVar).r);
                ox.this.ox(false);
            }
        });
    }

    private boolean iw(int i) {
        s sVar = this.s;
        return sVar != null && sVar.ox(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean jw() {
        return TextUtils.equals(this.op, "splash_ad") || TextUtils.equals(this.op, "cache_splash_ad");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean mn(int i) {
        j jVar;
        int ox = q.ox(wp.getContext());
        if (ox == 0) {
            iw();
            this.jy = true;
            s sVar = this.s;
            if (sVar != null) {
                sVar.dq(this.iw, this.kk, false);
            }
        }
        if (ox != 4 && ox != 0) {
            s sVar2 = this.s;
            if (sVar2 != null) {
                sVar2.dq();
            }
            iw();
            this.jy = true;
            this.ce = false;
            s sVar3 = this.s;
            if (sVar3 != null && (jVar = this.iw) != null) {
                return sVar3.dq(i, pa.q(jVar), this.u);
            }
        } else if (ox == 4) {
            this.jy = false;
            s sVar4 = this.s;
            if (sVar4 != null) {
                sVar4.r();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(Context context, int i) {
        d(context, i);
        if (i == 4) {
            this.jy = false;
        }
    }

    private boolean ox(int i, int i2) {
        return i < i2 && bu();
    }

    private void p(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        if (pVar == null) {
            return;
        }
        final long ox = ox(pVar);
        if (this.p != null) {
            j jVar = this.iw;
            if (jVar != null) {
                pVar.p(String.valueOf(c.kk(jVar)));
            }
            pVar.p(0);
            this.p.dq(pVar);
            this.p.dq(ir());
        }
        this.f3663e = System.currentTimeMillis();
        if (!TextUtils.isEmpty(pVar.f())) {
            s sVar = this.s;
            if (sVar != null) {
                sVar.s(8);
                this.s.s(0);
            }
            boolean ox2 = c.ox(this.iw);
            s sVar2 = this.s;
            boolean dq2 = sVar2 != null ? er.dq(sVar2.dq, 50, 9) : true;
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.3
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.f3663e = System.currentTimeMillis();
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).s.p(0);
                    }
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).p != null && ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).mn == 0) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).p.dq(true, ox, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).fw);
                    } else if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).p != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).p.dq(true, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).mn, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) ox.this).fw);
                    }
                }
            };
            if (!ox2 || dq2) {
                dq(runnable);
            } else {
                d(runnable);
                ia(true);
                WeakReference<dq> weakReference = this.vf;
                if (weakReference != null && weakReference.get() != null) {
                    this.vf.get().kk();
                }
            }
        }
        if (this.ig) {
            uh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p(int i, int i2) {
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200 || i == 60008;
        if (i2 == 1 || i2 == 700 || i2 == 800) {
            return true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        s sVar;
        this.ds++;
        if (ji() && (sVar = this.s) != null) {
            sVar.d();
            ox.dq dqVar = this.h;
            if (dqVar != null) {
                dqVar.dq(this.kx, com.bykv.vk.openvk.component.video.dq.s.dq.dq(this.mn, this.f3644f));
            }
            this.kx = System.currentTimeMillis() - this.f3663e;
            this.s.s(true);
            boolean dq2 = com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw);
            int vf = this.iw.vf();
            boolean z = vf <= 0;
            boolean z2 = !z && this.ds >= vf;
            boolean ox = c.ox(this.iw);
            if (!ox || z2 || dq2) {
                this.s.dq(this.iw, this.kk, true);
            }
            if (!this.n || ds() || vw()) {
                this.n = true;
                long j = this.f3644f;
                d(j, j);
                long j2 = this.f3644f;
                this.mn = j2;
                this.ia = j2;
                fw.dq dqVar2 = new fw.dq();
                dqVar2.dq(no());
                dqVar2.ox(q());
                dqVar2.d(ig());
                dqVar2.iw(mp());
                com.bytedance.sdk.openadsdk.iw.d.d.s(this.s, dqVar2);
            }
            if (!this.ig && this.gh) {
                s(this.s, null);
            }
            this.cd = true;
            if (dq2) {
                return;
            }
            if (ox && (z || this.ds < vf)) {
                e();
                return;
            }
            boolean z3 = q() / 1000 < 10;
            if (o.dq(this.iw) && z3 && this.ds < 2) {
                e();
            }
        }
    }

    private boolean vw() {
        return this.ds > 0 && o.dq(this.iw);
    }

    private void ws() {
        if (ji()) {
            kk(!this.gh);
            if (this.kk.get() instanceof Activity) {
                s sVar = this.s;
                if (sVar != null) {
                    sVar.d(this.wp);
                    this.s.ox(false);
                }
                s(1);
                WeakReference<ox.d> weakReference = this.f3662c;
                ox.d dVar = weakReference != null ? weakReference.get() : null;
                if (dVar != null) {
                    dVar.dq(this.gh);
                }
            }
        }
    }

    private void xi() {
        s sVar = this.s;
        if (sVar != null) {
            sVar.p(0);
            this.s.dq(false, false);
            this.s.ox(false);
            this.s.s();
            this.s.mn();
        }
    }

    private boolean yy() {
        j jVar = this.iw;
        if (com.bytedance.sdk.openadsdk.s.dq.d(jVar)) {
            com.bykv.vk.openvk.component.video.api.renderview.d k = k();
            if (k == null) {
                if (this.v != null) {
                    StringBuilder sb = new StringBuilder("创建lottie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb.append(this.s == null);
                    this.v.dq((com.bykv.vk.openvk.component.video.api.dq) null, new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb.toString()));
                }
                ig.p("tag_video_play", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            this.p = new com.bytedance.sdk.openadsdk.upie.video.lottie.dq(k, com.bytedance.sdk.openadsdk.s.dq.s(jVar), new com.bykv.vk.openvk.component.video.dq.p.p(String.valueOf(c.ia(this.iw))), pa.fw(jVar));
        } else if (com.bytedance.sdk.openadsdk.s.dq.ox(jVar)) {
            com.bykv.vk.openvk.component.video.api.renderview.d k2 = k();
            if (k2 == null) {
                if (this.v != null) {
                    StringBuilder sb2 = new StringBuilder("创建Upie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb2.append(this.s == null);
                    this.v.dq((com.bykv.vk.openvk.component.video.api.dq) null, new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb2.toString()));
                }
                ig.p("tag_video_play", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int ia = c.ia(this.iw);
            this.p = new com.bytedance.sdk.openadsdk.upie.video.lottie.d((op.p() && this.r.cd() == 1) ? new com.bytedance.sdk.component.ig.d.d(wp.getContext(), String.valueOf(ia)) : new com.bykv.vk.openvk.component.video.dq.p.p(String.valueOf(ia)), com.bytedance.sdk.openadsdk.s.dq.s(jVar), k2);
        } else {
            int ia2 = c.ia(this.iw);
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
                this.p = new com.bytedance.sdk.component.ig.dq.dq(wp.getContext(), h(), (long) pa.iw(this.iw), wp.d().bu());
            } else if (op.p() && this.r.cd() == 1) {
                this.p = new com.bytedance.sdk.component.ig.d.d(wp.getContext(), String.valueOf(ia2));
            } else {
                this.p = new com.bykv.vk.openvk.component.video.dq.p.p(String.valueOf(ia2));
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw) && !TextUtils.isEmpty(this.op)) {
            com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
            if (this.op.equals("embeded_ad")) {
                com.bytedance.sdk.openadsdk.core.ig.ox.s(this.iw, "embeded_ad", System.currentTimeMillis() - dq2.d("feed_show_time", 0L));
            } else if (this.op.equals("draw_ad")) {
                com.bytedance.sdk.openadsdk.core.ig.ox.s(this.iw, "draw_ad", System.currentTimeMillis() - dq2.d("draw_show_time", 0L));
            }
        }
    }

    public boolean by() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        return dqVar != null && dqVar.mp();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void d() {
        if (this.p != null) {
            ox(false);
            this.p.dq();
        }
    }

    public void d(int i, int i2) {
        com.bykv.vk.openvk.component.video.api.dq dqVar;
        ViewGroup viewGroup;
        int i3;
        int i4;
        ViewGroup.LayoutParams layoutParams;
        try {
            WeakReference<Context> weakReference = this.kk;
            if (weakReference != null && weakReference.get() != null && k() != null && (dqVar = this.p) != null && (viewGroup = this.wp) != null && viewGroup != null) {
                if (i < 0 && i2 < 0) {
                    i = dqVar.no();
                    i2 = this.p.ig();
                }
                int width = this.wp.getWidth();
                int height = this.wp.getHeight();
                if (width > 0 && height > 0 && i2 > 0 && i > 0) {
                    if (i == i2) {
                        i4 = width > height ? height : width;
                        i3 = i4;
                    } else if (i > i2) {
                        i3 = (int) Math.round((width * 1.0d) / ((i * 1.0f) / i2));
                        i4 = width;
                    } else if (fd()) {
                        i3 = 0;
                        i4 = 0;
                    } else {
                        i4 = (int) Math.round((height * 1.0f) / ((i2 * 1.0f) / i));
                        i3 = height;
                    }
                    if (i3 > height || i3 <= 0) {
                        i3 = height;
                    }
                    if (d(i, i2, i4, width)) {
                        i4 = width;
                    }
                    if (fd()) {
                        dq(i, i2, width, height);
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i4, i3);
                    layoutParams2.addRule(13);
                    Object k = k();
                    if (k instanceof TextureView) {
                        ((TextureView) k).setLayoutParams(layoutParams2);
                    } else if (k instanceof UpieVideoView) {
                        ((UpieVideoView) k).setLayoutParams(layoutParams2);
                    } else if (k instanceof SurfaceView) {
                        ((SurfaceView) k).setLayoutParams(layoutParams2);
                    }
                    if (!ox(i, i2) || (layoutParams = this.wp.getLayoutParams()) == null) {
                        return;
                    }
                    layoutParams.height = i3;
                    layoutParams.width = i4;
                    this.wp.setLayoutParams(layoutParams);
                    s sVar = this.s;
                    if (sVar != null) {
                        sVar.dq(layoutParams.width, layoutParams.height);
                        return;
                    }
                    return;
                }
                return;
            }
            WeakReference<Context> weakReference2 = this.kk;
            if (weakReference2 != null) {
                weakReference2.get();
            }
            k();
        } catch (Throwable unused) {
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void d(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        this.r = pVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void d(com.bykv.vk.openvk.component.video.api.p.d dVar, int i) {
        s sVar = this.s;
        if (sVar != null) {
            sVar.iw();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void d(com.bykv.vk.openvk.component.video.api.p.d dVar, View view) {
        d(dVar, view, false, false);
    }

    public void d(com.bykv.vk.openvk.component.video.api.p.d dVar, View view, boolean z, boolean z2) {
        if (ji()) {
            kk(!this.gh);
            if (this.kk.get() instanceof Activity) {
                if (this.gh) {
                    s(z ? 8 : 0);
                    s sVar = this.s;
                    if (sVar != null) {
                        sVar.dq(this.wp);
                        this.s.ox(false);
                    }
                } else {
                    s(1);
                    s sVar2 = this.s;
                    if (sVar2 != null) {
                        sVar2.d(this.wp);
                        this.s.ox(false);
                    }
                }
                WeakReference<ox.d> weakReference = this.f3662c;
                ox.d dVar2 = weakReference != null ? weakReference.get() : null;
                if (dVar2 != null) {
                    dVar2.dq(this.gh);
                }
            }
        }
    }

    public s dq(Context context, EnumSet<d.dq> enumSet) {
        View d2 = this.ig ? d(context) : new LayoutVideoDetail(context);
        if (d2 == null) {
            return null;
        }
        return this.ig ? new s(context, d2, true, enumSet, this.iw, this, j(), null) : new p(context, d2, true, enumSet, this.iw, this, false);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq() {
        if (q.ox(wp.getContext()) == 0) {
            return;
        }
        this.j = true;
        if (this.p != null) {
            o();
        } else {
            o();
            ij();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(int i) {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
            if (this.uh <= 0) {
                this.uh = System.currentTimeMillis();
            }
            long currentTimeMillis = System.currentTimeMillis() - this.uh;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("close_reason", Integer.valueOf(i));
                jSONObject.putOpt("buffer_count", Integer.valueOf(mp()));
                jSONObject.putOpt("buffer_time", Long.valueOf(ig()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (this.op.equals("embeded_ad")) {
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.iw, "embeded_ad", currentTimeMillis, jSONObject);
            } else if (this.op.equals("draw_ad")) {
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.iw, "draw_ad", currentTimeMillis, jSONObject);
            }
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
                if (com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.iw)) {
                    com.bytedance.sdk.openadsdk.core.live.d.dq().dq("tobsdk_livesdk_live_window_duration_v2", this.iw, currentTimeMillis);
                } else {
                    com.bytedance.sdk.openadsdk.core.video.ox.dq.dq("tobsdk_livesdk_live_window_duration_v2", this.iw, currentTimeMillis);
                }
            }
        }
    }

    public void dq(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.ob = i;
        this.l = i2;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(long j) {
        this.mn = j;
        long j2 = this.ia;
        if (j2 > j) {
            j = j2;
        }
        this.ia = j;
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
        }
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.dq(true, this.mn, this.fw);
        }
    }

    public void dq(Context context, int i) {
        d(context, i);
        if (i == 4) {
            this.jy = false;
            ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.8
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.ia();
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, int i) {
        if (this.p == null) {
            return;
        }
        dq(this.ha, iw(i));
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, int i, boolean z) {
        if (ji()) {
            long j = (long) (((i * r0) * 1.0f) / 100.0f);
            if (this.f3644f > 0) {
                this.ha = (int) j;
            } else {
                this.ha = 0L;
            }
            s sVar = this.s;
            if (sVar != null) {
                sVar.dq(this.ha);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, View view) {
        if (this.p == null || !ji()) {
            return;
        }
        if (this.p.mp()) {
            iw();
            s sVar = this.s;
            if (sVar != null) {
                sVar.d(true, false);
                this.s.iw();
                return;
            }
            return;
        }
        if (this.p.q()) {
            iw(false);
            s sVar2 = this.s;
            if (sVar2 != null) {
                sVar2.d(false, false);
                return;
            }
            return;
        }
        s sVar3 = this.s;
        if (sVar3 != null) {
            sVar3.ox(this.wp);
        }
        dq(this.mn);
        s sVar4 = this.s;
        if (sVar4 != null) {
            sVar4.d(false, false);
        }
    }

    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, View view, boolean z) {
        ws();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, View view, boolean z, boolean z2) {
        if (this.ig) {
            iw();
        }
        if (this.s == null) {
            return;
        }
        if (z && !this.ig && !wp()) {
            this.s.d(!by(), false);
            this.s.dq(z2, true, false);
        }
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar == null || !dqVar.mp()) {
            this.s.iw();
        } else {
            this.s.iw();
            this.s.s();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(ox.d dVar) {
        this.f3662c = new WeakReference<>(dVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(ox.dq dqVar) {
        this.h = dqVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(ox.p pVar) {
        this.nh = new WeakReference<>(pVar);
    }

    public void dq(j jVar) {
        this.iw = jVar;
    }

    public void dq(final NativeVideoTsView.dq dqVar) {
        s sVar;
        if (!this.ig || (sVar = this.s) == null) {
            return;
        }
        sVar.dq(new NativeVideoTsView.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.2
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.dq
            public void dq(View view, int i) {
                NativeVideoTsView.dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq(view, i);
                }
            }
        });
    }

    public void dq(dq dqVar) {
        this.vf = new WeakReference<>(dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.dq
    public void dq(f.dq dqVar, String str) {
        int i = AnonymousClass9.dq[dqVar.ordinal()];
        if (i == 1) {
            iw();
            return;
        }
        if (i == 2) {
            dq(true, 3);
        } else {
            if (i != 3) {
                return;
            }
            ia();
            this.jy = false;
            this.ce = true;
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.q qVar) {
        s sVar;
        if (!this.ig || (sVar = this.s) == null) {
            return;
        }
        sVar.dq(qVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq(dqVar);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(Map<String, Object> map) {
        this.yy = map;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(boolean z, int i) {
        if (this.ig) {
            this.vw = q();
            dq(1);
        }
        if ((!this.n || ds()) && this.bl) {
            if (z) {
                fw.dq dqVar = new fw.dq();
                dqVar.dq(no());
                dqVar.ox(q());
                dqVar.d(ig());
                dqVar.s(i);
                dqVar.iw(mp());
                com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s, dqVar, this.yy);
                this.n = false;
            } else {
                fw.dq dqVar2 = new fw.dq();
                dqVar2.dq(no());
                dqVar2.ox(q());
                dqVar2.d(ig());
                com.bytedance.sdk.openadsdk.iw.d.d.d(this.s, dqVar2);
            }
        }
        o();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean dq(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        pVar.f();
        if (TextUtils.isEmpty(pVar.f())) {
            ig.p("tag_video_play", "[video] play video stop , because no video info");
            return false;
        }
        this.r = pVar;
        t();
        this.fw = pVar.no();
        this.mn = pVar.o();
        if (pVar.o() <= 0) {
            this.n = false;
            this.bl = false;
        }
        if (pVar.o() > 0) {
            long o = pVar.o();
            this.mn = o;
            long j = this.ia;
            if (j > o) {
                o = j;
            }
            this.ia = o;
        }
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
            if (this.ds == 0) {
                this.s.mn();
            }
            this.s.ox(pVar.ia(), pVar.kk());
            this.s.ox(this.wp);
            this.s.dq(pVar.ia(), pVar.kk());
        }
        try {
            if (this.p == null) {
                if (!yy()) {
                    return false;
                }
                this.p.dq(this.v);
            }
            kx();
            this.kx = 0L;
            p(pVar);
            return true;
        } catch (Throwable th) {
            ig.p("tag_video_play", "[video] invoke NativeVideoController#playVideo cause exception :" + th.toString());
            return false;
        }
    }

    public void e() {
        if (q.ox(wp.getContext()) == 0) {
            return;
        }
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
        }
        ox(false);
        if (this.p != null) {
            t();
            this.p.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq
    public Map<String, Object> gx() {
        return this.yy;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq
    public boolean h() {
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean i() {
        return this.wn;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void ia() {
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
        }
        s sVar2 = this.s;
        if (sVar2 != null) {
            sVar2.wp();
        }
        cv();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public long ig() {
        if (fw() == null) {
            return 0L;
        }
        return fw().f();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void iw() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.ox();
        }
        if ((!this.n || ds()) && this.bl) {
            fw.dq dqVar2 = new fw.dq();
            dqVar2.dq(no());
            dqVar2.ox(q());
            dqVar2.d(ig());
            com.bytedance.sdk.openadsdk.iw.d.d.d(this.s, dqVar2);
        }
    }

    public void iw(boolean z) {
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
        }
        s sVar2 = this.s;
        if (sVar2 != null && z) {
            sVar2.wp();
        }
        cv();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public int jy() {
        return com.bykv.vk.openvk.component.video.dq.s.dq.dq(this.ia, this.f3644f);
    }

    public com.bykv.vk.openvk.component.video.api.renderview.d k() {
        s sVar;
        WeakReference<Context> weakReference = this.kk;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        if ((this.kk.get().getResources().getConfiguration().orientation == 1 || com.bytedance.sdk.openadsdk.s.dq.dq(this.iw)) && (sVar = this.s) != null) {
            return sVar.fw();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void kk() {
        dq(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean le() {
        return this.gx;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void mn() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.ox();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public int mp() {
        if (fw() == null) {
            return 0;
        }
        return fw().fw();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void o() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.s();
            this.p = null;
        }
        j jVar = this.iw;
        int vf = jVar == null ? 2 : jVar.vf();
        boolean z = vf > 0 && this.ds == vf;
        if (!c.ox(this.iw) || z) {
            try {
                this.s.dq(this.iw, this.kk, true);
            } catch (Exception e2) {
                ig.p("NativeVideoController", e2.getMessage());
            }
        }
        e eVar = this.dq;
        if (eVar != null) {
            eVar.removeCallbacksAndMessages(null);
        }
        List<Runnable> list = this.no;
        if (list != null) {
            list.clear();
        }
        if (this.ig) {
            xz();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void ox(com.bykv.vk.openvk.component.video.api.p.d dVar, View view) {
        s sVar = this.s;
        if (sVar != null) {
            sVar.kk();
        }
        dq(1);
        dq(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean ox() {
        return false;
    }

    public void p(int i) {
        this.xz = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void p(com.bykv.vk.openvk.component.video.api.p.d dVar, View view) {
        if (!this.gh) {
            dq(1);
            dq(true, 3);
            return;
        }
        kk(false);
        s sVar = this.s;
        if (sVar != null) {
            sVar.d(this.wp);
        }
        s(1);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void p(boolean z) {
        this.wn = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public boolean p() {
        return false;
    }

    public void s(int i) {
        if (ji()) {
            boolean z = i == 0 || i == 8;
            Context context = this.kk.get();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                try {
                    activity.setRequestedOrientation(i);
                } catch (Throwable unused) {
                }
                if (z) {
                    activity.getWindow().clearFlags(1024);
                } else {
                    activity.getWindow().setFlags(1024, 1024);
                }
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void s(com.bykv.vk.openvk.component.video.api.p.d dVar, View view) {
        dq(dVar, view, false);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void s(boolean z) {
        this.by = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public boolean s() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq
    public void t() {
        if (this.kk == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.iw.d.d.d(this.iw, this.s, this.r);
    }

    public void uh() {
        if (this.jw || !this.by) {
            return;
        }
        Context applicationContext = wp.getContext().getApplicationContext();
        this.jw = true;
        k.dq(this.cv, applicationContext);
    }

    public boolean wp() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        return dqVar == null || dqVar.kk();
    }

    public void xz() {
        if (this.jw && this.by) {
            this.jw = false;
            try {
                k.dq(this.cv);
            } catch (Throwable unused) {
            }
        }
    }
}
