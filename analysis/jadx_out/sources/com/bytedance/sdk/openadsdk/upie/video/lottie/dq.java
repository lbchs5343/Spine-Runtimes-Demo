package com.bytedance.sdk.openadsdk.upie.video.lottie;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.upie.d;
import g.fsj;
import g.gkb;
import g.hcl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements com.bykv.vk.openvk.component.video.api.dq {
    private boolean cd;

    /* renamed from: d, reason: collision with root package name */
    private final String f3892d;

    /* renamed from: e, reason: collision with root package name */
    private int f3893e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3894f;
    private boolean fw;
    private boolean gh;
    private boolean i;
    private String ia;
    private final com.bykv.vk.openvk.component.video.api.renderview.d iw;
    private boolean ji;
    private boolean k;
    private gkb kk;
    private long kx;
    private boolean le;
    private final Context mn;
    private final com.bykv.vk.openvk.component.video.api.dq mp;
    private Bitmap o;
    private final long ox;
    private final int p;
    private boolean q;
    private boolean r;
    private final int s;
    private final String dq = "TTLottieFakeVideoPlayer";
    private final Map<String, Bitmap> no = new HashMap();
    private final Map<String, Integer> ig = new HashMap();
    private final Set<dq.InterfaceC0003dq> jy = new HashSet();
    private volatile int wp = 200;
    private float h = 1.0f;
    private int bl = 0;
    private int n = 0;
    private final Handler ir = new Handler(Looper.getMainLooper());
    private final Runnable u = new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.4
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = dq.this.jy.iterator();
            while (it.hasNext()) {
                ((dq.InterfaceC0003dq) it.next()).dq(dq.this, r3.f3893e, dq.this.cd());
            }
            ig.dq("TTLottieFakeVideoPlayer", "--==--play curr: " + dq.this.f3893e);
            if (dq.this.f3893e < dq.this.cd()) {
                dq dqVar = dq.this;
                dqVar.f3893e = dq.this.wp + dqVar.f3893e;
                dq.this.ir.postDelayed(dq.this.u, dq.this.wp);
                return;
            }
            if (dq.this.kk != null) {
                dq.this.kk.iw();
            }
            if (dq.this.cd && !dq.this.r && dq.this.mp != null && dq.this.mp.mp()) {
                dq.this.mp.ox();
            }
            dq.this.fw = false;
            dq.this.gh = true;
            dq.this.e();
            Iterator it2 = dq.this.jy.iterator();
            while (it2.hasNext()) {
                ((dq.InterfaceC0003dq) it2.next()).dq(dq.this);
            }
        }
    };
    private long op = SystemClock.elapsedRealtime();

    public dq(com.bykv.vk.openvk.component.video.api.renderview.d dVar, com.bytedance.sdk.openadsdk.upie.dq dqVar, com.bykv.vk.openvk.component.video.api.dq dqVar2, p pVar) {
        this.mn = dVar.getView().getContext();
        this.iw = dVar;
        this.ox = dqVar.iw();
        this.p = dqVar.p();
        this.s = dqVar.s();
        String ox = dqVar.ox();
        String dq = dqVar.dq();
        this.f3892d = dq;
        String d2 = dqVar.d();
        dq(dq);
        d(ox);
        this.mp = dqVar2;
        dq(d2, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j) {
        gkb gkbVar = this.kk;
        if (gkbVar != null) {
            gkbVar.dq();
        }
        dq(j);
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.mp;
        if (dqVar != null) {
            dqVar.d();
        }
        this.fw = true;
        wp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final String str) {
        if (TextUtils.isEmpty(str)) {
            dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBLS, "广告主图url为空"));
        } else {
            com.bytedance.sdk.openadsdk.upie.d.dq().d(str, new d.dq<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.10
                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(int i, String str2) {
                    dq.i(dq.this);
                    if (dq.this.bl <= 3) {
                        dq.this.d(str);
                    } else {
                        dq.this.dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoRingBufferSizeKB, "广告主图url加载失败"));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(Bitmap bitmap) {
                    dq.this.o = bitmap;
                    dq.this.i();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bykv.vk.openvk.component.video.api.ox.d dVar) {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.12
            @Override // java.lang.Runnable
            public void run() {
                if (!dq.this.le) {
                    ig.dq("TTLottieFakeVideoPlayer", "--==--play err, code: " + dVar.dq() + ", extra: " + dVar.d() + ", msg: " + dVar.ox());
                    Iterator it = dq.this.jy.iterator();
                    while (it.hasNext()) {
                        ((dq.InterfaceC0003dq) it.next()).dq(dq.this, dVar);
                    }
                }
                dq.this.le = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final String str) {
        if (TextUtils.isEmpty(str)) {
            dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, 10000, "lottieJsonUrl为空"));
            return;
        }
        String dq = com.bytedance.sdk.openadsdk.upie.d.dq().dq(str);
        if (TextUtils.isEmpty(dq)) {
            com.bytedance.sdk.openadsdk.upie.d.dq().dq(str, new d.dq<String>() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.9
                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(int i, String str2) {
                    ig.dq("TTLottieFakeVideoPlayer", "--==-- lottie jsonStr load fail: " + i + ", " + str2);
                    if (i == 10006) {
                        dq.this.dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, i, str2));
                        return;
                    }
                    dq.gh(dq.this);
                    if (dq.this.n <= 3) {
                        dq.this.dq(str);
                    } else {
                        dq.this.dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, i, str2));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(String str2) {
                    ig.dq("TTLottieFakeVideoPlayer", "--==-- lottie jsonStr ok");
                    dq.this.ia = str2;
                    dq.this.i();
                }
            });
        } else {
            this.ia = dq;
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final String str, final int i, final int i2) {
        Integer num = this.ig.get(str);
        if (num == null || num.intValue() != 1) {
            this.ig.put(str, 1);
            com.bytedance.sdk.openadsdk.upie.d.dq().dq(this.mn, str, new d.dq<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.11
                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(int i3, String str2) {
                    dq.this.ig.put(str, 2);
                }

                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(Bitmap bitmap) {
                    if (bitmap != null) {
                        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
                            bitmap = Bitmap.createScaledBitmap(bitmap, i, i2, false);
                        }
                        dq.this.no.put(str, bitmap);
                    }
                }
            });
        }
    }

    private void dq(String str, p pVar) {
        if (TextUtils.isEmpty(str)) {
            dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, "lottie音频url为空"));
        } else {
            this.mp.dq(new dq.InterfaceC0003dq() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.3
                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void d(com.bykv.vk.openvk.component.video.api.dq dqVar) {
                    dq.this.q = true;
                    dq.this.i();
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void d(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
                    dq.this.ox(i);
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
                    dq.this.k();
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2, int i3) {
                    dq.this.le();
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, long j) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, long j, long j2) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, com.bykv.vk.openvk.component.video.api.ox.d dVar) {
                    int i;
                    String str2;
                    int i2;
                    if (dVar != null) {
                        i = dVar.dq();
                        i2 = dVar.d();
                        str2 = dVar.ox();
                    } else {
                        i = -1;
                        str2 = "";
                        i2 = -1;
                    }
                    dq.this.dq(new com.bykv.vk.openvk.component.video.api.ox.d(i, i2, "lottie音频播放失败:".concat(String.valueOf(str2))));
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, JSONObject jSONObject, String str2) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, boolean z) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
                public void ox(com.bykv.vk.openvk.component.video.api.dq dqVar) {
                }
            });
            this.mp.dq(pVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.ir.removeCallbacksAndMessages(null);
    }

    public static /* synthetic */ int gh(dq dqVar) {
        int i = dqVar.n;
        dqVar.n = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.bykv.vk.openvk.component.video.api.dq dqVar;
        ig.dq("TTLottieFakeVideoPlayer", "--==--pause");
        gkb gkbVar = this.kk;
        if (gkbVar != null && this.cd && gkbVar.s()) {
            ig.dq("TTLottieFakeVideoPlayer", "--==--pause --- enter");
            this.kk.mn();
        }
        if (this.cd && !this.r && (dqVar = this.mp) != null && dqVar.mp()) {
            ig.dq("TTLottieFakeVideoPlayer", "--==--audio pause --- enter");
            this.mp.ox();
        }
        this.fw = false;
        e();
    }

    public static /* synthetic */ int i(dq dqVar) {
        int i = dqVar.bl;
        dqVar.bl = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        com.bytedance.sdk.openadsdk.upie.dq.dq.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.8
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.o == null || dq.this.ia == null || !dq.this.q) {
                    return;
                }
                dq.this.kk = new gkb(dq.this.mn);
                dq.this.kk.dq(dq.this.ia, dq.this.f3892d);
                dq.this.kk.setRepeatCount(-1);
                dq.this.kk.setSpeed(dq.this.h);
                dq.this.kk.setImageAssetDelegate(new fsj() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.8.1
                    @Override // g.fsj
                    public Bitmap dq(hcl hclVar) {
                        if (hclVar == null) {
                            return null;
                        }
                        int i = hclVar.h;
                        int i2 = hclVar.f19224e;
                        String str = hclVar.f19222c;
                        if (TextUtils.isEmpty(str)) {
                            return null;
                        }
                        if (!str.startsWith("${") || !str.endsWith("}")) {
                            Bitmap bitmap = (Bitmap) dq.this.no.get(str);
                            if (bitmap != null) {
                                return bitmap;
                            }
                            dq.this.dq(str, i2, i);
                            return null;
                        }
                        Bitmap bitmap2 = dq.this.o;
                        if (bitmap2 != null && (bitmap2.getWidth() != i2 || bitmap2.getHeight() != i)) {
                            dq.this.o = Bitmap.createScaledBitmap(bitmap2, i2, i, false);
                        }
                        return dq.this.o;
                    }
                });
                dq.this.r();
                dq.this.cd = true;
                ig.dq("TTLottieFakeVideoPlayer", "--==--onPrepared");
                dq.this.op = SystemClock.elapsedRealtime() - dq.this.op;
                for (dq.InterfaceC0003dq interfaceC0003dq : dq.this.jy) {
                    interfaceC0003dq.d(dq.this);
                    dq dqVar = dq.this;
                    interfaceC0003dq.dq((com.bykv.vk.openvk.component.video.api.dq) dqVar, dqVar.p, dq.this.s);
                }
                if (dq.this.f3894f) {
                    dq.this.mp.dq(dq.this.ji);
                    dq.this.mp.ox(true);
                    if (dq.this.kx > 0) {
                        dq dqVar2 = dq.this;
                        dqVar2.d(dqVar2.kx);
                    } else {
                        dq.this.d();
                    }
                }
                for (dq.InterfaceC0003dq interfaceC0003dq2 : dq.this.jy) {
                    dq dqVar3 = dq.this;
                    interfaceC0003dq2.dq(dqVar3, dqVar3.op);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.15
            @Override // java.lang.Runnable
            public void run() {
                ig.dq("TTLottieFakeVideoPlayer", "--==--audio buffering end");
                dq.this.k = false;
                if (dq.this.q()) {
                    dq.this.kx();
                }
                Iterator it = dq.this.jy.iterator();
                while (it.hasNext()) {
                    ((dq.InterfaceC0003dq) it.next()).dq((com.bykv.vk.openvk.component.video.api.dq) dq.this, -1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kx() {
        com.bykv.vk.openvk.component.video.api.dq dqVar;
        ig.dq("TTLottieFakeVideoPlayer", "--==--play");
        gkb gkbVar = this.kk;
        if (gkbVar != null && this.cd && !gkbVar.s()) {
            ig.dq("TTLottieFakeVideoPlayer", "--==--play --- enter");
            if (this.f3893e > 0) {
                this.kk.d();
            } else {
                this.kk.dq();
            }
        }
        if (this.cd && !this.r && (dqVar = this.mp) != null && !dqVar.mp()) {
            ig.dq("TTLottieFakeVideoPlayer", "--==--audio play --- enter");
            if (this.f3893e > 0) {
                this.mp.d();
            } else {
                this.mp.dq(0L);
                this.mp.d();
            }
        }
        this.fw = true;
        wp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void le() {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.13
            @Override // java.lang.Runnable
            public void run() {
                if (!dq.this.k) {
                    ig.dq("TTLottieFakeVideoPlayer", "--==--audio buffering start");
                    if (dq.this.mp()) {
                        dq.this.h();
                    }
                    Iterator it = dq.this.jy.iterator();
                    while (it.hasNext()) {
                        ((dq.InterfaceC0003dq) it.next()).dq(dq.this, -1, -1, -1);
                    }
                }
                dq.this.k = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(final int i) {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.14
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = dq.this.jy.iterator();
                while (it.hasNext()) {
                    ((dq.InterfaceC0003dq) it.next()).d(dq.this, i);
                }
            }
        });
    }

    private void p(final boolean z) {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.2
            @Override // java.lang.Runnable
            public void run() {
                ig.dq("TTLottieFakeVideoPlayer", "--==--seek completed");
                Iterator it = dq.this.jy.iterator();
                while (it.hasNext()) {
                    ((dq.InterfaceC0003dq) it.next()).dq(dq.this, z);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        final ViewGroup viewGroup = (ViewGroup) this.iw.getView();
        viewGroup.removeAllViews();
        viewGroup.addView(this.kk);
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int width = viewGroup.getWidth();
                int height = viewGroup.getHeight();
                viewGroup.removeAllViews();
                if (width <= 0 || height <= 0) {
                    viewGroup.addView(dq.this.kk);
                    return;
                }
                viewGroup.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float f2 = dq.this.p / dq.this.s;
                float f3 = width;
                float f4 = height;
                float f5 = f3 / f4;
                if (dq.this.s <= 0 || f2 < f5) {
                    width = (int) (f4 * f2);
                } else {
                    height = (int) (f3 / f2);
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, height);
                layoutParams.gravity = 17;
                viewGroup.addView(dq.this.kk, layoutParams);
            }
        });
    }

    private void wp() {
        this.ir.removeCallbacksAndMessages(null);
        this.ir.post(this.u);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long cd() {
        return this.ox;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d() {
        kx();
        if (this.f3893e > 0) {
            com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.5
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = dq.this.jy.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(int i) {
        this.wp = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--reStart");
        e();
        this.f3893e = 0;
        this.cd = true;
        this.gh = false;
        this.r = false;
        gkb gkbVar = this.kk;
        if (gkbVar != null) {
            gkbVar.iw();
            this.kk.setProgress(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        d();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(float f2) {
        this.h = f2;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(int i) {
        ig.dq("TTLottieFakeVideoPlayer", "--==--setSeekMode: ".concat(String.valueOf(i)));
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(long j) {
        ig.dq("TTLottieFakeVideoPlayer", "--==--seekTo: ".concat(String.valueOf(j)));
        this.f3893e = (int) j;
        gkb gkbVar = this.kk;
        if (gkbVar != null) {
            long duration = gkbVar.getDuration();
            if (duration <= 0) {
                duration = cd();
            }
            if (duration > 0) {
                this.kk.setProgress((j % duration) / duration);
            }
        }
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.mp;
        if (dqVar != null && dqVar.cd() > 0) {
            this.mp.dq((int) (j % this.mp.cd()));
        }
        p(true);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(SurfaceTexture surfaceTexture) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(SurfaceHolder surfaceHolder) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(dq.InterfaceC0003dq interfaceC0003dq) {
        this.jy.add(interfaceC0003dq);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(p pVar) {
        ig.dq("TTLottieFakeVideoPlayer", "--==--setDataSource: ".concat(String.valueOf(pVar)));
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z) {
        ig.dq("TTLottieFakeVideoPlayer", "--==--setQuietPlay: ".concat(String.valueOf(z)));
        this.ji = z;
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.mp;
        if (dqVar != null) {
            dqVar.dq(z);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z, long j, boolean z2) {
        ig.dq("TTLottieFakeVideoPlayer", "--==--start: " + z + ", " + j + ", " + z2);
        this.ji = z2;
        this.f3894f = true;
        this.kx = j;
        this.mp.dq(z, j, z2);
        if (this.cd) {
            this.mp.dq(z2);
            this.mp.ox(true);
            if (j > 0) {
                d(j);
            } else {
                d();
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long f() {
        if (!this.cd) {
            ig.dq("TTLottieFakeVideoPlayer", "--==--is not prepared, getTotalBufferTime: 0");
            return 0L;
        }
        ig.dq("TTLottieFakeVideoPlayer", "--==--getTotalBufferTime: " + this.op);
        return this.op;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int fw() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--getBufferCount: 1");
        return 1;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long gh() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--getCurrentPosition: " + this.f3893e);
        return this.f3893e;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceTexture ia() {
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int ig() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--getVideoHeight: " + this.s);
        return this.s;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean iw() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--isFirstFrameSuccess: " + this.cd);
        return this.cd;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean jy() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--isReleased: " + this.r);
        return this.r;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean kk() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--isCompleted: " + this.gh);
        return this.gh;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceHolder mn() {
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean mp() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--isPlaying: " + this.fw);
        return this.fw;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int no() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--getVideoWidth: " + this.p);
        return this.p;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean o() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--isStarted: " + this.f3894f);
        return this.f3894f;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox() {
        h();
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.6
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = dq.this.jy.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox(boolean z) {
        ig.dq("TTLottieFakeVideoPlayer", "--==--setLoop:".concat(String.valueOf(z)));
        this.i = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void p() {
        com.bykv.vk.openvk.component.video.api.dq dqVar;
        ig.dq("TTLottieFakeVideoPlayer", "--==--stop");
        gkb gkbVar = this.kk;
        if (gkbVar != null) {
            gkbVar.iw();
            this.f3894f = false;
        }
        if (this.cd && !this.r && (dqVar = this.mp) != null && dqVar.mp()) {
            this.mp.ox();
        }
        e();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean q() {
        boolean z = (this.fw || this.gh || this.r || !this.cd) ? false : true;
        ig.dq("TTLottieFakeVideoPlayer", "--==--isPaused: ".concat(String.valueOf(z)));
        return z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void s() {
        ig.dq("TTLottieFakeVideoPlayer", "--==--release");
        this.r = true;
        e();
        this.no.clear();
        this.o = null;
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.mp;
        if (dqVar != null) {
            if (this.cd) {
                dqVar.p();
            }
            this.mp.s();
        }
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.dq.7
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = dq.this.jy.iterator();
                while (it.hasNext()) {
                    ((dq.InterfaceC0003dq) it.next()).ox(dq.this);
                }
            }
        });
    }
}
