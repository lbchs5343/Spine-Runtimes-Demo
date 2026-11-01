package com.ss.android.socialbase.downloader.iw;

import android.os.Process;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
class mp implements Runnable {
    private int bl;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9412c;
    private long cd;
    private BaseException ce;

    /* renamed from: d, reason: collision with root package name */
    fw f9413d;
    volatile kk dq;

    /* renamed from: e, reason: collision with root package name */
    private volatile boolean f9414e;
    private boolean er;

    /* renamed from: f, reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.p f9415f;
    private volatile long gh;
    private Thread h;
    String ia;
    private final ox ig;
    private long ir;
    volatile long iw;
    private com.ss.android.socialbase.downloader.kk.s j;
    private volatile boolean ji;
    private com.ss.android.socialbase.downloader.network.kk jy;
    private Future k;
    String kk;
    private volatile boolean kx;
    private volatile long le;
    volatile long mn;
    private final DownloadInfo mp;
    private int n;
    private final iw no;
    String o;
    private int op;
    final int ox;
    volatile long p;
    private final com.ss.android.socialbase.downloader.mn.dq q;
    private volatile long r;
    volatile long s;
    private int u;
    private boolean wn;
    private volatile boolean wp;
    private final List<kk> fw = new ArrayList();
    private volatile long i = -1;

    public mp(DownloadInfo downloadInfo, no noVar, ox oxVar, fw fwVar, int i) {
        this.mp = downloadInfo;
        this.no = noVar;
        this.ig = oxVar;
        this.q = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
        this.f9413d = fwVar;
        this.ox = i;
    }

    private void d(kk kkVar) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        ox(kkVar);
        this.no.dq(this, kkVar, this.f9413d, this.f9415f);
        this.f9413d.ox();
    }

    private dq dq(ox oxVar, InputStream inputStream) throws InterruptedException, BaseException, IOException {
        int i;
        dq d2 = oxVar.d();
        try {
            i = inputStream.read(d2.dq);
        } catch (Throwable th) {
            th = th;
            i = -1;
        }
        try {
            if (i == -1) {
                throw new BaseException(1073, "probe");
            }
            d2.ox = i;
            if (i == -1) {
                oxVar.dq(d2);
            }
            return d2;
        } catch (Throwable th2) {
            th = th2;
            if (i == -1) {
                oxVar.dq(d2);
            }
            throw th;
        }
    }

    private boolean dq(BaseException baseException) {
        if (!com.ss.android.socialbase.downloader.kk.iw.ox(baseException)) {
            return false;
        }
        String str = this.f9413d.dq;
        if (TextUtils.isEmpty(str) || !str.startsWith("https") || !this.mp.isNeedHttpsToHttpRetry() || this.f9412c) {
            return false;
        }
        this.f9412c = true;
        ig();
        return true;
    }

    private boolean dq(kk kkVar) throws BaseException {
        no();
        while (true) {
            try {
                d(kkVar);
                p(kkVar);
                kk();
                return true;
            } catch (o e2) {
                this.ce = e2;
                throw e2;
            } catch (Throwable th) {
                try {
                    com.ss.android.socialbase.downloader.ox.dq.s("SegmentReader", "download: e = " + th + ", threadIndex = " + this.ox + ", reconnect = " + this.f9414e + ", closed = " + this.wp);
                    if (this.wp) {
                        kk();
                        return false;
                    }
                    if (this.f9414e) {
                        this.f9414e = false;
                        try {
                            Thread.interrupted();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                        if (this.kx) {
                            this.kx = false;
                            throw new o(5, "download");
                        }
                    } else {
                        th.printStackTrace();
                        if (th instanceof BaseException) {
                            e = th;
                        } else {
                            try {
                                com.ss.android.socialbase.downloader.kk.iw.dq((Throwable) th, "download");
                                e = null;
                            } catch (BaseException e3) {
                                e = e3;
                            }
                        }
                        if (e == null || !dq(kkVar, e)) {
                            kk();
                            return false;
                        }
                    }
                    kk();
                } catch (Throwable th3) {
                    kk();
                    throw th3;
                }
            }
        }
    }

    private boolean dq(kk kkVar, BaseException baseException) {
        com.ss.android.socialbase.downloader.ox.dq.s("SegmentReader", "handleDownloadFailed:  e = " + baseException + ", curRetryCount = " + this.op + ", retryCount = " + this.n);
        this.ce = baseException;
        this.f9413d.d();
        this.no.dq(this, this.f9413d, kkVar, baseException, this.op, this.n);
        int i = this.op;
        if (i < this.n) {
            this.op = i + 1;
            return true;
        }
        if (dq(baseException)) {
            return true;
        }
        this.no.dq(this, this.f9413d, kkVar, baseException);
        return false;
    }

    private void ig() {
        this.n = this.f9413d.p ? this.mp.getRetryCount() : this.mp.getBackUpUrlRetryCount();
        this.op = 0;
    }

    private void kk() {
        this.ir = this.p;
        this.p = -1L;
        this.s = -1L;
        this.iw = -1L;
        this.mn = -1L;
        o();
    }

    private long mp() {
        long j = this.gh;
        this.gh = 0L;
        if (j <= 0) {
            return Long.MAX_VALUE;
        }
        return j;
    }

    private void no() {
        this.f9412c = false;
        ig();
    }

    private void o() {
        com.ss.android.socialbase.downloader.network.kk kkVar = this.jy;
        if (kkVar != null) {
            try {
                com.ss.android.socialbase.downloader.ox.dq.ox("SegmentReader", "closeConnection: thread = " + this.ox);
                kkVar.p();
                kkVar.ox();
            } catch (Throwable unused) {
            }
        }
    }

    private void ox(kk kkVar) throws BaseException {
        String str;
        com.ss.android.socialbase.downloader.network.kk dq;
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.s = 0L;
                this.p = currentTimeMillis;
                this.cd = kkVar.s();
                this.r = kkVar.iw();
                if (this.r > 0 && this.cd > this.r) {
                    throw new o(6, "createConn, ".concat(String.valueOf(kkVar)));
                }
                this.j = new com.ss.android.socialbase.downloader.kk.s();
                List<com.ss.android.socialbase.downloader.model.ox> dq2 = com.ss.android.socialbase.downloader.kk.iw.dq(this.mp.getExtraHeaders(), this.mp.geteTag(), this.cd, this.r);
                dq2.add(new com.ss.android.socialbase.downloader.model.ox("Segment-Index", String.valueOf(kkVar.mn())));
                dq2.add(new com.ss.android.socialbase.downloader.model.ox("Thread-Index", String.valueOf(this.ox)));
                com.ss.android.socialbase.downloader.kk.iw.dq(dq2, this.mp);
                com.ss.android.socialbase.downloader.kk.iw.d(dq2, this.mp);
                String str2 = this.f9413d.dq;
                if (this.f9412c && !TextUtils.isEmpty(str2) && str2.startsWith("https")) {
                    str2 = str2.replaceFirst("https", "http");
                }
                str = str2;
                String str3 = this.f9413d.f9406d;
                com.ss.android.socialbase.downloader.ox.dq.ox("SegmentReader", "createConnectionBegin: url = " + str + ", ip = " + str3 + ", segment = " + kkVar + ", threadIndex = " + this.ox);
                this.ia = str;
                this.kk = str3;
                dq = com.ss.android.socialbase.downloader.downloader.ox.dq(this.mp.isNeedDefaultHttpServiceBackUp(), this.mp.getMaxBytes(), str, str3, dq2, 0, currentTimeMillis - this.ir > 3000 && this.q.d("monitor_download_connect") > 0, this.mp);
            } catch (Throwable th) {
                this.s = System.currentTimeMillis();
                throw th;
            }
        } catch (BaseException e2) {
            throw e2;
        } catch (Throwable th2) {
            com.ss.android.socialbase.downloader.kk.iw.dq(th2, "createConn");
        }
        if (dq == null) {
            throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
        }
        this.jy = dq;
        this.f9415f = new com.ss.android.socialbase.downloader.model.p(str, dq);
        if (this.wp) {
            throw new f("createConn");
        }
        if (dq instanceof com.ss.android.socialbase.downloader.network.dq) {
            this.o = ((com.ss.android.socialbase.downloader.network.dq) dq).s();
        }
        this.s = System.currentTimeMillis();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:186:0x0157
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:270:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x03df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void p(com.ss.android.socialbase.downloader.iw.kk r41) throws com.ss.android.socialbase.downloader.exception.BaseException {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.iw.mp.p(com.ss.android.socialbase.downloader.iw.kk):void");
    }

    public long d() {
        long ox;
        synchronized (this.no) {
            ox = this.le + ox();
        }
        return ox;
    }

    public void d(long j) {
        long j2 = this.i;
        com.ss.android.socialbase.downloader.kk.s sVar = this.j;
        if (j2 < 0 || sVar == null) {
            return;
        }
        sVar.dq(j2, j);
    }

    public void d(boolean z) {
        this.er = z;
    }

    public long dq(long j, long j2) {
        com.ss.android.socialbase.downloader.kk.s sVar = this.j;
        if (sVar == null) {
            return -1L;
        }
        return sVar.d(j, j2);
    }

    public void dq() {
        fw fwVar = this.f9413d;
        try {
            synchronized (this.no) {
                try {
                    long ox = ox();
                    if (ox > 0) {
                        this.le += ox;
                        fwVar.dq(ox);
                    }
                    this.i = -1L;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void dq(Future future) {
        this.k = future;
    }

    public void dq(boolean z) {
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentReader", "reconnect: threadIndex = " + this.ox);
        synchronized (this) {
            this.kx = z;
            this.f9414e = true;
            this.ji = true;
        }
        o();
        Thread thread = this.h;
        if (thread != null) {
            try {
                thread.interrupt();
            } catch (Throwable unused) {
            }
        }
    }

    public boolean dq(long j) {
        long j2 = this.r;
        if (j <= 0 && j2 > 0) {
            return false;
        }
        if (j > j2 && j2 > 0) {
            return false;
        }
        this.gh = j;
        this.ji = true;
        return true;
    }

    public boolean dq(fw fwVar) {
        int i = this.u;
        if (i >= 30) {
            return false;
        }
        this.u = i + 1;
        fw fwVar2 = this.f9413d;
        if (fwVar2 != null) {
            fwVar2.d(this);
        }
        fwVar.dq(this);
        this.f9413d = fwVar;
        ig();
        return true;
    }

    public long ia() {
        return this.cd;
    }

    public void iw() {
        dq(false);
    }

    public boolean mn() {
        return this.er;
    }

    public long ox() {
        synchronized (this.no) {
            try {
                long j = this.i;
                long j2 = this.cd;
                if (j2 < 0 || j <= j2) {
                    return 0L;
                }
                return j - j2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void ox(boolean z) {
        this.wn = z;
    }

    public long p() {
        return this.i;
    }

    @Override // java.lang.Runnable
    public void run() {
        kk dq;
        iw iwVar;
        iw iwVar2;
        Process.setThreadPriority(10);
        try {
            this.h = Thread.currentThread();
            this.no.dq(this);
            this.f9413d.dq(this);
            while (true) {
                dq = this.no.dq(this, this.f9413d);
                if (dq == null) {
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentReader", "no more segment, thread_index = " + this.ox);
                    break;
                }
                this.dq = dq;
                try {
                    try {
                    } catch (o e2) {
                        com.ss.android.socialbase.downloader.ox.dq.s("SegmentReader", "run: SegmentApplyException, e = ".concat(String.valueOf(e2)));
                        int i = this.bl;
                        if (i >= 50) {
                            com.ss.android.socialbase.downloader.ox.dq.s("SegmentReader", "segment apply failed " + this.bl + "times, thread_index = " + this.ox);
                            this.dq = null;
                            iwVar = this.no;
                            break;
                        }
                        this.bl = i + 1;
                        this.dq = null;
                        iwVar2 = this.no;
                    }
                    if (!dq(dq)) {
                        if (!this.wp) {
                            com.ss.android.socialbase.downloader.ox.dq.s("SegmentReader", "download segment failed, segment = " + dq + ", thread_index = " + this.ox + ", failedException = " + this.ce);
                            break;
                        }
                        break;
                    }
                    this.fw.add(dq);
                    this.dq = null;
                    iwVar2 = this.no;
                    iwVar2.dq(this, dq);
                } catch (Throwable th) {
                    this.dq = null;
                    this.no.dq(this, dq);
                    throw th;
                }
            }
            this.dq = null;
            iwVar = this.no;
            iwVar.dq(this, dq);
        } catch (Throwable th2) {
            try {
                th2.printStackTrace();
                try {
                    this.f9413d.d(this);
                    this.no.d(this);
                } catch (Throwable unused) {
                }
                this.h = null;
            } finally {
                try {
                    this.f9413d.d(this);
                    this.no.d(this);
                } catch (Throwable unused2) {
                }
                this.h = null;
            }
        }
    }

    public void s() {
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentReader", "close: threadIndex = " + this.ox);
        synchronized (this) {
            this.wp = true;
            this.ji = true;
        }
        o();
        Future future = this.k;
        if (future != null) {
            this.k = null;
            try {
                future.cancel(true);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
