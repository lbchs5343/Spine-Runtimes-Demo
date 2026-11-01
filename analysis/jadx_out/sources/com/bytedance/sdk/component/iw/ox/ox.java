package com.bytedance.sdk.component.iw.ox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.kk;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.component.iw.q;
import com.bytedance.sdk.component.iw.r;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public class ox implements kk {
    private ExecutorService bl;
    private Queue<com.bytedance.sdk.component.iw.p.kk> cd;

    /* renamed from: d, reason: collision with root package name */
    private String f1964d;
    Future<?> dq;

    /* renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.component.iw.d f1965e;

    /* renamed from: f, reason: collision with root package name */
    private r f1966f;
    private int fw;
    private final Handler gh;
    private int h;
    private com.bytedance.sdk.component.iw.mn i;
    private int ia;
    private WeakReference<ImageView> ig;
    private ImageView.ScaleType iw;
    private boolean ji;
    private boolean jy;
    private iw k;
    private int kk;
    private int kx;
    private int le;
    private Bitmap.Config mn;
    private volatile boolean mp;
    private boolean n;
    private int no;
    private com.bytedance.sdk.component.iw.ia o;
    private q op;
    private String ox;
    private String p;
    private boolean q;
    private boolean r;
    private f s;
    private com.bytedance.sdk.component.iw.ox.dq wp;

    public static class d implements o {
        private int cd;

        /* renamed from: d, reason: collision with root package name */
        private ImageView f1967d;
        private f dq;

        /* renamed from: f, reason: collision with root package name */
        private iw f1968f;
        private com.bytedance.sdk.component.iw.ia fw;
        private int gh;
        private ExecutorService i;
        private int ia;
        private boolean ig;
        private Bitmap.Config iw;
        private com.bytedance.sdk.component.iw.d jy;
        private q k;
        private boolean le;
        private int mn;
        private boolean mp;
        private r no;
        private String ox;
        private String p;
        private String q;
        private boolean r;
        private ImageView.ScaleType s;
        private int kk = 1;
        private int o = 5;

        public d(iw iwVar) {
            this.f1968f = iwVar;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(11)
        public o d(int i) {
            this.ia = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(5)
        public o d(String str) {
            this.ox = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(15)
        public o d(boolean z) {
            this.mp = z;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(3)
        public kk dq(ImageView imageView) {
            this.f1967d = imageView;
            return new ox(this).e();
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(2)
        public kk dq(f fVar) {
            this.dq = fVar;
            return new ox(this).e();
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(1)
        public kk dq(f fVar, int i) {
            this.o = i;
            return dq(fVar);
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(10)
        public o dq(int i) {
            this.mn = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(9)
        public o dq(Bitmap.Config config) {
            this.iw = config;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(8)
        public o dq(ImageView.ScaleType scaleType) {
            this.s = scaleType;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(6)
        public o dq(com.bytedance.sdk.component.iw.d dVar) {
            this.jy = dVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(17)
        public o dq(com.bytedance.sdk.component.iw.ia iaVar) {
            this.fw = iaVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(21)
        public o dq(q qVar) {
            this.k = qVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(13)
        public o dq(r rVar) {
            this.no = rVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(4)
        public o dq(String str) {
            this.p = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(16)
        public o dq(ExecutorService executorService) {
            this.i = executorService;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(14)
        public o dq(boolean z) {
            this.ig = z;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(12)
        public o ox(int i) {
            this.kk = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(7)
        public o ox(String str) {
            this.q = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(20)
        public o ox(boolean z) {
            this.le = z;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(18)
        public o p(int i) {
            this.cd = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.iw.o
        @ATSMethod(19)
        public o s(int i) {
            this.gh = i;
            return this;
        }
    }

    public class dq implements f {

        /* renamed from: d, reason: collision with root package name */
        private f f1969d;

        public dq(f fVar) {
            this.f1969d = fVar;
        }

        private boolean dq(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(ox.this.ox)) ? false : true;
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(2)
        public void dq(final int i, final String str, final Throwable th) {
            if (ox.this.fw == 5) {
                ox.this.gh.post(new Runnable() { // from class: com.bytedance.sdk.component.iw.ox.ox.dq.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dq.this.f1969d != null) {
                            dq.this.f1969d.dq(i, str, th);
                        }
                    }
                });
                return;
            }
            f fVar = this.f1969d;
            if (fVar != null) {
                fVar.dq(i, str, th);
            }
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(1)
        public void dq(final no noVar) {
            Bitmap dq;
            final ImageView imageView = (ImageView) ox.this.ig.get();
            if (imageView != null && ox.this.no != 3 && dq(imageView) && (noVar.ox() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) noVar.ox();
                ox.this.gh.post(new Runnable() { // from class: com.bytedance.sdk.component.iw.ox.ox.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (ox.this.o != null && (noVar.ox() instanceof Bitmap) && (dq = ox.this.o.dq((Bitmap) noVar.ox())) != null) {
                    noVar.setResult(dq);
                }
            } catch (Throwable unused) {
            }
            if (ox.this.fw == 5) {
                ox.this.gh.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.component.iw.ox.ox.dq.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dq.this.f1969d != null) {
                            dq.this.f1969d.dq(noVar);
                        }
                    }
                });
                return;
            }
            f fVar = this.f1969d;
            if (fVar != null) {
                fVar.dq(noVar);
            }
        }
    }

    private ox(d dVar) {
        this.cd = new LinkedBlockingQueue();
        this.gh = new Handler(Looper.getMainLooper());
        this.r = true;
        this.f1964d = dVar.p;
        this.s = new dq(dVar.dq);
        this.ig = new WeakReference<>(dVar.f1967d);
        this.iw = dVar.s;
        this.mn = dVar.iw;
        this.ia = dVar.mn;
        this.kk = dVar.ia;
        this.no = dVar.kk;
        this.fw = dVar.o;
        this.f1966f = dVar.no;
        this.f1965e = dq(dVar);
        if (!TextUtils.isEmpty(dVar.ox)) {
            d(dVar.ox);
            dq(dVar.ox);
        }
        this.q = dVar.ig;
        this.jy = dVar.mp;
        this.k = dVar.f1968f;
        this.o = dVar.fw;
        this.h = dVar.gh;
        this.kx = dVar.cd;
        this.bl = dVar.i;
        this.ji = dVar.r;
        this.n = dVar.le;
        this.op = dVar.k;
        this.cd.add(new com.bytedance.sdk.component.iw.p.ox());
    }

    private com.bytedance.sdk.component.iw.d dq(d dVar) {
        return dVar.jy != null ? dVar.jy : !TextUtils.isEmpty(dVar.q) ? com.bytedance.sdk.component.iw.ox.dq.dq.dq(new File(dVar.q)) : com.bytedance.sdk.component.iw.ox.dq.dq.mn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str, Throwable th) {
        new com.bytedance.sdk.component.iw.p.ia(i, str, th).dq(this);
        this.cd.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public kk e() {
        try {
            iw iwVar = this.k;
            if (iwVar == null) {
                f fVar = this.s;
                if (fVar != null) {
                    fVar.dq(1005, "not init !", null);
                    return this;
                }
            } else {
                ExecutorService iw = this.bl == null ? iwVar.iw() : null;
                Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.iw.ox.ox.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.component.iw.p.kk kkVar;
                        while (!ox.this.mp && (kkVar = (com.bytedance.sdk.component.iw.p.kk) ox.this.cd.poll()) != null) {
                            try {
                                if (ox.this.f1966f != null) {
                                    ox.this.f1966f.dq(kkVar.dq(), ox.this);
                                }
                                kkVar.dq(ox.this);
                                if (ox.this.f1966f != null) {
                                    ox.this.f1966f.d(kkVar.dq(), ox.this);
                                }
                            } catch (Throwable th) {
                                ox.this.dq(ZeusPluginEventCallback.EVENT_START_LOAD, th.getMessage(), th);
                                if (ox.this.f1966f != null) {
                                    ox.this.f1966f.d("exception", ox.this);
                                    return;
                                }
                                return;
                            }
                        }
                        if (ox.this.mp) {
                            ox.this.dq(1003, "canceled", null);
                        }
                    }
                };
                if (this.n) {
                    runnable.run();
                    return this;
                }
                ExecutorService executorService = this.bl;
                if (executorService != null) {
                    this.dq = executorService.submit(runnable);
                    return this;
                }
                if (iw != null) {
                    this.dq = iw.submit(runnable);
                }
            }
            return this;
        } catch (Exception e2) {
            Log.e("ImageRequest", e2.getMessage());
            return this;
        }
    }

    public int cd() {
        return this.le;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(2)
    public String d() {
        return this.f1964d;
    }

    public void d(String str) {
        WeakReference<ImageView> weakReference = this.ig;
        if (weakReference != null && weakReference.get() != null) {
            this.ig.get().setTag(1094453505, str);
        }
        this.ox = str;
    }

    public void dq(int i) {
        this.le = i;
    }

    public void dq(com.bytedance.sdk.component.iw.mn mnVar) {
        this.i = mnVar;
    }

    public void dq(com.bytedance.sdk.component.iw.ox.dq dqVar) {
        this.wp = dqVar;
    }

    public void dq(String str) {
        this.p = str;
    }

    public void dq(boolean z) {
        this.r = z;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(1)
    public boolean dq() {
        this.mp = true;
        Future<?> future = this.dq;
        if (future != null) {
            return future.cancel(true);
        }
        return true;
    }

    public boolean dq(com.bytedance.sdk.component.iw.p.kk kkVar) {
        if (this.mp) {
            return false;
        }
        return this.cd.add(kkVar);
    }

    public boolean f() {
        return this.r;
    }

    public com.bytedance.sdk.component.iw.mn fw() {
        return this.i;
    }

    public com.bytedance.sdk.component.iw.ox.dq gh() {
        return this.wp;
    }

    public com.bytedance.sdk.component.iw.d i() {
        return this.f1965e;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(8)
    public Bitmap.Config ia() {
        return this.mn;
    }

    public Bitmap.Config ig() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(6)
    public String iw() {
        return this.p;
    }

    public boolean jy() {
        return this.jy;
    }

    public q k() {
        return this.op;
    }

    public int kk() {
        return this.kx;
    }

    public boolean le() {
        return this.ji;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(7)
    public String mn() {
        return this.ox;
    }

    public int mp() {
        return this.no;
    }

    public f no() {
        return this.s;
    }

    public int o() {
        return this.h;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(3)
    public int ox() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(4)
    public int p() {
        return this.kk;
    }

    public boolean q() {
        return this.q;
    }

    public iw r() {
        return this.k;
    }

    @Override // com.bytedance.sdk.component.iw.kk
    @ATSMethod(5)
    public ImageView.ScaleType s() {
        return this.iw;
    }

    public String wp() {
        return iw();
    }
}
