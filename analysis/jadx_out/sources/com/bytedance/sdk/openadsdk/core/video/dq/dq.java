package com.bytedance.sdk.openadsdk.core.video.dq;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bykv.vk.openvk.component.video.api.renderview.d;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.xz;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.s;
import com.bytedance.sdk.openadsdk.h.kk;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.iw.ox.fw;
import com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class dq implements ox, e.dq, dq.InterfaceC0174dq, com.bytedance.sdk.openadsdk.core.video.nativevideo.dq {

    /* renamed from: d, reason: collision with root package name */
    protected SurfaceHolder f3642d;

    /* renamed from: e, reason: collision with root package name */
    private long f3643e;

    /* renamed from: f, reason: collision with root package name */
    protected long f3644f;
    protected InterfaceC0196dq i;
    protected j iw;
    protected WeakReference<Context> kk;
    protected List<Runnable> no;
    protected SurfaceTexture ox;
    protected com.bykv.vk.openvk.component.video.api.dq p;
    protected p r;
    protected s s;
    private long wp;
    protected final e dq = new e(Looper.getMainLooper(), this);
    protected long mn = 0;
    protected long ia = 0;
    protected boolean o = false;
    protected boolean ig = true;
    protected long mp = 0;
    protected boolean q = false;
    protected boolean jy = false;
    protected boolean fw = false;
    private boolean k = false;
    protected boolean cd = false;
    protected boolean gh = false;
    protected Runnable le = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.dq.dq.1
        @Override // java.lang.Runnable
        public void run() {
            ig.dq("BaseController", "resumeVideo: run ", Boolean.valueOf(dq.this.o));
            dq.this.er();
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.dq.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0196dq {
        void dq(long j, long j2);
    }

    private boolean k() {
        s sVar = this.s;
        if (sVar == null) {
            return false;
        }
        d fw = sVar.fw();
        return (fw instanceof SSRenderTextureView) || (fw instanceof UpieVideoView);
    }

    private long s(long j) {
        long no = no();
        return u() ? dq(no, j) : no;
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
    public boolean bl() {
        return false;
    }

    public long c() {
        return this.wp;
    }

    public void ce() {
        ig.dq("BaseController", "execPendingActions: before ");
        List<Runnable> list = this.no;
        if (list == null || list.isEmpty() || this.k) {
            return;
        }
        ig.dq("BaseController", "execPendingActions:  exec");
        Iterator it = new ArrayList(this.no).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.no.clear();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void d(long j) {
        this.mn = j;
        long j2 = this.ia;
        if (j2 > j) {
            j = j2;
        }
        this.ia = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void d(com.bykv.vk.openvk.component.video.api.p.d dVar, SurfaceTexture surfaceTexture) {
        this.o = false;
        ig.dq("BaseController", "surfaceTextureDestroyed: ");
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.d(false);
        }
        this.ox = null;
        ce();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void d(com.bykv.vk.openvk.component.video.api.p.d dVar, SurfaceHolder surfaceHolder) {
        this.o = false;
        this.f3642d = null;
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.d(false);
        }
    }

    public void d(Runnable runnable) {
        if (this.no == null) {
            this.no = new ArrayList();
        }
        this.no.add(runnable);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void d(boolean z) {
        this.fw = z;
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.dq(z);
        }
    }

    public boolean d(int i) {
        return i == 6 || i == 8 || i == 9;
    }

    public long dq(long j, long j2) {
        long c2 = c();
        if (!ox() && (j == c2 || j - c2 < 0 || j == 0)) {
            return 0L;
        }
        j jVar = this.iw;
        if (jVar == null) {
            return j;
        }
        if (jVar.kr() == 2 && j2 > 60000) {
            if (this.q) {
                long j3 = j2 - 60000;
                long j4 = this.f3643e;
                if (j - j4 >= j3) {
                    return j4;
                }
            }
            j2 = 60000;
        }
        long j5 = j - c2;
        long j6 = (j2 * (j5 > 0 ? 0 : 1)) + j5;
        this.f3643e = j6;
        return j6;
    }

    public void dq(int i, int i2, String str) {
        if (this.kk == null) {
            return;
        }
        fw.dq dqVar = new fw.dq();
        dqVar.d(ig());
        long q = q();
        dqVar.ox(q);
        dqVar.dq(s(q));
        dqVar.dq(i);
        dqVar.d(i2);
        com.bytedance.sdk.openadsdk.iw.d.d.dq(cd(), dqVar, str);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, SurfaceTexture surfaceTexture) {
        this.o = true;
        this.ox = surfaceTexture;
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.dq(surfaceTexture);
            this.p.d(this.o);
        }
        ig.dq("BaseController", "surfaceTextureCreated: ");
        ce();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.dq
    public void dq(com.bykv.vk.openvk.component.video.api.p.d dVar, SurfaceHolder surfaceHolder) {
        this.o = true;
        this.f3642d = surfaceHolder;
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar == null) {
            return;
        }
        if (dqVar != null) {
            dqVar.dq(surfaceHolder);
        }
        ig.dq("BaseController", "surfaceCreated: ");
        ce();
    }

    public void dq(InterfaceC0196dq interfaceC0196dq) {
        this.i = interfaceC0196dq;
    }

    public void dq(Runnable runnable) {
        if (runnable == null || this.iw == null) {
            return;
        }
        if ((this.s.mp() && this.o) || o.dq(this.iw) || com.bytedance.sdk.openadsdk.s.dq.d(this.iw)) {
            runnable.run();
        } else {
            d(runnable);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void dq(boolean z) {
        this.ig = z;
        s sVar = this.s;
        if (sVar != null) {
            sVar.p(z);
        }
    }

    public void er() {
        this.dq.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.dq.dq.2
            @Override // java.lang.Runnable
            public void run() {
                dq dqVar = dq.this;
                if (dqVar.p != null) {
                    ig.dq("BaseController", "resumeVideo: execResumePlay", Boolean.valueOf(dqVar.o));
                    dq.this.p.d();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean f() {
        return this.jy;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public com.bykv.vk.openvk.component.video.api.dq fw() {
        return this.p;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean gh() {
        return this.fw;
    }

    public Map<String, Object> gx() {
        return null;
    }

    public boolean h() {
        return true;
    }

    public void ia(boolean z) {
        this.k = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public long ig() {
        if (fw() == null) {
            return 0L;
        }
        return fw().f();
    }

    public int ir() {
        int i = xz.dq(this.iw) ? 3 : 0;
        if (u()) {
            return 3;
        }
        return i;
    }

    public boolean j() {
        return this.ig;
    }

    public boolean ji() {
        WeakReference<Context> weakReference = this.kk;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public void kk(boolean z) {
        this.gh = z;
    }

    public void kx() {
        if (this.p == null) {
            return;
        }
        if (k()) {
            SurfaceTexture surfaceTexture = this.ox;
            if (surfaceTexture == null || surfaceTexture == this.p.ia()) {
                return;
            }
            this.p.dq(this.ox);
            return;
        }
        SurfaceHolder surfaceHolder = this.f3642d;
        if (surfaceHolder == null || surfaceHolder == this.p.mn()) {
            return;
        }
        this.p.dq(this.f3642d);
    }

    public void l() {
        fw.dq dqVar = new fw.dq();
        dqVar.d(true);
        p dq = com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s);
        if (dq != null) {
            dq.dq("EXTRA_PLAY_START", gx());
        }
        com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s, dqVar);
    }

    public void n() {
        if ((this.s.mp() && this.o) || o.dq(this.iw) || com.bytedance.sdk.openadsdk.s.dq.d(this.iw)) {
            ia(false);
            ce();
        }
    }

    public void nh() {
        fw.dq dqVar = new fw.dq();
        long q = q();
        dqVar.dq(s(q));
        dqVar.ox(q);
        dqVar.d(ig());
        dqVar.iw(mp());
        p dq = com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s);
        if (dq != null) {
            dq.dq("EXTRA_PLAY_ACTION", gx());
        }
        com.bytedance.sdk.openadsdk.iw.d.d.s(this.s, dqVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public long no() {
        return this.mn;
    }

    public void ob() {
        fw.dq dqVar = new fw.dq();
        long q = q();
        dqVar.dq(s(q));
        dqVar.ox(q);
        dqVar.d(ig());
        p dq = com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s);
        if (dq != null) {
            dq.dq("EXTRA_PLAY_ACTION", gx());
        }
        com.bytedance.sdk.openadsdk.iw.d.d.ox(cd(), dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.d.dq.InterfaceC0174dq
    public com.bytedance.sdk.openadsdk.core.multipro.d.dq op() {
        com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
        dqVar.mn = this.mn;
        dqVar.dq = r();
        dqVar.ia = gh();
        dqVar.p = i();
        return dqVar;
    }

    public long ox(p pVar) {
        com.bykv.vk.openvk.component.video.api.ox.ox e2;
        if (pVar == null || (e2 = pVar.e()) == null) {
            return 0L;
        }
        int we = this.iw.we();
        j jVar = this.iw;
        if (jVar != null) {
            int ia = c.ia(jVar);
            if (!d(we)) {
                return 0L;
            }
            if ((ia != 7 && ia != 8) || xz.dq(this.iw)) {
                return 0L;
            }
        }
        double mn = e2.mn();
        if (mn < 0.0d || mn >= e2.iw()) {
            return 0L;
        }
        long d2 = kk.dq(pVar.cd()).d(pVar);
        int f2 = e2.f();
        if (f2 <= 0 || d2 < f2) {
            return 0L;
        }
        long j = (long) (mn * 1000.0d);
        this.wp = j;
        return j;
    }

    public void ox(int i) {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar != null) {
            dqVar.d(i);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void ox(long j) {
        this.mp = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void ox(boolean z) {
        this.cd = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public void p(long j) {
        this.f3644f = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean p() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public long q() {
        com.bykv.vk.openvk.component.video.api.dq dqVar = this.p;
        if (dqVar == null) {
            return 0L;
        }
        return dqVar.cd();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean r() {
        return this.cd;
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    public boolean s() {
        return false;
    }

    public void t() {
        p pVar = this.r;
        if (pVar == null) {
            return;
        }
        pVar.dq("EXTRA_PLAY_START", gx());
        com.bytedance.sdk.openadsdk.iw.d.d.d(this.iw, this.s, this.r);
    }

    public boolean u() {
        return this.wp > 0;
    }

    public void vf() {
        fw.dq dqVar = new fw.dq();
        long q = q();
        dqVar.dq(s(q));
        dqVar.ox(q);
        dqVar.d(ig());
        p dq = com.bytedance.sdk.openadsdk.iw.d.d.dq(this.s);
        if (dq != null) {
            dq.dq("EXTRA_PLAY_ACTION", gx());
        }
        com.bytedance.sdk.openadsdk.iw.d.d.d(this.s, dqVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox
    /* renamed from: wn, reason: merged with bridge method [inline-methods] */
    public s cd() {
        return this.s;
    }
}
