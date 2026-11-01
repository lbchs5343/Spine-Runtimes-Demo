package com.bytedance.sdk.openadsdk.core.video.d;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.api.p.d;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bykv.vk.openvk.component.video.dq.p.p;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.k;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.s;
import com.bytedance.sdk.openadsdk.core.widget.f;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.res.layout.video.LayoutVideoPlayLayoutForLive;
import com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq extends com.bytedance.sdk.openadsdk.core.video.dq.dq {
    protected com.bytedance.sdk.openadsdk.core.d.dq bl;
    private long by;
    private ox.dq ce;
    private long ds;
    private InterfaceC0195dq j;
    public long k;
    private final int l;
    private WeakReference<ox.d> ob;
    private final String uh;
    private int v;
    private int vw;
    protected ViewGroup wp;
    private int yy;

    /* renamed from: e, reason: collision with root package name */
    protected long f3637e = 0;
    protected boolean kx = false;
    protected boolean h = false;
    protected Map<String, Object> ji = null;
    private final AtomicInteger op = new AtomicInteger(0);
    private final AtomicInteger ir = new AtomicInteger(0);
    private long u = 0;

    /* renamed from: c, reason: collision with root package name */
    private long f3636c = 0;
    private final Runnable er = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.1
        @Override // java.lang.Runnable
        public void run() {
            if (dq.this.ce != null) {
                dq.this.ce.dq();
            }
            if (dq.this.j != null) {
                dq.this.j.d();
            }
        }
    };
    private boolean wn = false;
    private boolean nh = false;
    private boolean vf = false;
    private boolean t = false;
    private boolean gx = true;
    private boolean xz = false;
    dq.InterfaceC0003dq n = new dq.InterfaceC0003dq() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2
        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void d(com.bykv.vk.openvk.component.video.api.dq dqVar) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onPrepared: ");
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.3
                @Override // java.lang.Runnable
                public void run() {
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.removeCallbacks(dq.this.er);
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s != null) {
                        dq.this.s(0);
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.d();
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void d(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onBufferingUpdate: ");
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onCompletion: ");
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.iw(false);
                }
            });
            dq.this.dq(4);
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onBufferEnd: ");
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.7
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s != null) {
                        dq.this.s(0);
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.d();
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.removeCallbacks(dq.this.er);
                        dq.this.t = false;
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onVideoSizeChanged: ");
            dq.this.yy = i;
            dq.this.v = i2;
            dq.this.bu();
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2, int i3) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onBufferStart: ");
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.6
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s != null) {
                        dq.this.s(8);
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.k();
                        dq.this.yy();
                        dq.this.t = true;
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, long j) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onRenderStart: ");
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.2
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s != null) {
                        dq.this.s(0);
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.d();
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.removeCallbacks(dq.this.er);
                        dq.this.t = false;
                    }
                }
            });
            dq.this.s(j);
            dq.this.by = System.currentTimeMillis();
            dq.this.fd();
            if (dq.this.j != null) {
                dq.this.j.ox();
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(final com.bykv.vk.openvk.component.video.api.dq dqVar, final long j, final long j2) {
            if (Math.abs(j - ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).mn) < 50) {
                return;
            }
            ig.dq("BaseVideoController", "IVideoPlayerCallback onPlayPositionUpdate: current = ", Long.valueOf(j), "; duration=", Long.valueOf(j2));
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.8
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).i != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).i.dq(j, j2);
                    }
                    dq.this.d(j, j2);
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw.kr() != 2 || j2 <= 60000 || j < 60000 || ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).q) {
                        return;
                    }
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).q = true;
                    dqVar.p();
                    dq.this.iw(false);
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(final com.bykv.vk.openvk.component.video.api.dq dqVar, final com.bykv.vk.openvk.component.video.api.ox.d dVar) {
            if (dVar == null) {
                return;
            }
            ig.dq("BaseVideoController", "IVideoPlayerCallback video_pip_big_error onError: code:" + dVar.dq() + " msg:" + dVar.ox());
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bykv.vk.openvk.component.video.api.dq dqVar2;
                    com.bykv.vk.openvk.component.video.api.dq dqVar3;
                    int r;
                    int dq = dVar.dq();
                    if (dq == 308 && (dqVar2 = ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).p) != null && dqVar2 != (dqVar3 = dqVar) && (dqVar3 instanceof p) && ((r = ((p) dqVar3).r()) == 200 || r == 203)) {
                        ig.p("BaseVideoController", "ignore errorCode:" + dq + " state:" + r);
                        return;
                    }
                    dq.this.dq(dq, dVar.d(), dVar.ox());
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.removeCallbacks(dq.this.er);
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s != null) {
                        dq.this.s(0);
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.d();
                    }
                    if (dq.this.ce != null) {
                        dq.this.ce.d(dq.this.f3636c, com.bykv.vk.openvk.component.video.dq.s.dq.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).mn, dq.this.k));
                    }
                    if (dq.this.j != null) {
                        dq.this.j.dq(dq, dVar.ox());
                    }
                }
            });
            dq.this.dq(dVar.dq(), dVar.ox());
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
            com.bytedance.sdk.openadsdk.core.ig.ox.dq((Context) ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).kk.get(), ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw, dq.this.uh, "pangle_live_sdk_monitor", jSONObject);
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, boolean z) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onSeekCompletion: ");
            ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.2.5
                @Override // java.lang.Runnable
                public void run() {
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).dq.removeCallbacks(dq.this.er);
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s != null) {
                        dq.this.s(0);
                        ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.d();
                    }
                }
            });
        }

        @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
        public void ox(com.bykv.vk.openvk.component.video.api.dq dqVar) {
            ig.dq("BaseVideoController", "IVideoPlayerCallback onRelease: ");
        }
    };
    private final k.dq ha = new k.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.3
        @Override // com.bytedance.sdk.component.utils.k.dq
        public void dq(Context context, Intent intent, boolean z, int i) {
            dq.this.dq(context, i);
        }
    };
    private boolean cv = false;
    private long dc = 0;
    private AtomicBoolean jw = new AtomicBoolean(false);

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.d.dq$9, reason: invalid class name */
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

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.d.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0195dq {
        void d();

        void dq();

        void dq(int i, String str);

        void dq(long j, long j2);

        void ox();
    }

    public dq(Context context, ViewGroup viewGroup, j jVar, com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this.vw = 1;
        this.vw = q.ox(context);
        this.wp = viewGroup;
        this.kk = new WeakReference<>(context);
        this.iw = jVar;
        this.bl = dqVar;
        dq(context);
        this.l = c.kk(this.iw);
        this.uh = c.d(this.iw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i, int i2) {
        Throwable th;
        dq dqVar;
        try {
            WeakReference<Context> weakReference = this.kk;
            if (weakReference == null || weakReference.get() == null || ij() == null || this.p == null || this.iw == null) {
                return;
            }
            int[] d2 = ce.d(wp.getContext());
            boolean z = this.iw.ho() == 1;
            float f2 = d2[0];
            float f3 = d2[1];
            float f4 = i;
            float f5 = i2;
            try {
                if (z) {
                    if (f4 > f5) {
                        try {
                            dq(f2, f3, f4, f5, true);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            ig.d("changeVideoSize", "changeVideoSizeByWidth error", th);
                        }
                    }
                    f3 = (f5 * f2) / f4;
                    dqVar = this;
                } else if (f4 < f5) {
                    dq(f2, f3, f4, f5, false);
                    return;
                } else {
                    dqVar = this;
                    f2 = (f4 * f3) / f5;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) f3);
                layoutParams.addRule(13);
                if (dqVar.wp != null) {
                    Object ij = ij();
                    if (ij instanceof TextureView) {
                        ((TextureView) ij).setLayoutParams(layoutParams);
                    } else if (ij instanceof UpieVideoView) {
                        ((UpieVideoView) ij).setLayoutParams(layoutParams);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                ig.d("changeVideoSize", "changeVideoSizeByWidth error", th);
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j, long j2) {
        this.mn = j;
        this.k = j2;
        this.s.dq(j, j2);
        int dq = com.bykv.vk.openvk.component.video.dq.s.dq.dq(j, j2);
        if (ox() || p()) {
            this.s.d(100);
        } else {
            this.s.d(dq);
        }
        ox(j, j2);
        try {
            ox.dq dqVar = this.ce;
            if (dqVar != null) {
                dqVar.dq(j, j2);
            }
            InterfaceC0195dq interfaceC0195dq = this.j;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq(j, j2);
            }
        } catch (Throwable th) {
            ig.d("BaseVideoController", "onProgressUpdate error: ", th);
        }
    }

    private void dq(float f2, float f3, float f4, float f5, boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        if (f4 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f5 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            try {
                f4 = pa.p(this.iw);
                f5 = pa.ox(this.iw);
            } catch (Throwable unused) {
                return;
            }
        }
        if (f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (z) {
                if (f4 < f5) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) ((f5 * f2) / f4));
            } else if (f4 > f5) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f4 * f3) / f5), (int) f3);
            }
            layoutParams.addRule(13);
            Object ij = ij();
            if (ij instanceof TextureView) {
                ((TextureView) ij).setLayoutParams(layoutParams);
            } else if (ij instanceof UpieVideoView) {
                ((UpieVideoView) ij).setLayoutParams(layoutParams);
            }
            this.xz = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2) {
        ViewGroup viewGroup;
        try {
            if (ij() != null && this.p != null && (viewGroup = this.wp) != null) {
                float f2 = i;
                float f3 = i2;
                float width = viewGroup.getWidth();
                float f4 = f2 / (width * 1.0f);
                float height = this.wp.getHeight();
                if (f4 <= f3 / (height * 1.0f)) {
                    width = (height / (f3 * 1.0f)) * f2;
                } else {
                    height = (width / (f2 * 1.0f)) * f3;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) width, (int) height);
                layoutParams.addRule(13);
                Object ij = ij();
                if (ij instanceof TextureView) {
                    ((TextureView) ij).setLayoutParams(layoutParams);
                } else if (ij instanceof UpieVideoView) {
                    ((UpieVideoView) ij).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th) {
            ig.d("changeVideoSize", "changeVideoSizeSupportInteraction error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str) {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
            int k = k();
            if (k == 1) {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.iw, "rewarded_video", i, str);
            } else if (k == 2) {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.iw, "fullscreen_interstitial_ad", i, str);
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
        EnumSet noneOf = EnumSet.noneOf(d.dq.class);
        noneOf.add(d.dq.hideCloseBtn);
        noneOf.add(d.dq.hideBackBtn);
        s sVar = new s(context.getApplicationContext(), new LayoutVideoPlayLayoutForLive(context), true, noneOf, this.iw, this, this.bl);
        this.s = sVar;
        sVar.dq((com.bykv.vk.openvk.component.video.api.p.dq) this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, int i) {
        if (ji() && this.vw != i) {
            if (!this.vf) {
                ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.7
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.mn(2);
                    }
                });
            }
            this.vw = i;
        }
    }

    private com.bykv.vk.openvk.component.video.api.renderview.d ij() {
        s sVar;
        WeakReference<Context> weakReference = this.kk;
        if (weakReference == null || weakReference.get() == null || (sVar = this.s) == null) {
            return null;
        }
        return sVar.fw();
    }

    private boolean iw(int i) {
        return this.s.ox(i);
    }

    private void mn(boolean z) {
        if (!this.nh || ox() || p()) {
            this.nh = true;
            if (!u() || this.iw == null) {
                long j = this.k;
                d(j, j);
                long j2 = this.k;
                this.mn = j2;
                this.ia = j2;
                nh();
                return;
            }
            if (z) {
                nh();
                if (this.iw.we() != 8) {
                    t();
                    return;
                }
                return;
            }
            long j3 = this.k;
            d(j3, j3);
            long j4 = this.k;
            this.mn = j4;
            this.ia = j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean mn(int i) {
        j jVar;
        int ox = q.ox(wp.getContext());
        if (ox != 4 && ox != 0) {
            iw();
            this.jy = true;
            this.vf = false;
            s sVar = this.s;
            if (sVar != null && (jVar = this.iw) != null) {
                return sVar.dq(i, pa.q(jVar), true);
            }
        } else if (ox == 4) {
            this.jy = false;
            s sVar2 = this.s;
            if (sVar2 != null) {
                sVar2.r();
            }
        }
        return true;
    }

    private void o(boolean z) {
        if (this.j != null) {
            if (!u() || z) {
                this.j.dq();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(int i, int i2) {
        Throwable th;
        float f2;
        try {
            ig.dq("changeVideoSize", "changeVideoSize start.......mMaterialMeta.getAdSlot()=" + this.iw.ds());
            if (ws()) {
                return;
            }
            ig.dq("changeVideoSize", "changeVideoSize start check condition complete ... go ..");
            int[] d2 = ce.d(wp.getContext());
            boolean z = false;
            boolean z2 = this.iw.ho() == 1;
            float f3 = d2[0];
            float f4 = d2[1];
            float f5 = i;
            float f6 = i2;
            try {
                if (z2) {
                    if (f5 > f6) {
                        try {
                            dq(f3, f4, f5, f6, true);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            ig.d("changeVideoSize", "changeSize error", th);
                        }
                    }
                } else if (f5 < f6) {
                    dq(f3, f4, f5, f6, false);
                    return;
                }
                float f7 = f5 / f6;
                float f8 = f3 / f4;
                if (z2) {
                    if (f8 < 0.5625f && f7 == 0.5625f) {
                        f2 = (f4 * 9.0f) / 16.0f;
                        f6 = f4;
                        z = true;
                    }
                    f2 = f5;
                } else {
                    if (f8 > 1.7777778f && f7 == 1.7777778f) {
                        f6 = (f3 * 9.0f) / 16.0f;
                        f2 = f3;
                        z = true;
                    }
                    f2 = f5;
                }
                ig.dq("changeVideoSize", "适配后宽高：videoHeight=" + f6 + ",videoWidth=" + f2);
                if (z) {
                    f3 = f2;
                    f4 = f6;
                } else {
                    ig.dq("changeVideoSize", " 屏幕比例和视频比例相同，以及其他情况都按照屏幕宽高播放，videoHeight=" + f4 + "，videoWidth=" + f3);
                }
                int i3 = (int) f3;
                int i4 = (int) f4;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i4);
                layoutParams.addRule(13);
                Object ij = ij();
                if ((ij instanceof TextureView) || (ij instanceof UpieVideoView)) {
                    if (ij instanceof TextureView) {
                        ((TextureView) ij).setLayoutParams(layoutParams);
                    } else {
                        ((UpieVideoView) ij).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.wp.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.height = i4;
                        layoutParams2.width = i3;
                        this.wp.setLayoutParams(layoutParams2);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                ig.d("changeVideoSize", "changeSize error", th);
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private void ox(long j, long j2) {
        if (u()) {
            final int we = this.iw.we();
            if (d(we)) {
                long c2 = c();
                if (jw() && j >= c2 - 200 && this.jw.get() && Math.abs(j - j2) > 200) {
                    this.jw.set(false);
                    this.dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.6
                        @Override // java.lang.Runnable
                        public void run() {
                            dq.this.iw(true);
                            if (we == 8) {
                                dq.this.fw().p();
                            }
                        }
                    });
                }
            }
        }
        iw(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(int i, int i2) {
        j jVar;
        try {
            WeakReference<Context> weakReference = this.kk;
            if (weakReference != null && weakReference.get() != null && ij() != null && this.p != null && (jVar = this.iw) != null) {
                boolean z = jVar.ho() == 1;
                int[] d2 = ce.d(wp.getContext());
                dq(d2[0], d2[1], i, i2, z);
            }
        } catch (Throwable unused) {
        }
    }

    private void p(com.bykv.vk.openvk.component.video.api.ox.p pVar) throws Exception {
        if (pVar == null) {
            return;
        }
        this.r = pVar;
        final long ox = ox(pVar);
        if (this.p != null) {
            j jVar = this.iw;
            if (jVar != null) {
                pVar.p(String.valueOf(c.kk(jVar)));
            }
            pVar.p(1);
            this.p.dq(pVar);
            this.p.dq(ir());
        }
        this.u = System.currentTimeMillis();
        if (TextUtils.isEmpty(pVar.f())) {
            return;
        }
        this.s.s(8);
        this.s.s(0);
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.5
            @Override // java.lang.Runnable
            public void run() {
                dq.this.u = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).s.p(0);
                if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).p != null && ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).mn == 0) {
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).p.dq(true, ox, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).fw);
                } else if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).p != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).p.dq(true, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).mn, ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).fw);
                }
            }
        });
    }

    private boolean wp() {
        j jVar = this.iw;
        if (com.bytedance.sdk.openadsdk.s.dq.d(jVar)) {
            com.bykv.vk.openvk.component.video.api.renderview.d ij = ij();
            if (ij == null) {
                if (this.n != null) {
                    StringBuilder sb = new StringBuilder("创建lottie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb.append(this.s == null);
                    this.n.dq((com.bykv.vk.openvk.component.video.api.dq) null, new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb.toString()));
                }
                ig.p("BaseVideoController", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            this.p = new com.bytedance.sdk.openadsdk.upie.video.lottie.dq(ij, com.bytedance.sdk.openadsdk.s.dq.s(jVar), new p(String.valueOf(c.ia(this.iw))), pa.fw(jVar));
        } else if (com.bytedance.sdk.openadsdk.s.dq.ox(jVar)) {
            com.bykv.vk.openvk.component.video.api.renderview.d ij2 = ij();
            if (ij2 == null) {
                if (this.n != null) {
                    StringBuilder sb2 = new StringBuilder("创建Upie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb2.append(this.s == null);
                    this.n.dq((com.bykv.vk.openvk.component.video.api.dq) null, new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb2.toString()));
                }
                ig.p("BaseVideoController", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int ia = c.ia(this.iw);
            this.p = new com.bytedance.sdk.openadsdk.upie.video.lottie.d((op.p() && this.r.cd() == 1) ? new com.bytedance.sdk.component.ig.d.d(wp.getContext(), String.valueOf(ia)) : new p(String.valueOf(ia)), com.bytedance.sdk.openadsdk.s.dq.s(jVar), ij2);
        } else {
            int ia2 = c.ia(this.iw);
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
                this.p = new com.bytedance.sdk.component.ig.dq.dq(wp.getContext(), h(), (long) pa.iw(this.iw), wp.d().bu());
            } else if (op.p() && this.r.cd() == 1) {
                this.p = new com.bytedance.sdk.component.ig.d.d(wp.getContext(), String.valueOf(ia2));
            } else {
                this.p = new p(String.valueOf(ia2));
            }
        }
        return true;
    }

    private boolean ws() throws Throwable {
        j jVar;
        WeakReference<Context> weakReference = this.kk;
        return weakReference == null || weakReference.get() == null || ij() == null || this.p == null || (jVar = this.iw) == null || jVar.tv() != null || this.iw.ny() != null || this.iw.yy() == 1;
    }

    private void xi() {
        s sVar = this.s;
        if (sVar != null) {
            sVar.p(0);
            this.s.dq(false, false);
            this.s.ox(false);
            this.s.s();
            s(8);
            this.s.mn();
        }
    }

    public boolean O_() {
        j jVar = this.iw;
        return jVar == null || jVar.es() == 100.0f;
    }

    public void bu() {
        this.dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.8
            @Override // java.lang.Runnable
            public void run() {
                if (gh.p(((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw) || !dq.this.O_()) {
                    dq dqVar = dq.this;
                    dqVar.dq(dqVar.yy, dq.this.v);
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw) && ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw.ho() == 2 && dq.this.O_()) {
                    return;
                }
                if (!dq.this.O_()) {
                    dq dqVar2 = dq.this;
                    dqVar2.dq(dqVar2.yy, dq.this.v);
                    return;
                }
                if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw != null && ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw.uh() == 0) {
                    dq dqVar3 = dq.this;
                    dqVar3.p(dqVar3.yy, dq.this.v);
                } else if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw == null || ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw.uh() != 2) {
                    dq dqVar4 = dq.this;
                    dqVar4.ox(dqVar4.yy, dq.this.v);
                } else {
                    dq dqVar5 = dq.this;
                    dqVar5.d(dqVar5.yy, dq.this.v);
                }
            }
        });
    }

    public long by() {
        return this.dc;
    }

    public boolean cv() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        return dqVar != null && dqVar.mp();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void d() {
        if (this.p != null) {
            if (!s()) {
                this.op.getAndAdd(1);
                uh();
            }
            this.ir.getAndAdd(1);
            if (!u()) {
                t();
            }
            ox(false);
            this.p.dq();
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
                    p(z ? 8 : 0);
                    s sVar = this.s;
                    if (sVar != null) {
                        sVar.dq(this.wp);
                        this.s.ox(false);
                    }
                } else {
                    p(1);
                    s sVar2 = this.s;
                    if (sVar2 != null) {
                        sVar2.d(this.wp);
                        this.s.ox(false);
                    }
                }
                WeakReference<ox.d> weakReference = this.ob;
                ox.d dVar2 = weakReference != null ? weakReference.get() : null;
                if (dVar2 != null) {
                    dVar2.dq(this.gh);
                }
            }
        }
    }

    public boolean dc() {
        boolean ox = ox();
        if (!ox || xz() >= 2) {
            return ox;
        }
        return this.dc >= q() - 400;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq() {
        s sVar = this.s;
        if (sVar != null) {
            sVar.s();
            this.s.dq();
        }
        s sVar2 = this.s;
        if (sVar2 != null) {
            sVar2.wp();
        }
        dq(-1L);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(int i) {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
            int k = k();
            long currentTimeMillis = System.currentTimeMillis() - this.by;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("close_reason", Integer.valueOf(i));
                jSONObject.putOpt("buffer_count", Integer.valueOf(mp()));
                jSONObject.putOpt("buffer_time", Long.valueOf(ig()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (k == 1) {
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.iw, "rewarded_video", currentTimeMillis, jSONObject);
            } else if (k == 2) {
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.iw, "fullscreen_interstitial_ad", currentTimeMillis, jSONObject);
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

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(long j) {
        this.mn = Math.max(j, fw().gh());
        this.ia = Math.max(this.ia, no());
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
        }
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.dq(false, this.mn, this.fw);
            this.p.dq(this.mn);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, int i) {
        if (this.p == null) {
            return;
        }
        dq(this.ds, iw(i));
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, int i, boolean z) {
        if (ji()) {
            long j = (long) (((i * r0) * 1.0f) / 100.0f);
            if (this.k > 0) {
                this.ds = (int) j;
            } else {
                this.ds = 0L;
            }
            s sVar = this.s;
            if (sVar != null) {
                sVar.dq(this.ds);
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
            this.s.d(true, false);
            this.s.iw();
            return;
        }
        if (this.p.q()) {
            ia();
            s sVar = this.s;
            if (sVar != null) {
                sVar.d(false, false);
                return;
            }
            return;
        }
        s sVar2 = this.s;
        if (sVar2 != null) {
            sVar2.ox(this.wp);
        }
        dq(this.mn);
        s sVar3 = this.s;
        if (sVar3 != null) {
            sVar3.d(false, false);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, View view, boolean z, boolean z2) {
        if (this.ig) {
            iw();
        }
        if (z && !this.ig && !ha()) {
            this.s.d(!cv(), false);
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
        this.ob = new WeakReference<>(dVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(ox.dq dqVar) {
        this.ce = dqVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(ox.p pVar) {
    }

    public void dq(InterfaceC0195dq interfaceC0195dq) {
        this.j = interfaceC0195dq;
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
            this.vf = true;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(Map<String, Object> map) {
        this.ji = map;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(boolean z, int i) {
        kk();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean dq(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        if (pVar == null) {
            return false;
        }
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null && dqVar.q()) {
            this.p.d();
            return true;
        }
        this.r = pVar;
        pVar.f();
        if (TextUtils.isEmpty(pVar.f())) {
            ig.p("BaseVideoController", "No video info");
            return false;
        }
        if (!u() || !dc()) {
            t();
        }
        this.kx = (pVar.f().startsWith("http") || com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) ? false : true;
        this.fw = pVar.no();
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
            s(8);
            this.s.mn();
            this.s.ox(pVar.ia(), pVar.kk());
            this.s.ox(this.wp);
        }
        try {
            if (this.p == null) {
                if (!wp()) {
                    return false;
                }
                this.p.dq(this.n);
            }
            kx();
            this.f3636c = 0L;
            p(pVar);
            return true;
        } catch (Throwable th) {
            ig.p("BaseVideoController", "create video error:" + th.getMessage());
            return false;
        }
    }

    public boolean ds() {
        return this.xz;
    }

    public void fd() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw)) {
            int k = k();
            com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ox.dq();
            if (k == 1) {
                com.bytedance.sdk.openadsdk.core.ig.ox.s(this.iw, "rewarded_video", System.currentTimeMillis() - dq.d("reward_video_show_time", 0L));
            } else if (k == 2) {
                com.bytedance.sdk.openadsdk.core.ig.ox.s(this.iw, "fullscreen_interstitial_ad", System.currentTimeMillis() - dq.d("full_video_show_time", 0L));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq
    public Map<String, Object> gx() {
        HashMap hashMap = new HashMap();
        Map<String, Object> map = this.ji;
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, Object> entry2 : c.dq(this.f3637e, this.iw, fw()).entrySet()) {
            hashMap.put(entry2.getKey(), entry2.getValue());
        }
        return hashMap;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq
    public boolean h() {
        return true;
    }

    public boolean ha() {
        return this.p.kk();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean i() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void ia() {
        com.bykv.vk.openvk.component.video.api.ox.p pVar;
        s sVar = this.s;
        if (sVar != null) {
            sVar.dq();
            this.s.r();
            this.s.wp();
        }
        ig.dq("BaseVideoController", "resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.o));
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            if (dqVar.q()) {
                if (this.o || (((pVar = this.r) != null && pVar.mn()) || com.bytedance.sdk.openadsdk.s.dq.d(this.iw))) {
                    er();
                } else {
                    d(this.le);
                }
                ig.dq("BaseVideoController", "resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.o));
            } else {
                this.p.dq(false, this.mn, this.fw);
            }
        }
        if (!this.nh || ox() || p()) {
            if (this.wn || o.dq(this.iw)) {
                ob();
            }
        }
    }

    public long iw(long j) {
        long q = (q() * xz()) + (j - c());
        long j2 = this.dc;
        if (q < j2) {
            return j2;
        }
        this.dc = q;
        return q;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void iw() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.ox();
        }
        if (!this.nh || ox() || p()) {
            if (this.wn || o.dq(this.iw)) {
                vf();
            }
        }
    }

    public void iw(boolean z) {
        if (ji() && this.s != null) {
            this.dq.removeCallbacks(this.er);
            s(0);
            this.s.d();
            this.f3636c = System.currentTimeMillis() - this.u;
            this.s.s(true);
            if (c.iw(this.iw)) {
                this.s.dq(this.iw, this.kk, true);
            } else {
                this.s.kx();
            }
            mn(z);
            if (!z) {
                this.jw.set(true);
            }
            ox.dq dqVar = this.ce;
            if (dqVar != null) {
                dqVar.dq(this.f3636c, com.bykv.vk.openvk.component.video.dq.s.dq.dq(this.mn, this.k));
            }
            o(z);
            this.cd = true;
        }
    }

    public boolean jw() {
        return u() ? dc() : ox();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public int jy() {
        return com.bykv.vk.openvk.component.video.dq.s.dq.dq(this.ia, this.k);
    }

    public abstract int k();

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void kk() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.s();
            this.p = null;
        }
        s sVar = this.s;
        if (sVar != null) {
            sVar.kk();
        }
        this.dq.removeCallbacks(this.er);
        this.dq.removeCallbacksAndMessages(null);
        this.ce = null;
        this.j = null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean le() {
        return this.t;
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
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar == null) {
            return 0;
        }
        return dqVar.fw();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void o() {
        kk();
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
        return this.op.get() > 0;
    }

    public void p(int i) {
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
        p(1);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void p(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public boolean p() {
        if (o.dq(this.iw)) {
            return ((double) this.ir.get()) <= ((double) pa.f(this.iw).mn());
        }
        return super.p();
    }

    public void s(int i) {
        Object obj;
        if (this.kk == null || !com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.iw) || this.kk.get() == null || (obj = (Context) this.kk.get()) == null || !(obj instanceof com.bytedance.sdk.openadsdk.core.mn.d)) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.core.mn.d) obj).dq(i == 0);
    }

    public void s(long j) {
        if (this.wn) {
            return;
        }
        this.f3637e = j;
        l();
        this.wn = true;
        this.h = true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void s(com.bykv.vk.openvk.component.video.api.p.d dVar, View view) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void s(boolean z) {
        this.gx = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.dq.dq, com.bykv.vk.openvk.component.video.api.p.ox
    public boolean s() {
        if (o.dq(this.iw)) {
            return ((double) this.ir.get()) < ((double) pa.f(this.iw).mn());
        }
        return super.p();
    }

    public void uh() {
        j jVar = this.iw;
        if (jVar != null) {
            new dq.C0163dq().d("auto_replay").dq(c.d(jVar)).s(this.iw.fx()).p(this.iw.dn()).dq(new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.d.dq.4
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject) throws JSONException {
                    com.bykv.vk.openvk.component.video.api.ox.ox e2;
                    JSONObject jSONObject2 = new JSONObject();
                    if (o.dq(((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).iw)) {
                        jSONObject2.put("is_audio", 1);
                    }
                    if (((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).r != null && (e2 = ((com.bytedance.sdk.openadsdk.core.video.dq.dq) dq.this).r.e()) != null && e2.mn() > 0.0d) {
                        jSONObject2.put("start", e2.mn());
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                }
            });
        }
    }

    public void v() {
        if (!this.nh || ox() || p()) {
            if (this.wn || o.dq(this.iw)) {
                ob();
            }
        }
    }

    public boolean vw() {
        return this.jw.get();
    }

    public int xz() {
        return o.dq(this.iw) ? this.ir.get() : this.op.get();
    }

    public void yy() {
        int fq;
        int k = k();
        if (k != 2 && k != 1) {
            fq = 5;
            if (k != 5) {
                if (k == 3) {
                    fq = wp.d().kk(String.valueOf(this.l));
                }
                this.dq.removeCallbacks(this.er);
                this.dq.postDelayed(this.er, fq);
            }
        }
        fq = wp.d().fq() * 1000;
        this.dq.removeCallbacks(this.er);
        this.dq.postDelayed(this.er, fq);
    }
}
