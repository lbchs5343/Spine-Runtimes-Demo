package com.ss.android.socialbase.downloader.s;

import android.os.Process;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.iw.f;
import com.ss.android.socialbase.downloader.kk.iw;
import java.io.InputStream;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class dq implements d {

    /* renamed from: d, reason: collision with root package name */
    private final int f9469d;
    private final InputStream dq;

    /* renamed from: f, reason: collision with root package name */
    private int f9470f;
    private com.ss.android.socialbase.downloader.iw.dq ia;
    private volatile boolean ig;
    private com.ss.android.socialbase.downloader.iw.dq iw;
    private volatile Future jy;
    private com.ss.android.socialbase.downloader.iw.dq kk;
    private com.ss.android.socialbase.downloader.iw.dq mn;
    private volatile boolean mp;
    private com.ss.android.socialbase.downloader.iw.dq no;
    private com.ss.android.socialbase.downloader.iw.dq o;
    private final int ox;
    private volatile Throwable q;
    private final Object p = new Object();
    private final Object s = new Object();
    private final Runnable fw = new Runnable() { // from class: com.ss.android.socialbase.downloader.s.dq.1
        @Override // java.lang.Runnable
        public void run() {
            com.ss.android.socialbase.downloader.iw.dq p;
            Process.setThreadPriority(10);
            do {
                try {
                    p = dq.this.p();
                    p.ox = dq.this.dq.read(p.dq);
                    dq.this.ox(p);
                } catch (Throwable th) {
                    try {
                        dq.this.q = th;
                        th.printStackTrace();
                        synchronized (dq.this.s) {
                            dq.this.mp = true;
                            dq.this.s.notify();
                            iw.dq(dq.this.dq);
                            return;
                        }
                    } catch (Throwable th2) {
                        synchronized (dq.this.s) {
                            dq.this.mp = true;
                            dq.this.s.notify();
                            iw.dq(dq.this.dq);
                            throw th2;
                        }
                    }
                }
            } while (p.ox != -1);
            synchronized (dq.this.s) {
                dq.this.mp = true;
                dq.this.s.notify();
            }
            iw.dq(dq.this.dq);
        }
    };

    public dq(InputStream inputStream, int i, int i2) throws Throwable {
        this.dq = inputStream;
        this.f9469d = i;
        if (i2 <= 0) {
            i2 = 1;
        } else if (i2 > 64) {
            i2 = 64;
        }
        this.ox = i2;
        ox();
    }

    private void d(com.ss.android.socialbase.downloader.iw.dq dqVar) {
        synchronized (this.p) {
            try {
                com.ss.android.socialbase.downloader.iw.dq dqVar2 = this.mn;
                if (dqVar2 == null) {
                    this.mn = dqVar;
                    this.iw = dqVar;
                    this.p.notify();
                } else {
                    dqVar2.p = dqVar;
                    this.mn = dqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void iw() throws BaseException {
        Throwable th = this.q;
        if (th != null) {
            if (th instanceof f) {
                throw new BaseException(1068, "async reader closed!");
            }
            iw.dq(th, "async_read");
        }
        throw new BaseException(1069, "async reader terminated!");
    }

    private void ox() throws Throwable {
        this.jy = com.ss.android.socialbase.downloader.downloader.ox.fw().submit(this.fw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(com.ss.android.socialbase.downloader.iw.dq dqVar) {
        synchronized (this.s) {
            try {
                com.ss.android.socialbase.downloader.iw.dq dqVar2 = this.o;
                if (dqVar2 == null) {
                    this.o = dqVar;
                    this.kk = dqVar;
                    this.s.notify();
                } else {
                    dqVar2.p = dqVar;
                    this.o = dqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ss.android.socialbase.downloader.iw.dq p() throws f, InterruptedException {
        int i;
        com.ss.android.socialbase.downloader.iw.dq dqVar = this.ia;
        if (dqVar != null) {
            if (this.ig) {
                throw new f("");
            }
            this.ia = dqVar.p;
            dqVar.p = null;
            return dqVar;
        }
        synchronized (this.p) {
            try {
                if (this.ig) {
                    throw new f("");
                }
                com.ss.android.socialbase.downloader.iw.dq dqVar2 = this.iw;
                if (dqVar2 == null && (i = this.f9470f) < this.ox) {
                    this.f9470f = i + 1;
                    return new com.ss.android.socialbase.downloader.iw.dq(this.f9469d);
                }
                while (dqVar2 == null) {
                    this.p.wait();
                    if (this.ig) {
                        throw new f("");
                    }
                    dqVar2 = this.iw;
                }
                this.ia = dqVar2.p;
                this.mn = null;
                this.iw = null;
                dqVar2.p = null;
                return dqVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private com.ss.android.socialbase.downloader.iw.dq s() throws BaseException, InterruptedException {
        com.ss.android.socialbase.downloader.iw.dq dqVar;
        com.ss.android.socialbase.downloader.iw.dq dqVar2 = this.no;
        if (dqVar2 != null) {
            this.no = dqVar2.p;
            dqVar2.p = null;
            return dqVar2;
        }
        synchronized (this.s) {
            try {
                dqVar = this.kk;
                if (dqVar == null) {
                    do {
                        if (this.mp) {
                            iw();
                        }
                        this.s.wait();
                        dqVar = this.kk;
                    } while (dqVar == null);
                }
                this.no = dqVar.p;
                this.o = null;
                this.kk = null;
                dqVar.p = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dqVar;
    }

    @Override // com.ss.android.socialbase.downloader.s.d
    public void d() {
        synchronized (this.p) {
            this.ig = true;
            this.p.notify();
        }
        Future future = this.jy;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable unused) {
            }
            this.jy = null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.s.d
    public com.ss.android.socialbase.downloader.iw.dq dq() throws BaseException, InterruptedException {
        return s();
    }

    @Override // com.ss.android.socialbase.downloader.s.d
    public void dq(com.ss.android.socialbase.downloader.iw.dq dqVar) {
        d(dqVar);
    }
}
