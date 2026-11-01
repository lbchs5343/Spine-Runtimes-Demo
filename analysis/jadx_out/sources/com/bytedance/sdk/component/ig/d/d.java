package com.bytedance.sdk.component.ig.d;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.SeekCompletionListener;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.player.TTPlayerClient;
import com.bykv.vk.component.ttvideo.playerwrapper.MediaPlayerWrapper;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.api.ox;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.utils.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d implements com.bykv.vk.openvk.component.video.api.dq, e.dq {

    /* renamed from: d, reason: collision with root package name */
    public static volatile boolean f1929d;
    private boolean bl;
    private int gh;
    private SurfaceTexture i;
    private long ig;
    private SurfaceHolder le;
    private TTVideoEngine ox;
    private int r;
    private e wp;
    private volatile boolean p = false;
    private boolean s = false;
    private boolean iw = false;
    private boolean mn = false;
    private boolean ia = false;
    private boolean kk = false;
    private boolean o = false;
    private boolean no = false;
    private long mp = 0;
    private long q = 0;
    private long jy = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f1931f = 0;
    private int fw = 0;
    private boolean cd = false;
    private final List<WeakReference<dq.InterfaceC0003dq>> k = Collections.synchronizedList(new ArrayList());

    /* renamed from: e, reason: collision with root package name */
    private volatile int f1930e = 200;
    private long kx = 0;
    private Runnable h = new Runnable() { // from class: com.bytedance.sdk.component.ig.d.d.1
        @Override // java.lang.Runnable
        public void run() {
            long gh = d.this.gh();
            if (d.this.cd() > 0) {
                if (d.this.kx != gh) {
                    if (ox.p()) {
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "run: lastCur = ", Long.valueOf(d.this.kx), "  curPosition=", Long.valueOf(gh));
                    }
                    d dVar = d.this;
                    dVar.dq(gh, dVar.cd());
                }
                d.this.kx = gh;
            }
            if (d.this.ia) {
                d dVar2 = d.this;
                dVar2.dq(dVar2.cd(), d.this.cd());
            } else if (d.this.wp != null) {
                d.this.wp.postDelayed(this, d.this.f1930e);
            }
        }
    };
    CountDownLatch dq = new CountDownLatch(1);
    private final ArrayList<Runnable> ji = new ArrayList<>();

    public d(Context context, String str) {
        dq(context, "vd_".concat(String.valueOf(str)));
    }

    private void d(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (this.mn) {
            dq(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j, long j2) {
        long j3;
        long j4;
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.k) {
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

    private void dq(Context context, String str) {
        this.ox = dq.dq(context);
        if (this.wp == null) {
            this.wp = com.bytedance.sdk.component.o.d.dq.dq().dq(this, "csj_".concat(String.valueOf(str)));
        }
        e();
    }

    public static void dq(Context context, String str, int i, String[] strArr, long[] jArr, boolean z, VideoEventEngineUploader videoEventEngineUploader) {
        boolean z2;
        try {
            TTPlayerClient.create(new MediaPlayerWrapper(), ox.getContext()).release();
            dq.dq(context, str, i, strArr, jArr, videoEventEngineUploader);
            dq.dq(z);
            z2 = true;
        } catch (Throwable unused) {
            z2 = false;
        }
        f1929d = z2;
    }

    private synchronized void dq(Runnable runnable) {
        this.ji.add(runnable);
    }

    private void e() {
        this.ox.setVideoEngineSimpleCallback(new VideoEngineSimpleCallback() { // from class: com.bytedance.sdk.component.ig.d.d.8
            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferEnd(int i) {
                if (d.this.f1931f == i) {
                    d dVar = d.this;
                    dVar.q = (System.currentTimeMillis() - d.this.jy) + dVar.q;
                }
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onBufferEnd: code =", Integer.valueOf(i));
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq((com.bykv.vk.openvk.component.video.api.dq) d.this, i);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferStart(int i, int i2, int i3) {
                d.this.f1931f = i;
                d.this.fw++;
                d.this.jy = System.currentTimeMillis();
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onBufferStart: reason =", Integer.valueOf(i), "  afterFirstFrame =", Integer.valueOf(i2), "  action=", Integer.valueOf(i3));
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq(d.this, i, i2, i3);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onBufferingUpdate: percent =", Integer.valueOf(i));
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).d(d.this, i);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onCompletion(TTVideoEngine tTVideoEngine) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onCompletion: ");
                d.this.ia = true;
                if (d.this.wp != null) {
                    d.this.wp.removeCallbacks(d.this.h);
                }
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq(d.this);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onError(Error error) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onError: ");
                com.bykv.vk.openvk.component.video.api.ox.d dVar = new com.bykv.vk.openvk.component.video.api.ox.d(error.getCode(), error.getInternalCode());
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq(d.this, dVar);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onLoadStateChanged: loadState =", Integer.valueOf(i));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onMDLHitCache(String str, long j) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onMDLHitCache: MDLPlayTaskKey =", str, " hitCacheSize = ", Long.valueOf(j));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onPlaybackStateChanged: playbackState =", Integer.valueOf(i));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPrepare(TTVideoEngine tTVideoEngine) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onPrepare: ");
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPrepared(TTVideoEngine tTVideoEngine) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onPrepared: ");
                d.this.kk = true;
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).d(d.this);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRenderSeekComplete(int i) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onRenderSeekComplete: isSeekInCached = ", Integer.valueOf(i));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRenderStart(TTVideoEngine tTVideoEngine) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onRenderStart: ");
                d.this.mp = System.currentTimeMillis() - d.this.ig;
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        dq.InterfaceC0003dq interfaceC0003dq = (dq.InterfaceC0003dq) weakReference.get();
                        d dVar = d.this;
                        interfaceC0003dq.dq(dVar, dVar.mp);
                    }
                }
                d.this.cd = true;
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRetry(int i) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onRetry: playType = ", Integer.valueOf(i));
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onUseMDLCacheEnd() {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onUseMDLCacheEnd: ");
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i, int i2) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "onVideoSizeChanged: width = ", Integer.valueOf(i), " height = ", Integer.valueOf(i2));
                d.this.gh = i;
                d.this.r = i2;
                for (WeakReference weakReference : d.this.k) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq((com.bykv.vk.openvk.component.video.api.dq) d.this, i, i2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.o = true;
        this.iw = true;
        e eVar = this.wp;
        if (eVar != null) {
            eVar.sendEmptyMessage(100);
        }
    }

    private void k() {
        ArrayList<Runnable> arrayList = this.ji;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        le();
    }

    private void kx() {
        this.s = false;
        this.iw = false;
        this.ia = false;
        this.kk = false;
        this.o = false;
    }

    private void le() {
        if (this.bl) {
            return;
        }
        this.bl = true;
        Iterator it = new ArrayList(this.ji).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.ji.clear();
        this.bl = false;
    }

    public static boolean r() {
        return f1929d;
    }

    private void wp() {
        ArrayList<Runnable> arrayList = this.ji;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.ji.clear();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long cd() {
        return this.ox.getDuration();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "play: ");
        e eVar = this.wp;
        if (eVar != null) {
            eVar.postDelayed(this.h, this.f1930e);
            eVar.post(new Runnable() { // from class: com.bytedance.sdk.component.ig.d.d.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (d.this.ox != null) {
                            d.this.ox.play();
                            for (WeakReference weakReference : d.this.k) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get();
                                }
                            }
                        }
                    } catch (Throwable th) {
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "play: catch exception:" + th.getMessage());
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(int i) {
        this.f1930e = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(boolean z) {
        this.no = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq() {
        TTVideoEngine tTVideoEngine = this.ox;
        boolean isMute = tTVideoEngine != null ? tTVideoEngine.isMute() : false;
        this.fw = 0;
        this.q = 0L;
        this.jy = 0L;
        this.ia = false;
        dq(true, 0L, isMute);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(float f2) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(int i) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(long j) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "seekTo: ");
        if (this.iw) {
            this.ox.seekTo((int) j, new SeekCompletionListener() { // from class: com.bytedance.sdk.component.ig.d.d.6
                @Override // com.bykv.vk.component.ttvideo.SeekCompletionListener
                public void onCompletion(boolean z) {
                    for (WeakReference weakReference : d.this.k) {
                        if (weakReference != null && weakReference.get() != null) {
                            ((dq.InterfaceC0003dq) weakReference.get()).dq(d.this, z);
                        }
                    }
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "seekTo: ", " isSuccess =", Boolean.valueOf(z));
                }
            });
        } else {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "seekTo: ", "Can not exec seek, please exec setDataSource before seek");
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final SurfaceTexture surfaceTexture) {
        d(true);
        this.i = surfaceTexture;
        d(new Runnable() { // from class: com.bytedance.sdk.component.ig.d.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.wp != null) {
                    d.this.wp.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        try {
            if (i == 105) {
                TTVideoEngine tTVideoEngine = this.ox;
                if (tTVideoEngine != null) {
                    tTVideoEngine.stop();
                    return;
                }
                return;
            }
            if (i == 110) {
                TTVideoEngine tTVideoEngine2 = this.ox;
                if (tTVideoEngine2 != null) {
                    tTVideoEngine2.setSurfaceHolder((SurfaceHolder) message.obj);
                    this.p = true;
                    this.dq.await(1L, TimeUnit.SECONDS);
                    k();
                    return;
                }
                return;
            }
            if (i == 111) {
                if (this.ox != null) {
                    SurfaceTexture surfaceTexture = (SurfaceTexture) message.obj;
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "setSurface: TextureView ");
                    this.ox.setSurface(new Surface(surfaceTexture));
                    this.p = true;
                    this.dq.await(1L, TimeUnit.SECONDS);
                    k();
                    return;
                }
                return;
            }
            switch (i) {
                case 100:
                    TTVideoEngine tTVideoEngine3 = this.ox;
                    if (tTVideoEngine3 != null) {
                        tTVideoEngine3.play();
                        break;
                    }
                    break;
                case 101:
                    TTVideoEngine tTVideoEngine4 = this.ox;
                    if (tTVideoEngine4 != null && this.wp != null) {
                        tTVideoEngine4.pause();
                        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.k) {
                            if (weakReference != null && weakReference.get() != null) {
                                weakReference.get();
                            }
                        }
                        this.wp.removeCallbacks(this.h);
                        break;
                    }
                    break;
                case 102:
                    kx();
                    break;
                case 103:
                    TTVideoEngine tTVideoEngine5 = this.ox;
                    if (tTVideoEngine5 != null) {
                        tTVideoEngine5.release();
                    }
                    this.mn = true;
                    for (WeakReference<dq.InterfaceC0003dq> weakReference2 : this.k) {
                        if (weakReference2 != null && weakReference2.get() != null) {
                            weakReference2.get().ox(this);
                        }
                    }
                    break;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(final SurfaceHolder surfaceHolder) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "setDisplay:  SurfaceView");
        d(true);
        this.le = surfaceHolder;
        d(new Runnable() { // from class: com.bytedance.sdk.component.ig.d.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.wp != null) {
                    d.this.wp.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(dq.InterfaceC0003dq interfaceC0003dq) {
        if (interfaceC0003dq == null) {
            return;
        }
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.k) {
            if (weakReference != null && weakReference.get() == interfaceC0003dq) {
                return;
            }
        }
        this.k.add(new WeakReference<>(interfaceC0003dq));
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(p pVar) {
        this.ox.setDirectUrlUseDataLoader(pVar.f(), pVar.fw(), (String) null, pVar.s());
        this.s = true;
        this.fw = 0;
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "TTVideoPlayer setDirectUrlUseDataLoader:  url =", pVar.f(), " isH265=", Boolean.valueOf(pVar.q()), " presize=", Integer.valueOf(pVar.iw()), " path=", pVar.s(), " fileName =", pVar.fw());
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "setIsMute: ");
        this.ox.setIsMute(z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z, long j, boolean z2) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "start: firstSeek:" + j + " first:" + z + " quiet:" + z2);
        e eVar = this.wp;
        if (eVar != null) {
            eVar.postDelayed(this.h, this.f1930e);
        }
        this.ig = System.currentTimeMillis();
        this.ox.setStartTime((int) j);
        this.ox.setIsMute(z2);
        if (this.p && this.s) {
            i();
        } else {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "seekTo: ", "Can not exec play, please exec setDataSource && setSurface before seek");
            dq(new Runnable() { // from class: com.bytedance.sdk.component.ig.d.d.4
                @Override // java.lang.Runnable
                public void run() {
                    d.this.i();
                }
            });
        }
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "start:end");
        this.dq.countDown();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long f() {
        if (this.fw == 0) {
            return 0L;
        }
        if (this.q == 0 && this.jy != 0) {
            this.q = System.currentTimeMillis() - this.jy;
        }
        return this.q;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int fw() {
        return this.fw;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long gh() {
        try {
            return this.ox.getCurrentPlaybackTime();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d(th.getMessage());
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceTexture ia() {
        return this.i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int ig() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "getVideoHeight: ");
        return this.r;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean iw() {
        return this.cd;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean jy() {
        return this.mn;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean kk() {
        return this.ia;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceHolder mn() {
        return this.le;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean mp() {
        return this.ox.getPlaybackState() == 1;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int no() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "getVideoWidth: ");
        return this.gh;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean o() {
        return this.o;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "pause: ");
        e eVar = this.wp;
        if (eVar != null) {
            eVar.removeMessages(100);
            eVar.sendEmptyMessage(101);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox(boolean z) {
        this.ox.setLooping(z);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void p() {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_TTVideo", "stop: ");
        e eVar = this.wp;
        if (eVar != null) {
            eVar.sendEmptyMessage(105);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean q() {
        return this.ox.getPlaybackState() == 2;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void s() {
        wp();
        e eVar = this.wp;
        if (eVar != null) {
            eVar.removeCallbacksAndMessages(null);
            eVar.sendEmptyMessage(103);
            if (eVar.getLooper() != null) {
                eVar.post(new Runnable() { // from class: com.bytedance.sdk.component.ig.d.d.7
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            com.bytedance.sdk.component.o.d.dq.dq().dq(d.this.wp);
                            d.this.wp = null;
                        } catch (Throwable th) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.ox("CSJ_VIDEO_TTVideo", "release error:" + th.getMessage());
                        }
                    }
                });
            }
        }
    }
}
