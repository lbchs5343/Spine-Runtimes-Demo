package com.ss.android.socialbase.downloader.downloader;

import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private static String f9365d = "ResponseHandler";
    private long bl;
    private volatile long cd;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f9366e;

    /* renamed from: f, reason: collision with root package name */
    private long f9367f;
    private volatile long fw;
    private final boolean gh;
    private long h;
    private final com.ss.android.socialbase.downloader.dq.dq i;
    private com.ss.android.socialbase.downloader.impls.no ia;
    private volatile boolean ig;
    private final com.ss.android.socialbase.downloader.network.kk iw;
    private long ji;
    private long jy;
    private final long k;
    private r kk;
    private boolean kx;
    private final boolean le;
    private o mn;
    private volatile boolean mp;
    private long n;
    private BaseException no;
    private com.ss.android.socialbase.downloader.model.s o;
    private final DownloadInfo ox;
    private final String p;
    private final com.ss.android.socialbase.downloader.ia.iw q;
    private final com.ss.android.socialbase.downloader.mn.dq r;
    private final com.ss.android.socialbase.downloader.model.d s;
    private final long wp;
    boolean dq = false;
    private volatile long op = 0;
    private volatile long ir = 0;

    public s(DownloadInfo downloadInfo, String str, com.ss.android.socialbase.downloader.network.kk kkVar, com.ss.android.socialbase.downloader.model.d dVar, com.ss.android.socialbase.downloader.ia.iw iwVar) {
        this.ox = downloadInfo;
        this.p = str;
        o e2 = ox.e();
        this.mn = e2;
        if (e2 instanceof com.ss.android.socialbase.downloader.impls.p) {
            com.ss.android.socialbase.downloader.impls.p pVar = (com.ss.android.socialbase.downloader.impls.p) e2;
            this.ia = pVar.dq();
            this.kk = pVar.iw();
        }
        this.iw = kkVar;
        this.s = dVar;
        this.q = iwVar;
        long q = dVar.q();
        this.jy = q;
        this.f9367f = q;
        if (dVar.p()) {
            this.cd = dVar.fw();
        } else {
            this.cd = dVar.ox(false);
        }
        this.fw = dVar.f();
        this.i = com.ss.android.socialbase.downloader.dq.dq.dq();
        com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
        this.r = dq;
        boolean z = dq.dq("sync_strategy", 0) == 1;
        this.le = z;
        if (z) {
            long dq2 = dq.dq("sync_interval_ms_fg", MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
            long dq3 = dq.dq("sync_interval_ms_bg", 1000);
            this.k = Math.max(dq2, 500L);
            this.wp = Math.max(dq3, 500L);
        } else {
            this.k = 0L;
            this.wp = 0L;
        }
        this.f9366e = dq.d("monitor_rw") == 1;
        this.gh = com.ss.android.socialbase.downloader.kk.dq.dq(65536);
    }

    private boolean d(long j, long j2) {
        return j > 65536 && j2 > 500;
    }

    private com.ss.android.socialbase.downloader.s.d dq(InputStream inputStream) {
        int ce = ox.ce();
        if (this.r.dq("rw_concurrent", 0) == 1 && this.ox.getChunkCount() == 1 && this.ox.getTotalBytes() > 20971520) {
            try {
                com.ss.android.socialbase.downloader.s.dq dqVar = new com.ss.android.socialbase.downloader.s.dq(inputStream, ce, this.r.dq("rw_concurrent_max_buffer_count", 4));
                this.kx = true;
                return dqVar;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        com.ss.android.socialbase.downloader.s.ox oxVar = new com.ss.android.socialbase.downloader.s.ox(inputStream, ce);
        this.kx = false;
        return oxVar;
    }

    private void dq(o oVar) {
        mp mpVar;
        o oVar2;
        if (oVar == null) {
            return;
        }
        boolean z = oVar instanceof com.ss.android.socialbase.downloader.d.s;
        if (z) {
            mpVar = com.ss.android.socialbase.downloader.impls.ig.dq(com.ss.android.socialbase.downloader.kk.iw.d());
            if (mpVar == null) {
                return;
            }
        } else {
            mpVar = null;
        }
        mp mpVar2 = mpVar;
        com.ss.android.socialbase.downloader.model.d s = this.s.p() ? this.s.s() : this.s;
        if (s == null) {
            if (this.s.p()) {
                if (!z || mpVar2 == null) {
                    oVar.dq(this.s.no(), this.s.gh(), this.jy);
                    return;
                } else {
                    mpVar2.dq(this.s.no(), this.s.gh(), this.jy);
                    return;
                }
            }
            return;
        }
        s.d(this.jy);
        if (!z || mpVar2 == null) {
            oVar2 = oVar;
            oVar2.dq(s.no(), s.gh(), s.d(), this.jy);
        } else {
            mpVar2.dq(s.no(), s.gh(), s.d(), this.jy);
            oVar2 = oVar;
        }
        if (s.ia()) {
            if (s.kk()) {
                long o = s.o();
                if (o > this.jy) {
                    if (!z || mpVar2 == null) {
                        oVar2.dq(s.no(), s.d(), o);
                        return;
                    } else {
                        mpVar2.dq(s.no(), s.d(), o);
                        return;
                    }
                }
            }
            if (!z || mpVar2 == null) {
                oVar2.dq(s.no(), s.d(), this.jy);
            } else {
                mpVar2.dq(s.no(), s.d(), this.jy);
            }
        }
    }

    private void dq(boolean z) {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = uptimeMillis - this.ir;
        if (this.le) {
            if (j <= (this.i.d() ? this.k : this.wp)) {
                return;
            }
        } else {
            long j2 = this.jy - this.op;
            if (!z && !d(j2, j)) {
                return;
            }
        }
        ia();
        this.ir = uptimeMillis;
    }

    private void ia() {
        long nanoTime = this.f9366e ? System.nanoTime() : 0L;
        try {
            this.o.dq();
            this.ox.updateRealDownloadTime(true);
            boolean z = this.ox.getChunkCount() > 1;
            mp dq = com.ss.android.socialbase.downloader.impls.ig.dq(com.ss.android.socialbase.downloader.kk.iw.d());
            if (z) {
                dq(this.kk);
                if (dq != null) {
                    dq.ox(this.ox);
                } else {
                    this.kk.dq(this.ox.getId(), this.ox.getCurBytes());
                }
            } else if (dq != null) {
                dq.ox(this.ox);
            } else {
                this.kk.dq(this.s.no(), this.jy);
            }
            this.op = this.jy;
        } catch (Exception unused) {
        }
        if (this.f9366e) {
            this.bl += System.nanoTime() - nanoTime;
        }
    }

    private boolean iw() {
        return this.ig || this.mp;
    }

    private void mn() {
        ExecutorService ig;
        if (this.iw == null || (ig = ox.ig()) == null) {
            return;
        }
        ig.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.s.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.iw.p();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void d() {
        if (this.ig) {
            return;
        }
        this.ig = true;
        mn();
    }

    public long dq() {
        return this.jy;
    }

    public void dq(long j, long j2) {
        this.fw = j;
        this.cd = j2;
    }

    public void dq(long j, long j2, long j3) {
        this.jy = j;
        this.f9367f = j;
        this.fw = j2;
        this.cd = j3;
    }

    public void ox() {
        if (this.mp) {
            return;
        }
        synchronized (this.q) {
            this.mp = true;
        }
        mn();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x04bf A[Catch: all -> 0x049b, TRY_LEAVE, TryCatch #31 {all -> 0x049b, blocks: (B:269:0x0498, B:270:0x049a, B:150:0x04a6, B:152:0x04bf, B:188:0x0514, B:190:0x051a, B:191:0x051d, B:192:0x051f, B:234:0x0397), top: B:8:0x0028, inners: #32 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x051a A[Catch: all -> 0x049b, TryCatch #31 {all -> 0x049b, blocks: (B:269:0x0498, B:270:0x049a, B:150:0x04a6, B:152:0x04bf, B:188:0x0514, B:190:0x051a, B:191:0x051d, B:192:0x051f, B:234:0x0397), top: B:8:0x0028, inners: #32 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0388 A[Catch: all -> 0x0392, TRY_ENTER, TryCatch #24 {all -> 0x0392, blocks: (B:197:0x031e, B:230:0x0388, B:232:0x038e, B:234:0x0397), top: B:196:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x042b  */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v23 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void p() throws BaseException {
        ?? r33;
        long j;
        long j2;
        boolean z;
        char c2;
        com.ss.android.socialbase.downloader.s.d dVar;
        com.ss.android.socialbase.downloader.s.d dVar2;
        long j3;
        char c3;
        int i;
        char c4;
        char c5;
        DownloadInfo downloadInfo;
        int i2;
        InputStream dq;
        long j4;
        long j5;
        long currentTimeMillis;
        long j6;
        long j7;
        long j8;
        if (iw() || this.s == null) {
            return;
        }
        long dq2 = com.ss.android.socialbase.downloader.kk.iw.dq(this.iw);
        if (dq2 == 0) {
            throw new com.ss.android.socialbase.downloader.exception.iw(1004, "the content-length is 0");
        }
        long ig = this.s.ig();
        long nanoTime = System.nanoTime();
        boolean z2 = this.f9366e;
        int i3 = 1;
        char c6 = 0;
        try {
            try {
                try {
                    downloadInfo = this.ox;
                    try {
                        j = 0;
                    } catch (BaseException e2) {
                        e = e2;
                        j2 = nanoTime;
                        z = z2;
                    }
                } catch (BaseException e3) {
                    e = e3;
                    j2 = nanoTime;
                    z = z2;
                    c2 = 0;
                    dVar = null;
                }
            } catch (Throwable th) {
                th = th;
                j = 0;
            }
            try {
                try {
                    i2 = -1;
                    com.ss.android.socialbase.downloader.model.s dq3 = com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo, downloadInfo.getTempPath(), this.ox.getTempName(), this.r.dq("flush_buffer_size_byte", -1));
                    this.o = dq3;
                    try {
                        dq3.dq(this.jy);
                        dq = this.iw.dq();
                    } catch (IOException e4) {
                        throw new BaseException(1054, e4);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    j3 = ig;
                    j2 = nanoTime;
                    z = z2;
                    c3 = 0;
                    i = 1;
                    dVar2 = null;
                    try {
                        com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: e = ".concat(String.valueOf(th)));
                        if (!iw()) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        r33 = 0;
                        com.ss.android.socialbase.downloader.network.kk kkVar = this.iw;
                        if (kkVar != null) {
                            kkVar.p();
                        }
                        if (dVar2 != null) {
                            dVar2.d();
                        }
                        try {
                            if (this.gh) {
                                synchronized (this.q) {
                                    try {
                                        if (!this.mp) {
                                            dq(this.ia);
                                            if (this.o != null) {
                                                ia();
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            } else {
                                dq(this.ia);
                                if (this.o != null) {
                                    ia();
                                }
                            }
                            Closeable[] closeableArr = new Closeable[1];
                            closeableArr[r33] = this.o;
                            com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr);
                            this.n = System.nanoTime() - j2;
                            com.ss.android.socialbase.downloader.p.dq.dq(this.r, this.ox, this.p, this.iw, this.ig, this.mp, this.no, this.jy - this.f9367f, this.n, z, this.h, this.ji, this.bl, null);
                            throw th;
                        } finally {
                            Closeable[] closeableArr2 = new Closeable[1];
                            closeableArr2[r33] = this.o;
                            com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr2);
                        }
                    }
                }
            } catch (BaseException e5) {
                e = e5;
                dVar = null;
                c2 = 0;
                com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: BaseException e = ".concat(String.valueOf(e)));
                if (this.r.dq("ignore_base_ex_on_stop_status")) {
                }
                if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                }
                this.no = e;
                throw e;
            } catch (Throwable th4) {
                th = th4;
                dVar2 = null;
                com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: e = ".concat(String.valueOf(th)));
                if (!iw()) {
                }
            }
            if (dq == null) {
                throw new BaseException(1042, new IOException("inputStream is null"));
            }
            this.ox.updateRealStartDownloadTime();
            com.ss.android.socialbase.downloader.s.d dq4 = dq(dq);
            try {
                this.ox.setIsRwConcurrent(this.kx);
                this.dq = this.ox.getOpenLimitSpeed();
                long j9 = com.ss.android.socialbase.downloader.constants.s.p;
                j4 = com.ss.android.socialbase.downloader.constants.s.s;
                j5 = j9 / (1000 / j4);
                currentTimeMillis = System.currentTimeMillis();
                j6 = 0;
                j7 = 0;
            } catch (BaseException e6) {
                e = e6;
                j2 = nanoTime;
                z = z2;
            } catch (Throwable th5) {
                th = th5;
                j3 = ig;
                j2 = nanoTime;
                z = z2;
            }
            while (!iw()) {
                long j10 = j6;
                z = z2;
                if (z) {
                    try {
                        j10 = System.nanoTime();
                    } catch (BaseException e7) {
                        e = e7;
                        dVar = dq4;
                        j2 = nanoTime;
                        c2 = 0;
                        com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: BaseException e = ".concat(String.valueOf(e)));
                        if (this.r.dq("ignore_base_ex_on_stop_status")) {
                        }
                        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                        }
                        this.no = e;
                        throw e;
                    } catch (Throwable th6) {
                        th = th6;
                        dVar2 = dq4;
                        j3 = ig;
                        j2 = nanoTime;
                        c3 = 0;
                        i = 1;
                        com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: e = ".concat(String.valueOf(th)));
                        if (!iw()) {
                        }
                    }
                }
                try {
                    com.ss.android.socialbase.downloader.iw.dq dq5 = dq4.dq();
                    if (z) {
                        this.h = (System.nanoTime() - j10) + this.h;
                    }
                    int i4 = dq5.ox;
                    if (i4 != i2) {
                        try {
                            try {
                                if (this.ox.isIgnoreDataVerify()) {
                                    j3 = ig;
                                    j2 = nanoTime;
                                } else {
                                    j3 = ig;
                                    try {
                                        j2 = nanoTime;
                                    } catch (Throwable th7) {
                                        th = th7;
                                        j2 = nanoTime;
                                        dVar2 = dq4;
                                        c3 = 0;
                                        i = 1;
                                        com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: e = ".concat(String.valueOf(th)));
                                        if (!iw()) {
                                            com.ss.android.socialbase.downloader.network.kk kkVar2 = this.iw;
                                            if (kkVar2 != null) {
                                                kkVar2.p();
                                            }
                                            if (dVar2 != null) {
                                                dVar2.d();
                                            }
                                            try {
                                                if (this.gh) {
                                                    synchronized (this.q) {
                                                        try {
                                                            if (!this.mp) {
                                                                dq(this.ia);
                                                                if (this.o != null) {
                                                                    ia();
                                                                }
                                                            }
                                                        } finally {
                                                        }
                                                    }
                                                } else {
                                                    dq(this.ia);
                                                    if (this.o != null) {
                                                        ia();
                                                    }
                                                }
                                                Closeable[] closeableArr3 = new Closeable[i];
                                                closeableArr3[c3] = this.o;
                                                com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr3);
                                                this.n = System.nanoTime() - j2;
                                                com.ss.android.socialbase.downloader.p.dq.dq(this.r, this.ox, this.p, this.iw, this.ig, this.mp, this.no, this.jy - this.f9367f, this.n, z, this.h, this.ji, this.bl, null);
                                            } finally {
                                                Closeable[] closeableArr4 = new Closeable[i];
                                                closeableArr4[c3] = this.o;
                                                com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr4);
                                            }
                                        }
                                        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                            th.printStackTrace();
                                        }
                                        try {
                                            com.ss.android.socialbase.downloader.kk.iw.dq(th, "ResponseHandler");
                                            com.ss.android.socialbase.downloader.network.kk kkVar3 = this.iw;
                                            if (kkVar3 != null) {
                                                kkVar3.p();
                                            }
                                            if (dVar2 != null) {
                                                dVar2.d();
                                            }
                                            try {
                                                if (this.gh) {
                                                    synchronized (this.q) {
                                                        try {
                                                            if (!this.mp) {
                                                                dq(this.ia);
                                                                if (this.o != null) {
                                                                    ia();
                                                                }
                                                            }
                                                        } finally {
                                                        }
                                                    }
                                                } else {
                                                    dq(this.ia);
                                                    if (this.o != null) {
                                                        ia();
                                                    }
                                                }
                                                Closeable[] closeableArr5 = new Closeable[i];
                                                closeableArr5[c3] = this.o;
                                                com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr5);
                                                this.n = System.nanoTime() - j2;
                                                c4 = 0;
                                                c5 = 1;
                                                com.ss.android.socialbase.downloader.p.dq.dq(this.r, this.ox, this.p, this.iw, this.ig, this.mp, this.no, this.jy - this.f9367f, this.n, z, this.h, this.ji, this.bl, null);
                                                if (this.ox.isIgnoreDataVerify()) {
                                                }
                                            } catch (Throwable th8) {
                                                com.ss.android.socialbase.downloader.kk.iw.dq(this.o);
                                                throw th8;
                                            }
                                        } catch (BaseException e8) {
                                            this.no = e8;
                                            throw e8;
                                        }
                                    }
                                    try {
                                        if (this.cd > this.jy - this.f9367f && this.cd < (this.jy - this.f9367f) + i4) {
                                            i4 = (int) (this.cd - (this.jy - this.f9367f));
                                        }
                                    } catch (BaseException e9) {
                                        e = e9;
                                        dVar = dq4;
                                        c2 = 0;
                                        com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: BaseException e = ".concat(String.valueOf(e)));
                                        if (this.r.dq("ignore_base_ex_on_stop_status") || !iw()) {
                                            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                                e.printStackTrace();
                                            }
                                            this.no = e;
                                            throw e;
                                        }
                                        com.ss.android.socialbase.downloader.network.kk kkVar4 = this.iw;
                                        if (kkVar4 != null) {
                                            kkVar4.p();
                                        }
                                        if (dVar != null) {
                                            dVar.d();
                                        }
                                        try {
                                            if (this.gh) {
                                                synchronized (this.q) {
                                                    try {
                                                        if (!this.mp) {
                                                            dq(this.ia);
                                                            if (this.o != null) {
                                                                ia();
                                                            }
                                                        }
                                                    } finally {
                                                    }
                                                }
                                            } else {
                                                dq(this.ia);
                                                if (this.o != null) {
                                                    ia();
                                                }
                                            }
                                            Closeable[] closeableArr6 = new Closeable[1];
                                            closeableArr6[c2] = this.o;
                                            com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr6);
                                            this.n = System.nanoTime() - j2;
                                            com.ss.android.socialbase.downloader.p.dq.dq(this.r, this.ox, this.p, this.iw, this.ig, this.mp, this.no, this.jy - this.f9367f, this.n, z, this.h, this.ji, this.bl, null);
                                        } finally {
                                            Closeable[] closeableArr7 = new Closeable[1];
                                            closeableArr7[c2] = this.o;
                                            com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr7);
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        dVar2 = dq4;
                                        c3 = 0;
                                        i = 1;
                                        com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: e = ".concat(String.valueOf(th)));
                                        if (!iw()) {
                                        }
                                    }
                                }
                                if (z) {
                                    j10 = System.nanoTime();
                                }
                                this.o.dq(dq5.dq, 0, i4);
                                if (z) {
                                    this.ji = (System.nanoTime() - j10) + this.ji;
                                }
                                dq4.dq(dq5);
                                long j11 = i4;
                                this.jy += j11;
                                j7 += j11;
                                synchronized (this.q) {
                                    try {
                                        if (this.gh) {
                                            if (!this.mp) {
                                            }
                                        }
                                        boolean d2 = this.q.d(j11);
                                        dq(this.ia);
                                        dq(d2);
                                    } finally {
                                    }
                                }
                                if (!this.ox.isDownloadWithWifiValid()) {
                                    throw new com.ss.android.socialbase.downloader.exception.ox();
                                }
                                if (!this.ox.isPauseReserveWithWifiValid()) {
                                    throw new com.ss.android.socialbase.downloader.exception.s();
                                }
                                j8 = j8;
                                if (!this.ox.isIgnoreDataVerify()) {
                                    j8 = j8;
                                    if (this.cd >= 0) {
                                        long j12 = this.cd;
                                        j8 = j12;
                                        if (j12 <= this.jy - this.f9367f) {
                                        }
                                    }
                                }
                                if (this.dq && j7 > j5) {
                                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                                    if (currentTimeMillis2 < j4) {
                                        try {
                                            Thread.sleep(j4 - currentTimeMillis2);
                                        } catch (InterruptedException e10) {
                                            e10.printStackTrace();
                                        }
                                    }
                                    currentTimeMillis = System.currentTimeMillis();
                                    j7 = 0;
                                }
                                z2 = z;
                                j6 = j10;
                                nanoTime = j2;
                                ig = j3;
                                i3 = 1;
                                c6 = 0;
                                i2 = -1;
                            } catch (Throwable th10) {
                                th = th10;
                                j3 = ig;
                            }
                        } catch (BaseException e11) {
                            e = e11;
                            j2 = nanoTime;
                        }
                    } else {
                        j3 = ig;
                        j2 = nanoTime;
                    }
                    com.ss.android.socialbase.downloader.network.kk kkVar5 = this.iw;
                    if (kkVar5 != null) {
                        kkVar5.p();
                    }
                    dq4.d();
                    try {
                        if (this.gh) {
                            synchronized (this.q) {
                                try {
                                    if (!this.mp) {
                                        dq(this.ia);
                                        if (this.o != null) {
                                            ia();
                                        }
                                    }
                                } finally {
                                }
                            }
                        } else {
                            dq(this.ia);
                            if (this.o != null) {
                                ia();
                            }
                        }
                        com.ss.android.socialbase.downloader.kk.iw.dq(this.o);
                        this.n = System.nanoTime() - j2;
                        com.ss.android.socialbase.downloader.p.dq.dq(this.r, this.ox, this.p, this.iw, this.ig, this.mp, this.no, this.jy - this.f9367f, this.n, z, this.h, this.ji, this.bl, null);
                        c5 = 1;
                        c4 = 0;
                    } catch (Throwable th11) {
                        com.ss.android.socialbase.downloader.kk.iw.dq(this.o);
                        throw th11;
                    }
                } catch (BaseException e12) {
                    e = e12;
                    j2 = nanoTime;
                    dVar = dq4;
                    c2 = 0;
                    com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: BaseException e = ".concat(String.valueOf(e)));
                    if (this.r.dq("ignore_base_ex_on_stop_status")) {
                    }
                    if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                    }
                    this.no = e;
                    throw e;
                } catch (Throwable th12) {
                    th = th12;
                    j3 = ig;
                    j2 = nanoTime;
                    c3 = 0;
                    i = 1;
                    dVar2 = dq4;
                    com.ss.android.socialbase.downloader.ox.dq.p(f9365d, "handleResponse: e = ".concat(String.valueOf(th)));
                    if (!iw()) {
                    }
                }
                if (this.ox.isIgnoreDataVerify()) {
                    long j13 = this.jy - this.f9367f;
                    if (j13 < j || this.cd < j || this.cd == j13) {
                        return;
                    }
                    Long valueOf = Long.valueOf(j13);
                    Long valueOf2 = Long.valueOf(dq2);
                    Long valueOf3 = Long.valueOf(this.cd);
                    Long valueOf4 = Long.valueOf(j3);
                    Long valueOf5 = Long.valueOf(this.fw);
                    Long valueOf6 = Long.valueOf(this.jy);
                    Long valueOf7 = Long.valueOf(this.f9367f);
                    Object[] objArr = new Object[7];
                    objArr[c4] = valueOf;
                    objArr[c5] = valueOf2;
                    objArr[2] = valueOf3;
                    objArr[3] = valueOf4;
                    objArr[4] = valueOf5;
                    objArr[5] = valueOf6;
                    objArr[6] = valueOf7;
                    throw new BaseException(1051, String.format("handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d", objArr));
                }
                return;
            }
            com.ss.android.socialbase.downloader.network.kk kkVar6 = this.iw;
            if (kkVar6 != null) {
                kkVar6.p();
            }
            if (dq4 != null) {
                dq4.d();
            }
            try {
                if (this.gh) {
                    synchronized (this.q) {
                        try {
                            if (!this.mp) {
                                dq(this.ia);
                                if (this.o != null) {
                                    ia();
                                }
                            }
                        } finally {
                        }
                    }
                } else {
                    dq(this.ia);
                    if (this.o != null) {
                        ia();
                    }
                }
                Closeable[] closeableArr8 = new Closeable[i3];
                closeableArr8[c6] = this.o;
                com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr8);
                this.n = System.nanoTime() - nanoTime;
                z = z2;
                com.ss.android.socialbase.downloader.p.dq.dq(this.r, this.ox, this.p, this.iw, this.ig, this.mp, this.no, this.jy - this.f9367f, this.n, z, this.h, this.ji, this.bl, null);
            } finally {
                Closeable[] closeableArr9 = new Closeable[i3];
                closeableArr9[c6] = this.o;
                com.ss.android.socialbase.downloader.kk.iw.dq(closeableArr9);
            }
        } catch (Throwable th13) {
            th = th13;
            r33 = j8;
        }
    }

    public long s() {
        return this.op;
    }
}
