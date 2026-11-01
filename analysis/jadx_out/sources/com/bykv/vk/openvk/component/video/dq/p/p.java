package com.bykv.vk.openvk.component.video.dq.p;

import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.dq.p.ox;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.he;
import g.tn;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class p implements com.bykv.vk.openvk.component.video.api.dq, ox.d, ox.dq, ox.iw, ox.mn, ox.InterfaceC0010ox, ox.p, ox.s, e.dq {
    private static final SparseIntArray wp = new SparseIntArray();
    private volatile boolean ce;

    /* renamed from: d, reason: collision with root package name */
    private SurfaceHolder f566d;
    private SurfaceTexture dq;

    /* renamed from: e, reason: collision with root package name */
    private boolean f567e;
    private ArrayList<Runnable> i;
    private boolean kk;
    private volatile e mp;
    private boolean o;
    private int p;
    private boolean r;
    private int ox = 0;
    private boolean s = false;
    private volatile ox iw = null;
    private final boolean mn = false;
    private boolean ia = false;
    private volatile int no = MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK;
    private long ig = -1;
    private boolean q = false;
    private long jy = 0;

    /* renamed from: f, reason: collision with root package name */
    private long f568f = Long.MIN_VALUE;
    private long fw = 0;
    private long cd = 0;
    private long gh = 0;
    private int le = 0;
    private String k = "0";
    private final List<WeakReference<dq.InterfaceC0003dq>> kx = new CopyOnWriteArrayList();
    private com.bykv.vk.openvk.component.video.api.ox.p h = null;
    private boolean ji = false;
    private CountDownLatch bl = new CountDownLatch(1);
    private volatile int n = 200;
    private AtomicBoolean op = new AtomicBoolean(false);
    private Surface ir = null;
    private final Runnable u = new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.1
        @Override // java.lang.Runnable
        public void run() {
            if (p.this.iw == null) {
                return;
            }
            long gh = p.this.gh();
            if (gh > 0 && Build.VERSION.SDK_INT >= 23 && p.this.mp() && p.this.f568f != Long.MIN_VALUE) {
                try {
                    if (p.this.f568f == gh) {
                        if (!p.this.q && p.this.fw >= 400) {
                            p.this.d(701, 800);
                            p.this.q = true;
                        }
                        p.this.fw += p.this.n;
                    } else {
                        if (p.this.q) {
                            p.this.jy += p.this.fw;
                            p.this.d(702, 800);
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "handleMsg:  bufferingDuration =", Long.valueOf(p.this.jy), "  bufferCount =", Integer.valueOf(p.this.ox));
                        }
                        p.this.fw = 0L;
                        p.this.q = false;
                    }
                } catch (Throwable th) {
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "error:" + th.getMessage());
                }
            }
            if (p.this.cd() > 0) {
                if (p.this.f568f != gh) {
                    if (com.bykv.vk.openvk.component.video.api.ox.p()) {
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "run: lastCur = ", Long.valueOf(p.this.f568f), "  curPosition = ", Long.valueOf(gh));
                    }
                    p pVar = p.this;
                    pVar.dq(gh, pVar.cd());
                }
                p.this.f568f = gh;
            }
            if (p.this.kk()) {
                p pVar2 = p.this;
                pVar2.dq(pVar2.cd(), p.this.cd());
            } else if (p.this.mp != null) {
                p.this.mp.postDelayed(this, p.this.n);
            }
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private final dq f565c = new dq();
    private long er = 0;
    private long wn = 0;
    private boolean j = false;

    public class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private long f575d;
        private boolean ox;

        public dq() {
        }

        public void dq(long j) {
            this.f575d = j;
        }

        public void dq(boolean z) {
            this.ox = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.iw != null) {
                try {
                    if (!this.ox) {
                        long kk = p.this.iw.kk();
                        p.this.ig = Math.max(this.f575d, kk);
                    }
                    long unused = p.this.ig;
                } catch (Throwable unused2) {
                }
            }
            if (p.this.mp != null) {
                p.this.mp.sendEmptyMessageDelayed(100, 0L);
            }
        }
    }

    public p() {
        dq("SSMediaPlayerWrapper");
    }

    public p(String str) {
        dq(tn.x("mda_", str));
    }

    private void bl() {
        if (this.mp != null) {
            this.mp.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        p.this.iw.mn();
                        p.this.no = MediaPlayer.MEDIA_PLAYER_OPTION_TOKEN_URL_TEMPLATE;
                        p.this.ce = false;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i, int i2) {
        if (i == 701) {
            this.er = SystemClock.elapsedRealtime();
            this.ox++;
            for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().dq(this, he.UNDEFINED_ITEM_ID, 0, 0);
                }
            }
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "bufferCount = ", Integer.valueOf(this.ox));
            return;
        }
        if (i == 702) {
            if (this.er > 0) {
                this.wn = (SystemClock.elapsedRealtime() - this.er) + this.wn;
                this.er = 0L;
            }
            for (WeakReference<dq.InterfaceC0003dq> weakReference2 : this.kx) {
                if (weakReference2 != null && weakReference2.get() != null) {
                    weakReference2.get().dq((com.bykv.vk.openvk.component.video.api.dq) this, he.UNDEFINED_ITEM_ID);
                }
            }
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "bufferCount = ", Integer.valueOf(this.ox), " mBufferTotalTime = ", Long.valueOf(this.wn));
            return;
        }
        if (this.j && i == 3) {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "hasPendingPauseCommand:" + this.ce);
            op();
            ji();
            dq(this.ji);
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "onRenderStart");
        }
    }

    private void d(long j) {
        this.f565c.dq(j);
        if (this.f567e) {
            d(this.f565c);
        } else if (d(this.h)) {
            d(this.f565c);
        } else {
            dq(this.f565c);
        }
    }

    private void d(Runnable runnable) {
        if (runnable == null || jy()) {
            return;
        }
        if (this.o) {
            dq(runnable);
        } else {
            runnable.run();
        }
    }

    private void d(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.iw.dq(fileInputStream.getFD());
        fileInputStream.close();
    }

    private boolean d(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        return pVar != null && pVar.mn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j, long j2) {
        long j3;
        long j4;
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference == null || weakReference.get() == null) {
                j3 = j;
                j4 = j2;
            } else {
                j3 = j;
                j4 = j2;
                weakReference.get().dq(this, j3, j4);
            }
            j = j3;
            j2 = j4;
        }
    }

    private void dq(Runnable runnable) {
        try {
            if (this.i == null) {
                this.i = new ArrayList<>();
            }
            this.i.add(runnable);
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_MEDIA", th.getMessage());
        }
    }

    private void dq(String str) {
        this.le = 0;
        this.mp = com.bytedance.sdk.component.o.d.dq.dq().dq(this, "csj_" + str);
        this.j = true;
        k();
    }

    private boolean dq(int i, int i2) {
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        if (i2 == 1 || i2 == 700 || i2 == 800) {
            return true;
        }
        return z;
    }

    private void e() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "releaseMediaPlayer: ");
        if (this.iw == null) {
            return;
        }
        try {
            this.iw.ig();
        } catch (Throwable unused) {
        }
        this.iw.dq((ox.d) null);
        this.iw.dq((ox.mn) null);
        this.iw.dq((ox.dq) null);
        this.iw.dq((ox.p) null);
        this.iw.dq((ox.InterfaceC0010ox) null);
        this.iw.dq((ox.s) null);
        this.iw.dq((ox.iw) null);
        try {
            this.iw.no();
        } catch (Throwable unused2) {
        }
    }

    private void h() {
        SparseIntArray sparseIntArray = wp;
        sparseIntArray.put(this.le, sparseIntArray.get(this.le) + 1);
    }

    private void ir() {
        ArrayList<Runnable> arrayList = this.i;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.i.clear();
    }

    private void ji() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.gh;
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().dq(this, elapsedRealtime);
            }
        }
        this.s = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.mp != null) {
            this.mp.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.10
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.iw == null) {
                        try {
                            p.this.iw = new d();
                        } catch (Throwable th) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_MEDIA", th.getMessage());
                        }
                        if (p.this.iw == null) {
                            return;
                        }
                        ox unused = p.this.iw;
                        p.this.k = "0";
                        p.this.iw.dq((ox.s) p.this);
                        p.this.iw.dq((ox.d) p.this);
                        p.this.iw.dq((ox.InterfaceC0010ox) p.this);
                        p.this.iw.dq((ox.dq) p.this);
                        p.this.iw.dq((ox.iw) p.this);
                        p.this.iw.dq((ox.p) p.this);
                        p.this.iw.dq((ox.mn) p.this);
                        try {
                            p.this.iw.ox(false);
                        } catch (Throwable unused2) {
                        }
                        p.this.ia = false;
                    }
                }
            });
        }
    }

    private void kx() {
        e eVar = this.mp;
        if (eVar == null || eVar.getLooper() == null) {
            return;
        }
        eVar.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.6
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.mp == null || p.this.mp.getLooper() == null) {
                    return;
                }
                try {
                    com.bytedance.sdk.component.o.d.dq.dq().dq(p.this.mp);
                    p.this.mp = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void le() {
        this.jy = 0L;
        this.ox = 0;
        this.fw = 0L;
        this.q = false;
        this.f568f = Long.MIN_VALUE;
    }

    private void n() {
        if (this.kk) {
            return;
        }
        this.kk = true;
        Iterator it = new ArrayList(this.i).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.i.clear();
        this.kk = false;
    }

    private void op() {
        ArrayList<Runnable> arrayList = this.i;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        n();
    }

    private void wp() {
        d(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.14
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.mp != null) {
                    p.this.mp.sendEmptyMessage(104);
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long cd() {
        long j = this.cd;
        if (j != 0) {
            return j;
        }
        if (this.no == 206 || this.no == 207) {
            try {
                this.cd = this.iw.o();
            } catch (Throwable unused) {
            }
        }
        return this.cd;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d() {
        if (jy() || this.mp == null) {
            return;
        }
        this.op.set(true);
        this.mp.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.11
            @Override // java.lang.Runnable
            public void run() {
                if (!p.this.q() || p.this.iw == null) {
                    return;
                }
                try {
                    p.this.iw.s();
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "resume play exec start ");
                    for (WeakReference weakReference : p.this.kx) {
                        if (weakReference != null && weakReference.get() != null) {
                            weakReference.get();
                        }
                    }
                    p.this.no = MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE;
                } catch (Throwable th) {
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "play: catch exception ", th.getMessage());
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(int i) {
        if (jy()) {
            return;
        }
        this.n = i;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.s
    public void d(ox oxVar) {
        if (jy()) {
            return;
        }
        this.no = MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_ID;
        try {
            com.bykv.vk.openvk.component.video.api.ox.p pVar = this.h;
            if (pVar != null) {
                float jy = pVar.jy();
                if (jy > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    com.bykv.vk.openvk.component.video.api.d dVar = new com.bykv.vk.openvk.component.video.api.d();
                    dVar.dq(jy);
                    this.iw.dq(dVar);
                }
            }
        } catch (Throwable unused) {
        }
        if (this.mp != null) {
            if (this.ce) {
                bl();
            } else {
                com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_MEDIA", "onPrepared op_Start");
                this.mp.sendMessage(this.mp.obtainMessage(100, -1, -1));
            }
        }
        wp.delete(this.le);
        com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_MEDIA", "onPrepared:" + this.j + " " + this.r);
        if (!this.j && !this.r) {
            ji();
            this.r = true;
        }
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().d(this);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(final boolean z) {
        if (jy()) {
            return;
        }
        this.f567e = z;
        if (this.iw != null) {
            this.iw.dq(z);
        } else if (this.mp != null) {
            this.mp.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.9
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.iw != null) {
                        p.this.iw.dq(z);
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.p
    public boolean d(ox oxVar, int i, int i2) {
        com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_MEDIA", "what,extra:" + i + "," + i2);
        if (this.iw != oxVar) {
            return false;
        }
        if (i2 == -1004) {
            com.bykv.vk.openvk.component.video.api.ox.d dVar = new com.bykv.vk.openvk.component.video.api.ox.d(i, i2);
            for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().dq(this, dVar);
                }
            }
        }
        d(i, i2);
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq() {
        if (jy() || this.iw == null) {
            return;
        }
        this.op.set(true);
        if (this.no != 206) {
            le();
            this.ce = false;
            this.f565c.dq(true);
            d(0L);
            if (this.mp != null) {
                this.mp.removeCallbacks(this.u);
                this.mp.postDelayed(this.u, this.n);
            }
        }
        this.bl.countDown();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(float f2) {
        try {
            com.bykv.vk.openvk.component.video.api.d dVar = new com.bykv.vk.openvk.component.video.api.d();
            dVar.dq(f2);
            this.iw.dq(dVar);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(int i) {
        this.p = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final long j) {
        if (jy()) {
            return;
        }
        if (this.no == 207 || this.no == 206 || this.no == 209) {
            d(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.2
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.mp != null) {
                        p.this.mp.obtainMessage(106, Long.valueOf(j)).sendToTarget();
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final SurfaceTexture surfaceTexture) {
        if (jy()) {
            return;
        }
        this.dq = surfaceTexture;
        d(true);
        d(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.3
            @Override // java.lang.Runnable
            public void run() {
                p.this.k();
                if (p.this.mp != null) {
                    p.this.mp.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = this.no;
        int i2 = message.what;
        if (this.iw != null) {
            try {
                switch (message.what) {
                    case 100:
                        if (this.no == 205 || this.no == 207 || this.no == 209) {
                            this.iw.s();
                            this.gh = SystemClock.elapsedRealtime();
                            this.no = MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE;
                            if (this.ig > 0) {
                                this.iw.dq(this.ig, this.p);
                                this.ig = -1L;
                            }
                            if (this.h != null) {
                                dq(this.ji);
                                return;
                            }
                            return;
                        }
                        break;
                    case 101:
                        if (this.q) {
                            this.jy += this.fw;
                        }
                        this.q = false;
                        this.fw = 0L;
                        this.f568f = Long.MIN_VALUE;
                        if (this.no == 206 || this.no == 207 || this.no == 209) {
                            this.iw.mn();
                            this.no = MediaPlayer.MEDIA_PLAYER_OPTION_TOKEN_URL_TEMPLATE;
                            this.ce = false;
                            for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get();
                                }
                            }
                            return;
                        }
                        break;
                    case 102:
                        this.iw.ig();
                        this.no = MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK;
                        return;
                    case 103:
                        try {
                            e();
                        } catch (Throwable th) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO_MEDIA", "OP_RELEASE error: ", th);
                        }
                        for (WeakReference<dq.InterfaceC0003dq> weakReference2 : this.kx) {
                            if (weakReference2 != null && weakReference2.get() != null) {
                                weakReference2.get().ox(this);
                            }
                        }
                        this.no = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO;
                        return;
                    case 104:
                        if (this.no == 202 || this.no == 208) {
                            try {
                                this.iw.ia();
                                return;
                            } catch (Throwable th2) {
                                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO_MEDIA", "OP_PREPARE_ASYNC error: ", th2);
                                return;
                            }
                        }
                        break;
                    case 105:
                        if (this.no == 205 || this.no == 206 || this.no == 208 || this.no == 207 || this.no == 209) {
                            this.iw.iw();
                            this.no = MediaPlayer.MEDIA_PLAYER_OPTION_DRM_DOWNGRADE;
                            return;
                        }
                        break;
                    case 106:
                        if (this.no == 206 || this.no == 207 || this.no == 209) {
                            this.iw.dq(((Long) message.obj).longValue(), this.p);
                            return;
                        }
                        break;
                    case 107:
                        le();
                        if (this.no == 201 || this.no == 203) {
                            com.bykv.vk.openvk.component.video.api.ox.p pVar = (com.bykv.vk.openvk.component.video.api.ox.p) message.obj;
                            if (TextUtils.isEmpty(pVar.s())) {
                                pVar.dq(com.bykv.vk.openvk.component.video.api.ox.dq());
                            }
                            File file = new File(pVar.s(), pVar.fw());
                            if (file.exists()) {
                                file.getAbsolutePath();
                                if (com.bykv.vk.openvk.component.video.api.ox.d()) {
                                    d(file.getAbsolutePath());
                                } else {
                                    this.iw.dq(file.getAbsolutePath());
                                }
                            } else {
                                pVar.f();
                                if (pVar.f515d == 1 && Build.VERSION.SDK_INT < 23) {
                                    this.iw.dq(pVar.f());
                                    pVar.f();
                                } else if (Build.VERSION.SDK_INT >= 23) {
                                    this.iw.dq(pVar);
                                    pVar.f();
                                } else {
                                    String d2 = com.bykv.vk.openvk.component.video.dq.d.iw.dq.dq().d(pVar);
                                    if (d2 != null && com.bykv.vk.openvk.component.video.api.ox.d() && d2.startsWith("file")) {
                                        d(Uri.parse(d2).getPath());
                                    } else {
                                        this.iw.dq(d2);
                                    }
                                }
                            }
                            this.no = 202;
                            return;
                        }
                        break;
                    case 108:
                    case 109:
                    default:
                        return;
                    case 110:
                        this.iw.dq((SurfaceHolder) message.obj);
                        this.iw.d(true);
                        this.bl.await(1L, TimeUnit.SECONDS);
                        op();
                        return;
                    case 111:
                        this.ir = new Surface((SurfaceTexture) message.obj);
                        this.iw.dq(this.ir);
                        this.iw.d(true);
                        this.bl.await(1L, TimeUnit.SECONDS);
                        op();
                        return;
                }
                this.no = 200;
                if (this.ia) {
                    return;
                }
                com.bykv.vk.openvk.component.video.api.ox.d dVar = new com.bykv.vk.openvk.component.video.api.ox.d(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_STARTED_TIME, i2);
                dVar.dq(i + "," + i2);
                for (WeakReference<dq.InterfaceC0003dq> weakReference3 : this.kx) {
                    if (weakReference3 != null && weakReference3.get() != null) {
                        weakReference3.get().dq(this, dVar);
                    }
                }
                this.ia = true;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final SurfaceHolder surfaceHolder) {
        if (jy()) {
            return;
        }
        this.f566d = surfaceHolder;
        d(true);
        d(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.4
            @Override // java.lang.Runnable
            public void run() {
                p.this.k();
                if (p.this.mp != null) {
                    p.this.mp.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(dq.InterfaceC0003dq interfaceC0003dq) {
        if (interfaceC0003dq == null) {
            return;
        }
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() == interfaceC0003dq) {
                return;
            }
        }
        this.kx.add(new WeakReference<>(interfaceC0003dq));
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        if (jy()) {
            return;
        }
        this.h = pVar;
        if (pVar != null) {
            this.j = this.j && !pVar.mn();
        }
        d(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.5
            @Override // java.lang.Runnable
            public void run() {
                p.this.k();
                if (p.this.mp != null) {
                    p.this.mp.obtainMessage(107, pVar).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.d
    public void dq(ox oxVar) {
        this.no = MediaPlayer.MEDIA_PLAYER_OPTION_DRM_CLOSE_ROOT_CHECK;
        wp.delete(this.le);
        if (this.mp != null) {
            this.mp.removeCallbacks(this.u);
        }
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().dq(this);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.dq
    public void dq(ox oxVar, int i) {
        if (this.iw != oxVar) {
            return;
        }
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().d(this, i);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.mn
    public void dq(ox oxVar, int i, int i2, int i3, int i4) {
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().dq((com.bykv.vk.openvk.component.video.api.dq) this, i, i2);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final boolean z) {
        if (jy()) {
            return;
        }
        if (this.mp == null) {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "quietPlay set opHandler is null");
        } else {
            this.mp.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.8
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.jy() || p.this.iw == null) {
                        return;
                    }
                    try {
                        p.this.ji = z;
                        p.this.iw.p(z);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z, long j, boolean z2) {
        if (jy()) {
            return;
        }
        k();
        this.ji = z2;
        this.op.set(true);
        this.ce = false;
        dq(z2);
        if (z) {
            this.ig = j;
            wp();
        } else {
            d(j);
        }
        if (this.mp != null) {
            this.mp.removeCallbacks(this.u);
            this.mp.postDelayed(this.u, this.n);
        }
        this.bl.countDown();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.InterfaceC0010ox
    public boolean dq(ox oxVar, int i, int i2) {
        com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_MEDIA", "what=" + i + "extra=" + i2);
        h();
        this.no = 200;
        if (this.mp != null) {
            this.mp.removeCallbacks(this.u);
        }
        if (dq(i, i2)) {
            kx();
        }
        if (!this.op.get()) {
            return true;
        }
        this.op.set(false);
        com.bykv.vk.openvk.component.video.api.ox.d dVar = new com.bykv.vk.openvk.component.video.api.ox.d(i, i2);
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().dq(this, dVar);
            }
        }
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long f() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.wn;
        }
        if (this.q) {
            long j = this.fw;
            if (j > 0) {
                return this.jy + j;
            }
        }
        return this.jy;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int fw() {
        return this.ox;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long gh() {
        if (jy()) {
            return 0L;
        }
        if (this.no == 206 || this.no == 207) {
            try {
                return this.iw.kk();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public boolean i() {
        return this.no == 205;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceTexture ia() {
        return this.dq;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int ig() {
        if (this.iw == null || jy()) {
            return 0;
        }
        return this.iw.q();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean iw() {
        return this.s;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean jy() {
        return this.o;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean kk() {
        return this.no == 209;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceHolder mn() {
        return this.f566d;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean mp() {
        return (this.no == 206 || (this.mp != null && this.mp.hasMessages(100))) && !this.ce;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int no() {
        if (this.iw == null || jy()) {
            return 0;
        }
        return this.iw.mp();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean o() {
        return i() || mp() || q();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_MEDIA", "pause: from outer");
        if (jy() || this.mp == null) {
            return;
        }
        this.mp.removeMessages(100);
        this.ce = true;
        if (this.j) {
            if (!this.s && !d(this.h)) {
                dq(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (p.this.mp != null) {
                            p.this.mp.sendEmptyMessage(101);
                        }
                    }
                });
                return;
            } else {
                if (this.mp != null) {
                    this.mp.sendEmptyMessage(101);
                    return;
                }
                return;
            }
        }
        if (!this.r && !d(this.h)) {
            dq(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.12
                @Override // java.lang.Runnable
                public void run() {
                    if (p.this.mp != null) {
                        p.this.mp.sendEmptyMessage(101);
                    }
                }
            });
        } else if (this.mp != null) {
            this.mp.sendEmptyMessage(101);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox.iw
    public void ox(ox oxVar) {
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.kx) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().dq((com.bykv.vk.openvk.component.video.api.dq) this, true);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox(boolean z) {
        if (jy()) {
            return;
        }
        this.iw.s(z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void p() {
        if (jy()) {
            return;
        }
        d(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.p.p.15
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.mp != null) {
                    p.this.mp.sendEmptyMessage(105);
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean q() {
        return ((this.no != 207 && !this.ce) || this.mp == null || this.mp.hasMessages(100)) ? false : true;
    }

    public int r() {
        return jy() ? MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO : this.no;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void s() {
        if (jy()) {
            return;
        }
        this.o = true;
        ir();
        if (this.mp != null) {
            try {
                this.mp.removeCallbacksAndMessages(null);
                if (this.iw != null) {
                    this.mp.sendEmptyMessage(103);
                }
                kx();
            } catch (Throwable unused) {
                kx();
            }
        }
    }
}
