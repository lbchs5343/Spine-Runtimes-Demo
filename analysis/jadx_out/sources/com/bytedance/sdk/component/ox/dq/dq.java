package com.bytedance.sdk.component.ox.dq;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class dq extends r {

    /* renamed from: d, reason: collision with root package name */
    private static final long f2149d;
    static dq dq;
    private static final long p;
    private dq iw;
    private long mn;
    private boolean s;

    /* renamed from: com.bytedance.sdk.component.ox.dq.dq$dq, reason: collision with other inner class name */
    public static final class C0129dq extends com.bytedance.sdk.component.o.p.ox {
        public C0129dq() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0017, code lost:
        
            r1.G_();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                try {
                } catch (InterruptedException unused) {
                    continue;
                } catch (Throwable unused2) {
                    return;
                }
                synchronized (dq.class) {
                    try {
                        dq p = dq.p();
                        if (p != null) {
                            if (p == dq.dq) {
                                dq.dq = null;
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f2149d = millis;
        p = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private long d(long j) {
        return this.mn - j;
    }

    private static synchronized void dq(dq dqVar, long j, boolean z) {
        synchronized (dq.class) {
            if (dq == null) {
                dq = new dq();
                C0129dq c0129dq = new C0129dq();
                c0129dq.setName("csj_watch_dog");
                try {
                    c0129dq.start();
                } catch (Throwable unused) {
                }
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                dqVar.mn = Math.min(j, dqVar.I_() - nanoTime) + nanoTime;
            } else if (j != 0) {
                dqVar.mn = j + nanoTime;
            } else {
                if (!z) {
                    throw new AssertionError();
                }
                dqVar.mn = dqVar.I_();
            }
            long d2 = dqVar.d(nanoTime);
            dq dqVar2 = dq;
            while (true) {
                dq dqVar3 = dqVar2.iw;
                if (dqVar3 == null || d2 < dqVar3.d(nanoTime)) {
                    break;
                } else {
                    dqVar2 = dqVar2.iw;
                }
            }
            dqVar.iw = dqVar2.iw;
            dqVar2.iw = dqVar;
            if (dqVar2 == dq) {
                dq.class.notify();
            }
        }
    }

    private static synchronized boolean dq(dq dqVar) {
        synchronized (dq.class) {
            dq dqVar2 = dq;
            while (dqVar2 != null) {
                dq dqVar3 = dqVar2.iw;
                if (dqVar3 == dqVar) {
                    dqVar2.iw = dqVar.iw;
                    dqVar.iw = null;
                    return false;
                }
                dqVar2 = dqVar3;
            }
            return true;
        }
    }

    public static dq p() throws InterruptedException {
        dq dqVar = dq.iw;
        if (dqVar == null) {
            long nanoTime = System.nanoTime();
            dq.class.wait(f2149d);
            if (dq.iw != null || System.nanoTime() - nanoTime < p) {
                return null;
            }
            return dq;
        }
        long d2 = dqVar.d(System.nanoTime());
        if (d2 > 0) {
            long j = d2 / C.MICROS_PER_SECOND;
            dq.class.wait(j, (int) (d2 - (C.MICROS_PER_SECOND * j)));
            return null;
        }
        dq.iw = dqVar.iw;
        dqVar.iw = null;
        return dqVar;
    }

    public void G_() {
    }

    public IOException d(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final boolean d() {
        if (!this.s) {
            return false;
        }
        this.s = false;
        return dq(this);
    }

    public final cd dq(final cd cdVar) {
        return new cd() { // from class: com.bytedance.sdk.component.ox.dq.dq.1
            @Override // com.bytedance.sdk.component.ox.dq.cd
            public void a_(ox oxVar, long j) throws IOException {
                try {
                    i.dq(oxVar.f2161d, 0L, j);
                    long j2 = j;
                    while (true) {
                        long j3 = 0;
                        if (j2 <= 0) {
                            return;
                        }
                        jy jyVar = oxVar.dq;
                        while (true) {
                            if (j3 >= 65536) {
                                break;
                            }
                            j3 += jyVar.ox - jyVar.f2157d;
                            if (j3 >= j2) {
                                j3 = j2;
                                break;
                            }
                            jyVar = jyVar.iw;
                        }
                        dq.this.dq();
                        try {
                            try {
                                cdVar.a_(oxVar, j3);
                                j2 -= j3;
                                dq.this.dq(true);
                            } catch (IOException e2) {
                                throw dq.this.dq(e2);
                            }
                        } catch (Throwable th) {
                            dq.this.dq(false);
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    throw new IOException(e3);
                }
            }

            @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                dq.this.dq();
                try {
                    try {
                        cdVar.close();
                        dq.this.dq(true);
                    } catch (IOException e2) {
                        throw dq.this.dq(e2);
                    }
                } catch (Throwable th) {
                    dq.this.dq(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.component.ox.dq.cd
            public r dq() {
                return dq.this;
            }

            @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
            public void flush() throws IOException {
                dq.this.dq();
                try {
                    try {
                        cdVar.flush();
                        dq.this.dq(true);
                    } catch (IOException e2) {
                        throw dq.this.dq(e2);
                    }
                } catch (Throwable th) {
                    dq.this.dq(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.sink(" + cdVar + ")";
            }
        };
    }

    public final gh dq(final gh ghVar) {
        return new gh() { // from class: com.bytedance.sdk.component.ox.dq.dq.2
            @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                dq.this.dq();
                try {
                    try {
                        ghVar.close();
                        dq.this.dq(true);
                    } catch (IOException e2) {
                        throw dq.this.dq(e2);
                    }
                } catch (Throwable th) {
                    dq.this.dq(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.component.ox.dq.gh
            public long dq(ox oxVar, long j) throws IOException {
                dq.this.dq();
                try {
                    try {
                        long dq2 = ghVar.dq(oxVar, j);
                        dq.this.dq(true);
                        return dq2;
                    } catch (IOException e2) {
                        throw dq.this.dq(e2);
                    }
                } catch (Throwable th) {
                    dq.this.dq(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.component.ox.dq.gh
            public r dq() {
                return dq.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + ghVar + ")";
            }
        };
    }

    public final IOException dq(IOException iOException) throws IOException {
        return !d() ? iOException : d(iOException);
    }

    public final void dq() {
        if (this.s) {
            return;
        }
        long H_ = H_();
        boolean ox = ox();
        if (H_ != 0 || ox) {
            this.s = true;
            dq(this, H_, ox);
        }
    }

    public final void dq(boolean z) throws IOException {
        if (d() && z) {
            throw d((IOException) null);
        }
    }
}
