package com.bytedance.sdk.openadsdk.upie.video.lottie;

import android.graphics.SurfaceTexture;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.upie.d;
import g.gkb;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d implements com.bykv.vk.openvk.component.video.api.dq {

    /* renamed from: d, reason: collision with root package name */
    private final int f3886d;
    private gkb ig;
    private long iw;
    private final com.bykv.vk.openvk.component.video.api.dq kk;
    private final com.bykv.vk.openvk.component.video.api.renderview.d no;
    private final int ox;
    private boolean p;
    private final String dq = "UpieVideoPlayer";
    private int s = 0;
    private volatile boolean mn = false;
    private volatile boolean ia = false;
    private final Map<dq.InterfaceC0003dq, dq.InterfaceC0003dq> o = new ConcurrentHashMap();

    public d(com.bykv.vk.openvk.component.video.api.dq dqVar, com.bytedance.sdk.openadsdk.upie.dq dqVar2, com.bykv.vk.openvk.component.video.api.renderview.d dVar) {
        this.kk = dqVar;
        this.f3886d = dqVar2.p();
        this.ox = dqVar2.s();
        this.no = dVar;
        if (dVar instanceof UpieVideoView) {
            this.ig = ((UpieVideoView) dVar).getLottieAnimationView();
        }
        dq(dqVar2.dq());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j) {
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            long duration = gkbVar.getDuration();
            if (duration <= 0) {
                duration = cd();
            }
            if (duration > 0) {
                this.ig.setProgress((j % duration) / duration);
            }
        }
    }

    public static /* synthetic */ int dq(d dVar) {
        int i = dVar.s;
        dVar.s = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bykv.vk.openvk.component.video.api.ox.d dVar) {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.p) {
                    return;
                }
                d.this.p = true;
                ig.dq("UpieVideoPlayer", "--==--play err, code: " + dVar.dq() + ", extra: " + dVar.d() + ", msg: " + dVar.ox());
                Iterator it = d.this.o.entrySet().iterator();
                while (it.hasNext()) {
                    ((dq.InterfaceC0003dq) ((Map.Entry) it.next()).getKey()).dq(d.this, dVar);
                }
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
            com.bytedance.sdk.openadsdk.upie.d.dq().dq(str, new d.dq<String>() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.1
                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(int i, String str2) {
                    ig.dq("UpieVideoPlayer", "--==-- lottie jsonStr load fail: " + i + ", " + str2);
                    if (i == 10006) {
                        d.this.dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, i, str2));
                        return;
                    }
                    d.dq(d.this);
                    if (d.this.s <= 3) {
                        d.this.dq(str);
                    } else {
                        d.this.dq(new com.bykv.vk.openvk.component.video.api.ox.d(60008, i, str2));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(String str2) {
                    ig.dq("UpieVideoPlayer", "--==-- lottie load jsonStr ok");
                    d.this.dq(str2, str);
                }
            });
        } else {
            ig.dq("UpieVideoPlayer", "--==-- lottie use cache ok");
            dq(dq, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final String str, final String str2) {
        com.bytedance.sdk.openadsdk.upie.dq.dq.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.3
            @Override // java.lang.Runnable
            public void run() {
                d.this.mn = true;
                if (d.this.ig != null) {
                    d.this.ig.dq(str, str2);
                }
                d.this.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        com.bytedance.sdk.openadsdk.upie.dq.dq.d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.4
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.ia && d.this.mn) {
                    d.this.kk.d();
                    if (d.this.ig != null) {
                        d.this.ig.dq();
                        if (d.this.iw > 0) {
                            d dVar = d.this;
                            dVar.d(dVar.iw);
                        }
                    }
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long cd() {
        return this.kk.cd();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d() {
        ig.dq("UpieVideoPlayer", "--==--play");
        this.kk.d();
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            gkbVar.d();
        }
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.no;
        if (dVar instanceof UpieVideoView) {
            ((UpieVideoView) dVar).dq();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(int i) {
        this.kk.d(i);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(boolean z) {
        this.kk.d(z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq() {
        ig.dq("UpieVideoPlayer", "--==--restart");
        this.kk.dq();
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            gkbVar.iw();
            this.ig.setProgress(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            this.ig.dq();
        }
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.no;
        if (dVar instanceof UpieVideoView) {
            ((UpieVideoView) dVar).dq();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(float f2) {
        this.kk.dq(f2);
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            gkbVar.setSpeed(f2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(int i) {
        ig.dq("UpieVideoPlayer", "--==--setSeekMode: ".concat(String.valueOf(i)));
        this.kk.dq(i);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(long j) {
        ig.dq("UpieVideoPlayer", "--==--seekTo: ".concat(String.valueOf(j)));
        this.kk.dq(j);
        d(j);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(SurfaceTexture surfaceTexture) {
        this.kk.dq(surfaceTexture);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(SurfaceHolder surfaceHolder) {
        this.kk.dq(surfaceHolder);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final dq.InterfaceC0003dq interfaceC0003dq) {
        if (interfaceC0003dq == null) {
            return;
        }
        dq.InterfaceC0003dq interfaceC0003dq2 = new dq.InterfaceC0003dq() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.5
            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void d(com.bykv.vk.openvk.component.video.api.dq dqVar) {
                com.bytedance.sdk.openadsdk.upie.dq.dq.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.ia = true;
                        if (!d.this.mn) {
                            d.this.kk.ox();
                        }
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        interfaceC0003dq.d(d.this);
                        d.this.r();
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void d(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
                interfaceC0003dq.d(d.this, i);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar) {
                interfaceC0003dq.dq(d.this);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i) {
                interfaceC0003dq.dq((com.bykv.vk.openvk.component.video.api.dq) d.this, i);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2) {
                dq.InterfaceC0003dq interfaceC0003dq3 = interfaceC0003dq;
                d dVar = d.this;
                interfaceC0003dq3.dq((com.bykv.vk.openvk.component.video.api.dq) dVar, dVar.f3886d, d.this.ox);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, int i, int i2, int i3) {
                interfaceC0003dq.dq(d.this, i, i2, i3);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, final long j) {
                com.bytedance.sdk.openadsdk.upie.dq.dq.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.d.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        interfaceC0003dq.dq(d.this, j);
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, long j, long j2) {
                interfaceC0003dq.dq(d.this, j, j2);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, com.bykv.vk.openvk.component.video.api.ox.d dVar) {
                d.this.dq(dVar);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, JSONObject jSONObject, String str) {
                interfaceC0003dq.dq(d.this, jSONObject, str);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void dq(com.bykv.vk.openvk.component.video.api.dq dqVar, boolean z) {
                interfaceC0003dq.dq(d.this, z);
            }

            @Override // com.bykv.vk.openvk.component.video.api.dq.InterfaceC0003dq
            public void ox(com.bykv.vk.openvk.component.video.api.dq dqVar) {
                interfaceC0003dq.ox(d.this);
            }
        };
        this.o.put(interfaceC0003dq, interfaceC0003dq2);
        this.kk.dq(interfaceC0003dq2);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(p pVar) {
        ig.dq("UpieVideoPlayer", "--==--setDataSource: ".concat(String.valueOf(pVar)));
        this.kk.dq(pVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z) {
        ig.dq("UpieVideoPlayer", "--==--isMute: ".concat(String.valueOf(z)));
        this.kk.dq(z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z, long j, boolean z2) {
        ig.dq("UpieVideoPlayer", "--==--start: " + z + ", " + j + ", " + z2);
        this.kk.dq(z, j, z2);
        this.iw = j;
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.no;
        if (dVar instanceof UpieVideoView) {
            ((UpieVideoView) dVar).dq();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long f() {
        return this.kk.f();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int fw() {
        return this.kk.fw();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long gh() {
        return this.kk.gh();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceTexture ia() {
        return this.kk.ia();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int ig() {
        return this.ox;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean iw() {
        return this.kk.iw();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean jy() {
        boolean z = !this.p && this.kk.jy();
        ig.dq("UpieVideoPlayer", "--==--isReleased: " + z + ",      errorInvoked: " + this.p);
        return z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean kk() {
        boolean z = !this.p && this.kk.kk();
        ig.dq("UpieVideoPlayer", "--==--isCompleted: " + z + ",      errorInvoked: " + this.p);
        return z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceHolder mn() {
        return this.kk.mn();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean mp() {
        boolean z = !this.p && this.kk.mp();
        ig.dq("UpieVideoPlayer", "--==--isPlaying: " + z + ",      errorInvoked: " + this.p);
        return z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int no() {
        return this.f3886d;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean o() {
        boolean z = !this.p && this.kk.o();
        ig.dq("UpieVideoPlayer", "--==--isStarted: " + z + ",      errorInvoked: " + this.p);
        return z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox() {
        ig.dq("UpieVideoPlayer", "--==--pause");
        this.kk.ox();
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            gkbVar.mn();
        }
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.no;
        if (dVar instanceof UpieVideoView) {
            ((UpieVideoView) dVar).d();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox(boolean z) {
        this.kk.ox(z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void p() {
        ig.dq("UpieVideoPlayer", "--==--stop");
        this.kk.p();
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            gkbVar.mn();
        }
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.no;
        if (dVar instanceof UpieVideoView) {
            ((UpieVideoView) dVar).d();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean q() {
        boolean z = !this.p && this.kk.q();
        ig.dq("UpieVideoPlayer", "--==--isPaused: " + z + ",      errorInvoked: " + this.p);
        return z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void s() {
        ig.dq("UpieVideoPlayer", "--==--release");
        this.kk.s();
        gkb gkbVar = this.ig;
        if (gkbVar != null) {
            gkbVar.iw();
        }
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.no;
        if (dVar instanceof UpieVideoView) {
            ((UpieVideoView) dVar).d();
        }
    }
}
