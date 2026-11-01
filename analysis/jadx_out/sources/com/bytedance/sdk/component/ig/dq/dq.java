package com.bytedance.sdk.component.ig.dq;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.component.ttvideo.ILiveListener;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.ILiveSettingBundle;
import com.bykv.vk.component.ttvideo.INetworkClient;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.VideoLiveManager;
import com.bykv.vk.component.ttvideo.log.LiveError;
import com.bykv.vk.openvk.component.video.api.dq;
import com.bykv.vk.openvk.component.video.api.ox;
import com.bykv.vk.openvk.component.video.api.ox.d;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.bykv.vk.openvk.component.video.api.dq, e.dq {

    /* renamed from: c, reason: collision with root package name */
    private boolean f1937c;
    private ILivePlayer dq;

    /* renamed from: e, reason: collision with root package name */
    private SurfaceTexture f1939e;
    private volatile p h;
    private long i;
    private e iw;
    private long jy;
    private JSONObject op;
    private final Context ox;
    private int p;
    private int s;
    private boolean u;
    private SurfaceHolder wp;

    /* renamed from: d, reason: collision with root package name */
    private final List<WeakReference<dq.InterfaceC0003dq>> f1938d = Collections.synchronizedList(new ArrayList());
    private volatile boolean mn = false;
    private volatile boolean ia = false;
    private volatile boolean kk = false;
    private volatile boolean o = false;
    private volatile boolean no = false;
    private volatile boolean ig = false;
    private volatile boolean mp = false;
    private volatile boolean q = true;

    /* renamed from: f, reason: collision with root package name */
    private long f1940f = 0;
    private long fw = 0;
    private final int cd = 0;
    private int gh = 0;
    private long r = 0;
    private long le = 0;
    private volatile boolean k = false;
    private volatile int kx = 200;
    private long ji = 0;
    private final ArrayList<Runnable> bl = new ArrayList<>();
    private final Runnable n = new Runnable() { // from class: com.bytedance.sdk.component.ig.dq.dq.1
        @Override // java.lang.Runnable
        public void run() {
            long gh = dq.this.gh();
            dq.this.le += dq.this.kx;
            if (dq.this.cd() > 0 && dq.this.ji != gh) {
                if (ox.p()) {
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "run: lastCur = " + dq.this.ji + "  currentPosition=" + gh);
                }
                dq dqVar = dq.this;
                dqVar.dq(gh, dqVar.cd());
            }
            dq.this.ji = gh;
            if (dq.this.gh() >= dq.this.i) {
                dq.this.no = true;
                dq.this.s();
                for (WeakReference weakReference : dq.this.f1938d) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq(dq.this);
                    }
                }
            }
            if (dq.this.no) {
                dq dqVar2 = dq.this;
                dqVar2.dq(dqVar2.cd(), dq.this.cd());
            } else if (dq.this.iw != null) {
                dq.this.iw.postDelayed(this, dq.this.kx);
            }
        }
    };
    private CountDownLatch ir = new CountDownLatch(1);
    private final ILiveListener ce = new ILiveListener() { // from class: com.bytedance.sdk.component.ig.dq.dq.6

        /* renamed from: d, reason: collision with root package name */
        private boolean f1943d = false;

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAbrSwitch(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAudioRenderStall(int i) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCacheFileCompletion() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCompletion() {
            if (dq.this.iw == null) {
                return;
            }
            dq.this.iw.removeCallbacks(dq.this.n);
            for (WeakReference weakReference : dq.this.f1938d) {
                if (weakReference != null && weakReference.get() != null) {
                    ((dq.InterfaceC0003dq) weakReference.get()).dq(dq.this, -1, -1, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onError(LiveError liveError) {
            if (liveError != null) {
                if (this.f1943d) {
                    return;
                }
                this.f1943d = true;
                d dVar = new d(liveError.code, 0, liveError.getInfoJSON());
                for (WeakReference weakReference : dq.this.f1938d) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq(dq.this, dVar);
                    }
                }
            }
            dq.this.q = true;
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onFirstFrame(boolean z) {
            if (dq.this.iw == null) {
                return;
            }
            dq.this.k = true;
            dq.this.iw.removeCallbacks(dq.this.n);
            if (dq.this.i > 0) {
                dq.this.iw.postDelayed(dq.this.n, dq.this.kx);
            }
            dq.this.q = false;
            if (!z) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "onFirstFrame-> not first frame , isFirstFrame=".concat(String.valueOf(z)));
                for (WeakReference weakReference : dq.this.f1938d) {
                    if (weakReference != null && weakReference.get() != null) {
                        ((dq.InterfaceC0003dq) weakReference.get()).dq((com.bykv.vk.openvk.component.video.api.dq) dq.this, -1);
                    }
                }
                return;
            }
            dq.this.f1940f = System.currentTimeMillis() - dq.this.jy;
            for (WeakReference weakReference2 : dq.this.f1938d) {
                if (weakReference2 != null && weakReference2.get() != null) {
                    dq.InterfaceC0003dq interfaceC0003dq = (dq.InterfaceC0003dq) weakReference2.get();
                    dq dqVar = dq.this;
                    interfaceC0003dq.dq(dqVar, dqVar.f1940f);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onMonitorLog(JSONObject jSONObject, String str) {
            for (WeakReference weakReference : dq.this.f1938d) {
                if (weakReference != null && weakReference.get() != null) {
                    ((dq.InterfaceC0003dq) weakReference.get()).dq(dq.this, jSONObject, str);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onPrepared() {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "onPrepared.....");
            dq.this.ig = true;
            for (WeakReference weakReference : dq.this.f1938d) {
                if (weakReference != null && weakReference.get() != null) {
                    ((dq.InterfaceC0003dq) weakReference.get()).d(dq.this);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onReportALog(int i, String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onResolutionDegrade(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onSeiUpdate(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallEnd() {
            if (dq.this.iw == null) {
                return;
            }
            if (dq.this.i > 0) {
                dq.this.iw.postDelayed(dq.this.n, dq.this.kx);
            }
            dq dqVar = dq.this;
            dqVar.fw = (System.currentTimeMillis() - dq.this.r) + dqVar.fw;
            for (WeakReference weakReference : dq.this.f1938d) {
                if (weakReference != null && weakReference.get() != null) {
                    ((dq.InterfaceC0003dq) weakReference.get()).dq((com.bykv.vk.openvk.component.video.api.dq) dq.this, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallStart() {
            if (dq.this.iw == null) {
                return;
            }
            dq.jy(dq.this);
            dq.this.r = System.currentTimeMillis();
            dq.this.iw.removeCallbacks(dq.this.n);
            for (WeakReference weakReference : dq.this.f1938d) {
                if (weakReference != null && weakReference.get() != null) {
                    ((dq.InterfaceC0003dq) weakReference.get()).dq(dq.this, -1, -1, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoRenderStall(int i) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoSizeChanged(int i, int i2) {
            dq.this.p = i;
            dq.this.s = i2;
            for (WeakReference weakReference : dq.this.f1938d) {
                if (weakReference != null && weakReference.get() != null) {
                    ((dq.InterfaceC0003dq) weakReference.get()).dq((com.bykv.vk.openvk.component.video.api.dq) dq.this, i, i2);
                }
            }
        }
    };

    /* renamed from: com.bytedance.sdk.component.ig.dq.dq$dq, reason: collision with other inner class name */
    public static class C0118dq implements INetworkClient {
        private final ig dq;

        public C0118dq() {
            ig.dq d2 = ox.ox().d();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.dq = d2.dq(10L, timeUnit).d(10L, timeUnit).ox(10L, timeUnit).dq();
        }

        @Override // com.bykv.vk.component.ttvideo.INetworkClient
        public INetworkClient.Result doPost(String str, String str2) {
            return null;
        }

        @Override // com.bykv.vk.component.ttvideo.INetworkClient
        public INetworkClient.Result doRequest(String str, String str2) {
            String str3;
            String str4;
            String str5 = null;
            String str6 = null;
            JSONObject jSONObject = null;
            try {
                try {
                    f dq = this.dq.dq(new q.dq().dq(str).d("host", str2).d()).dq();
                    if (dq.p()) {
                        str4 = dq.iw().d();
                        try {
                            str6 = dq.mn().toString();
                            jSONObject = new JSONObject(str4);
                        } catch (JSONException e2) {
                            e = e2;
                            String str7 = str6;
                            str5 = str4;
                            str3 = str7;
                            return INetworkClient.Result.newBuilder().setBody(str5).setHeader(str3).setException(e).build();
                        }
                    } else {
                        str4 = null;
                    }
                    return INetworkClient.Result.newBuilder().setResponse(jSONObject).setBody(str4).build();
                } catch (JSONException e3) {
                    e = e3;
                    str3 = null;
                }
            } catch (IOException e4) {
                return INetworkClient.Result.newBuilder().setException(e4).build();
            } catch (Exception e5) {
                return INetworkClient.Result.newBuilder().setException(e5).build();
            }
        }
    }

    public dq(Context context, boolean z, long j, JSONObject jSONObject) {
        this.iw = null;
        this.i = 0L;
        this.ox = context;
        this.op = jSONObject;
        this.i = j > 0 ? j * 1000 : -1L;
        if (this.iw == null) {
            this.iw = com.bytedance.sdk.component.o.d.dq.dq().dq(this, "tt-live-video-player");
        }
        p(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j, long j2) {
        long j3;
        long j4;
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.f1938d) {
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

    private synchronized void dq(Runnable runnable) {
        this.bl.add(runnable);
    }

    private void dq(String str) {
        String str2 = LiveConfigKey.LOW;
        try {
            JSONObject jSONObject = this.op;
            if (jSONObject == null) {
                return;
            }
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "live ".concat(String.valueOf(jSONObject)));
            int optInt = jSONObject.optInt("enable");
            String optString = jSONObject.optString("appids");
            if (optInt == 1 && !TextUtils.isEmpty(optString)) {
                JSONObject jSONObject2 = new JSONObject(str);
                JSONObject optJSONObject = jSONObject2.optJSONObject("common");
                JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                if (optJSONObject != null && optJSONObject2 != null) {
                    String optString2 = optJSONObject.optString(PluginConstants.KEY_APP_ID);
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "api ".concat(String.valueOf(optString2)));
                    if (optString.contains(optString2)) {
                        if (optJSONObject2.optJSONObject(LiveConfigKey.UHD) != null) {
                            str2 = LiveConfigKey.UHD;
                        } else if (optJSONObject2.optJSONObject(LiveConfigKey.HIGH) != null) {
                            str2 = LiveConfigKey.HIGH;
                        } else if (optJSONObject2.optJSONObject(LiveConfigKey.STANDARD) != null) {
                            str2 = LiveConfigKey.STANDARD;
                        } else if (optJSONObject2.optJSONObject(LiveConfigKey.LOW) == null) {
                            str2 = null;
                        }
                        if (TextUtils.isEmpty(str2)) {
                            return;
                        }
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "update reso:".concat(String.valueOf(str2)));
                        this.dq.setStringOption(43, str2);
                    }
                }
            }
        } catch (Exception e2) {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "updateStream: catch exception:", e2.getMessage());
        }
    }

    private synchronized void i() {
        try {
            if (this.u) {
                return;
            }
            this.u = true;
            Iterator it = new ArrayList(this.bl).iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
            this.bl.clear();
            this.u = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static /* synthetic */ int jy(dq dqVar) {
        int i = dqVar.gh;
        dqVar.gh = i + 1;
        return i;
    }

    private void le() {
        e eVar = this.iw;
        if (eVar == null || eVar.getLooper() == null) {
            return;
        }
        this.iw.post(new Runnable() { // from class: com.bytedance.sdk.component.ig.dq.dq.5
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.iw == null || dq.this.iw.getLooper() == null) {
                    return;
                }
                try {
                    dq.this.f1939e = null;
                    dq.this.wp = null;
                    com.bytedance.sdk.component.o.d.dq.dq().dq(dq.this.iw);
                    dq.this.iw = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void p(final boolean z) {
        e eVar = this.iw;
        if (eVar != null) {
            eVar.post(new Runnable() { // from class: com.bytedance.sdk.component.ig.dq.dq.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ILiveSettingBundle iLiveSettingBundle = new ILiveSettingBundle() { // from class: com.bytedance.sdk.component.ig.dq.dq.2.1
                            /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
                            /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
                            @Override // com.bykv.vk.component.ttvideo.ILiveSettingBundle
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public <T> T getSettingsValueForKey(String str, T t) {
                                T t2;
                                str.getClass();
                                if (str.equals("live_enable_close_play_retry")) {
                                    if (t.getClass() == Integer.class) {
                                        t2 = (T) Integer.valueOf("1");
                                        return t.getClass() != Boolean.class ? (T) Boolean.TRUE : t2;
                                    }
                                } else if (!str.equals("live_sdk_cancel_sdk_dns_fail_retry")) {
                                    return t;
                                }
                                t2 = t;
                                if (t.getClass() != Boolean.class) {
                                }
                            }
                        };
                        dq dqVar = dq.this;
                        dqVar.dq = VideoLiveManager.newBuilder(dqVar.ox).setProjectKey("pangle_ad_live").setNetworkClient(new C0118dq()).setForceHttpDns(false).setForceTTNetHttpDns(false).setSettingsBundle(iLiveSettingBundle).setPlayerType(1).setListener(dq.this.ce).build();
                        dq.this.dq.setIntOption(69, z ? 1 : 0);
                        dq.this.dq.setStringOption(72, com.bytedance.sdk.openadsdk.api.plugin.d.dq(dq.this.ox, null).getAbsolutePath() + "/pangle_live/");
                    } catch (Exception e2) {
                        com.bykv.vk.openvk.component.video.api.iw.ox.ox("TTLiveVideoPlayer", e2.getMessage());
                    }
                }
            });
        }
    }

    private synchronized void r() {
        ArrayList<Runnable> arrayList = this.bl;
        if (arrayList != null && !arrayList.isEmpty()) {
            i();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long cd() {
        return this.i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d() {
        e eVar = this.iw;
        if (eVar != null) {
            eVar.post(new Runnable() { // from class: com.bytedance.sdk.component.ig.dq.dq.4
                @Override // java.lang.Runnable
                public void run() {
                    if (dq.this.dq == null || dq.this.mp()) {
                        return;
                    }
                    try {
                        dq.this.dq.play();
                        dq dqVar = dq.this;
                        dqVar.dq(dqVar.f1937c);
                        for (WeakReference weakReference : dq.this.f1938d) {
                            if (weakReference != null && weakReference.get() != null) {
                                weakReference.get();
                            }
                        }
                    } catch (Throwable th) {
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "play: catch exception", th);
                    }
                    dq.this.q = false;
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(int i) {
        this.kx = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void d(boolean z) {
        this.o = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq() {
        this.gh = 0;
        this.fw = 0L;
        this.r = 0L;
        dq(true, 0L, false);
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(float f2) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(int i) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(long j) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(SurfaceTexture surfaceTexture) {
        this.f1939e = surfaceTexture;
        e eVar = this.iw;
        if (eVar != null) {
            eVar.obtainMessage(111, surfaceTexture).sendToTarget();
        }
        com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "setSurface...surface=");
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        try {
            switch (message.what) {
                case 100:
                    d();
                    this.mp = true;
                    return;
                case 101:
                    ILivePlayer iLivePlayer = this.dq;
                    if (iLivePlayer != null) {
                        try {
                            iLivePlayer.stop();
                            for (WeakReference<dq.InterfaceC0003dq> weakReference : this.f1938d) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get();
                                }
                            }
                        } catch (Throwable th) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "pause: catch exception:", th);
                        }
                        this.q = true;
                        return;
                    }
                    return;
                case 102:
                    ILivePlayer iLivePlayer2 = this.dq;
                    if (iLivePlayer2 != null) {
                        try {
                            iLivePlayer2.reset();
                        } catch (Throwable th2) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "reset: catch exception:", th2);
                        }
                        this.q = true;
                        return;
                    }
                    return;
                case 103:
                    ILivePlayer iLivePlayer3 = this.dq;
                    if (iLivePlayer3 != null) {
                        try {
                            iLivePlayer3.release();
                        } catch (Throwable th3) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "release: catch exception:", th3);
                        }
                        this.kk = true;
                        this.q = true;
                        return;
                    }
                    return;
                case 104:
                case 106:
                case 108:
                case 109:
                default:
                    return;
                case 105:
                    ILivePlayer iLivePlayer4 = this.dq;
                    if (iLivePlayer4 != null) {
                        try {
                            iLivePlayer4.stop();
                        } catch (Throwable th4) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "stop: catch exception:", th4);
                        }
                        this.q = true;
                        return;
                    }
                    return;
                case 107:
                    if (this.dq == null || this.h == null) {
                        return;
                    }
                    String f2 = this.h.f();
                    dq(f2);
                    this.dq.setStreamInfo(f2);
                    this.ia = true;
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "set Datasource:" + this.ia);
                    this.gh = 0;
                    return;
                case 110:
                    ILivePlayer iLivePlayer5 = this.dq;
                    if (iLivePlayer5 != null) {
                        SurfaceHolder surfaceHolder = (SurfaceHolder) message.obj;
                        iLivePlayer5.setSurfaceHolder(surfaceHolder);
                        this.dq.setSurface(surfaceHolder.getSurface());
                        this.mn = true;
                        this.ir.await(1L, TimeUnit.SECONDS);
                        r();
                        return;
                    }
                    return;
                case 111:
                    ILivePlayer iLivePlayer6 = this.dq;
                    if (iLivePlayer6 != null) {
                        iLivePlayer6.setSurface(new Surface(this.f1939e));
                        this.mn = true;
                        this.ir.await(1L, TimeUnit.SECONDS);
                        r();
                        return;
                    }
                    return;
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
        e2.getMessage();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(SurfaceHolder surfaceHolder) {
        this.wp = surfaceHolder;
        com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...SurfaceHolder......".concat(String.valueOf(surfaceHolder)));
        e eVar = this.iw;
        if (eVar != null) {
            eVar.obtainMessage(110, surfaceHolder).sendToTarget();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(dq.InterfaceC0003dq interfaceC0003dq) {
        if (interfaceC0003dq == null) {
            return;
        }
        for (WeakReference<dq.InterfaceC0003dq> weakReference : this.f1938d) {
            if (weakReference != null && weakReference.get() == interfaceC0003dq) {
                return;
            }
        }
        this.f1938d.add(new WeakReference<>(interfaceC0003dq));
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(p pVar) {
        if (pVar == null) {
            return;
        }
        this.h = pVar;
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "setDataSource: model = " + pVar.f());
        e eVar = this.iw;
        if (eVar != null) {
            eVar.sendEmptyMessage(107);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z) {
        this.f1937c = z;
        if (this.dq != null) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...setQuietPlay......isMute=".concat(String.valueOf(z)));
            try {
                this.dq.setMute(Boolean.valueOf(z));
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "setMute: catch exception:", th);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void dq(boolean z, final long j, final boolean z2) {
        if (this.mn && this.ia && this.dq != null) {
            this.le = j;
            this.jy = System.currentTimeMillis();
            dq(z2);
            e eVar = this.iw;
            if (eVar != null) {
                eVar.sendEmptyMessage(100);
            }
            com.bytedance.sdk.component.utils.ig.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...play......");
        } else {
            dq(new Runnable() { // from class: com.bytedance.sdk.component.ig.dq.dq.3
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.le = j;
                    dq.this.jy = System.currentTimeMillis();
                    dq.this.dq(z2);
                    if (dq.this.iw != null) {
                        dq.this.iw.sendEmptyMessage(100);
                    }
                }
            });
        }
        this.ir.countDown();
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long f() {
        return this.fw;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int fw() {
        return this.gh;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public long gh() {
        return this.le;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceTexture ia() {
        return this.f1939e;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int ig() {
        return this.s;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean iw() {
        return this.k;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean jy() {
        return this.kk;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean kk() {
        com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...isCompleted......isComplete....=" + this.no);
        return this.no;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public SurfaceHolder mn() {
        return this.wp;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean mp() {
        ILivePlayer iLivePlayer = this.dq;
        if (iLivePlayer == null) {
            return false;
        }
        try {
            return iLivePlayer.isPlaying();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "isPlaying: catch exception:", th);
            return false;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public int no() {
        return this.p;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean o() {
        return this.mp;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox() {
        com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...pause......pause....currentPosition=" + gh());
        e eVar = this.iw;
        if (eVar != null) {
            eVar.removeCallbacks(this.n);
            eVar.sendEmptyMessage(101);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void ox(boolean z) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("TTLiveVideoPlayer", "setLoop: live is invalid ");
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void p() {
        com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...stop......stop....currentPosition=" + gh());
        e eVar = this.iw;
        if (eVar != null) {
            eVar.removeCallbacks(this.n);
            eVar.sendEmptyMessage(105);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public boolean q() {
        return this.q;
    }

    @Override // com.bykv.vk.openvk.component.video.api.dq
    public void s() {
        e eVar = this.iw;
        if (eVar != null) {
            eVar.removeCallbacks(this.n);
            eVar.sendEmptyMessage(103);
            le();
        }
        com.bykv.vk.openvk.component.video.api.iw.ox.d("TTLiveVideoPlayer", "TTLiveVideoPlayer...release......release....");
    }
}
