package com.bytedance.sdk.component.ox.d.dq.s;

import com.bytedance.sdk.component.ox.dq.cd;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.r;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class kk {
    static final /* synthetic */ boolean kk = true;

    /* renamed from: d, reason: collision with root package name */
    long f2090d;
    private boolean ig;
    private final d mp;
    private List<com.bytedance.sdk.component.ox.d.dq.s.ox> no;
    private final List<com.bytedance.sdk.component.ox.d.dq.s.ox> o;
    final int ox;
    final mn p;
    final dq s;
    long dq = 0;
    final ox iw = new ox();
    final ox mn = new ox();
    com.bytedance.sdk.component.ox.d.dq.s.d ia = null;

    public final class d implements gh {
        static final /* synthetic */ boolean ox = true;

        /* renamed from: d, reason: collision with root package name */
        boolean f2091d;
        boolean dq;
        private final long mn;
        private final com.bytedance.sdk.component.ox.dq.ox s = new com.bytedance.sdk.component.ox.dq.ox();
        private final com.bytedance.sdk.component.ox.dq.ox iw = new com.bytedance.sdk.component.ox.dq.ox();

        public d(long j) {
            this.mn = j;
        }

        private void d() throws IOException {
            kk.this.iw.dq();
            while (this.iw.d() == 0 && !this.f2091d && !this.dq) {
                try {
                    kk kkVar = kk.this;
                    if (kkVar.ia != null) {
                        break;
                    } else {
                        kkVar.ig();
                    }
                } finally {
                    kk.this.iw.ia();
                }
            }
        }

        private void ox() throws IOException {
            if (this.dq) {
                throw new IOException("stream closed");
            }
            if (kk.this.ia != null) {
                throw new jy(kk.this.ia);
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (kk.this) {
                this.dq = true;
                this.iw.cd();
                kk.this.notifyAll();
            }
            kk.this.o();
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            }
            synchronized (kk.this) {
                try {
                    d();
                    ox();
                    if (this.iw.d() == 0) {
                        return -1L;
                    }
                    com.bytedance.sdk.component.ox.dq.ox oxVar2 = this.iw;
                    long dq = oxVar2.dq(oxVar, Math.min(j, oxVar2.d()));
                    kk kkVar = kk.this;
                    long j2 = kkVar.dq + dq;
                    kkVar.dq = j2;
                    if (j2 >= kkVar.p.ig.p() / 2) {
                        kk kkVar2 = kk.this;
                        kkVar2.p.dq(kkVar2.ox, kkVar2.dq);
                        kk.this.dq = 0L;
                    }
                    synchronized (kk.this.p) {
                        try {
                            mn mnVar = kk.this.p;
                            long j3 = mnVar.o + dq;
                            mnVar.o = j3;
                            if (j3 >= mnVar.ig.p() / 2) {
                                mn mnVar2 = kk.this.p;
                                mnVar2.dq(0, mnVar2.o);
                                kk.this.p.o = 0L;
                            }
                        } finally {
                        }
                    }
                    return dq;
                } finally {
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh
        public r dq() {
            return kk.this.iw;
        }

        public void dq(com.bytedance.sdk.component.ox.dq.s sVar, long j) throws IOException {
            boolean z;
            boolean z2;
            if (!ox && Thread.holdsLock(kk.this)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (kk.this) {
                    z = this.f2091d;
                    z2 = this.iw.d() + j > this.mn;
                }
                if (z2) {
                    sVar.ia(j);
                    kk.this.d(com.bytedance.sdk.component.ox.d.dq.s.d.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    sVar.ia(j);
                    return;
                }
                long dq = sVar.dq(this.s, j);
                if (dq == -1) {
                    throw new EOFException();
                }
                j -= dq;
                synchronized (kk.this) {
                    try {
                        boolean z3 = this.iw.d() == 0;
                        this.iw.dq(this.s);
                        if (z3) {
                            kk.this.notifyAll();
                        }
                    } finally {
                    }
                }
            }
        }
    }

    public final class dq implements cd {
        static final /* synthetic */ boolean ox = true;

        /* renamed from: d, reason: collision with root package name */
        boolean f2092d;
        boolean dq;
        private final com.bytedance.sdk.component.ox.dq.ox s = new com.bytedance.sdk.component.ox.dq.ox();

        public dq() {
        }

        private void dq(boolean z) throws IOException {
            kk kkVar;
            long min;
            kk kkVar2;
            synchronized (kk.this) {
                kk.this.mn.dq();
                while (true) {
                    try {
                        kkVar = kk.this;
                        if (kkVar.f2090d > 0 || this.f2092d || this.dq || kkVar.ia != null) {
                            break;
                        } else {
                            kkVar.ig();
                        }
                    } finally {
                        kk.this.mn.ia();
                    }
                }
                kkVar.mn.ia();
                kk.this.no();
                min = Math.min(kk.this.f2090d, this.s.d());
                kkVar2 = kk.this;
                kkVar2.f2090d -= min;
            }
            kkVar2.mn.dq();
            try {
                kk kkVar3 = kk.this;
                kkVar3.p.dq(kkVar3.ox, z && min == this.s.d(), this.s, min);
                kk.this.mn.ia();
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd
        public void a_(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            if (!ox && Thread.holdsLock(kk.this)) {
                throw new AssertionError();
            }
            this.s.a_(oxVar, j);
            while (this.s.d() >= 16384) {
                dq(false);
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!ox && Thread.holdsLock(kk.this)) {
                throw new AssertionError();
            }
            synchronized (kk.this) {
                try {
                    if (this.dq) {
                        return;
                    }
                    if (!kk.this.s.f2092d) {
                        if (this.s.d() > 0) {
                            while (this.s.d() > 0) {
                                dq(true);
                            }
                        } else {
                            kk kkVar = kk.this;
                            kkVar.p.dq(kkVar.ox, true, (com.bytedance.sdk.component.ox.dq.ox) null, 0L);
                        }
                    }
                    synchronized (kk.this) {
                        this.dq = true;
                    }
                    kk.this.p.d();
                    kk.this.o();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd
        public r dq() {
            return kk.this.mn;
        }

        @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
        public void flush() throws IOException {
            if (!ox && Thread.holdsLock(kk.this)) {
                throw new AssertionError();
            }
            synchronized (kk.this) {
                kk.this.no();
            }
            while (this.s.d() > 0) {
                dq(false);
                kk.this.p.d();
            }
        }
    }

    public class ox extends com.bytedance.sdk.component.ox.dq.dq {
        public ox() {
        }

        @Override // com.bytedance.sdk.component.ox.dq.dq
        public void G_() {
            kk.this.d(com.bytedance.sdk.component.ox.d.dq.s.d.CANCEL);
        }

        @Override // com.bytedance.sdk.component.ox.dq.dq
        public IOException d(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void ia() throws IOException {
            if (d()) {
                throw d((IOException) null);
            }
        }
    }

    public kk(int i, mn mnVar, boolean z, boolean z2, List<com.bytedance.sdk.component.ox.d.dq.s.ox> list) {
        if (mnVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.ox = i;
        this.p = mnVar;
        this.f2090d = mnVar.mp.p();
        d dVar = new d(mnVar.ig.p());
        this.mp = dVar;
        dq dqVar = new dq();
        this.s = dqVar;
        dVar.f2091d = z2;
        dqVar.f2092d = z;
        this.o = list;
    }

    private boolean p(com.bytedance.sdk.component.ox.d.dq.s.d dVar) {
        if (!kk && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                if (this.ia != null) {
                    return false;
                }
                if (this.mp.f2091d && this.s.f2092d) {
                    return false;
                }
                this.ia = dVar;
                notifyAll();
                this.p.d(this.ox);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(com.bytedance.sdk.component.ox.d.dq.s.d dVar) {
        if (p(dVar)) {
            this.p.dq(this.ox, dVar);
        }
    }

    public synchronized boolean d() {
        try {
            if (this.ia != null) {
                return false;
            }
            d dVar = this.mp;
            if (!dVar.f2091d) {
                if (dVar.dq) {
                }
                return true;
            }
            dq dqVar = this.s;
            if (dqVar.f2092d || dqVar.dq) {
                if (this.ig) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int dq() {
        return this.ox;
    }

    public void dq(long j) {
        this.f2090d += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public void dq(com.bytedance.sdk.component.ox.d.dq.s.d dVar) throws IOException {
        if (p(dVar)) {
            this.p.d(this.ox, dVar);
        }
    }

    public void dq(com.bytedance.sdk.component.ox.dq.s sVar, int i) throws IOException {
        if (!kk && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.mp.dq(sVar, i);
    }

    public void dq(List<com.bytedance.sdk.component.ox.d.dq.s.ox> list) {
        boolean z;
        if (!kk && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = true;
            try {
                this.ig = true;
                if (this.no == null) {
                    this.no = list;
                    z = d();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.no);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.no = arrayList;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            return;
        }
        this.p.d(this.ox);
    }

    public cd ia() {
        synchronized (this) {
            try {
                if (!this.ig && !ox()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.s;
    }

    public void ig() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public r iw() {
        return this.mn;
    }

    public void kk() {
        boolean d2;
        if (!kk && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.mp.f2091d = true;
            d2 = d();
            notifyAll();
        }
        if (d2) {
            return;
        }
        this.p.d(this.ox);
    }

    public gh mn() {
        return this.mp;
    }

    public void no() throws IOException {
        dq dqVar = this.s;
        if (dqVar.dq) {
            throw new IOException("stream closed");
        }
        if (dqVar.f2092d) {
            throw new IOException("stream finished");
        }
        if (this.ia != null) {
            throw new jy(this.ia);
        }
    }

    public void o() throws IOException {
        boolean z;
        boolean d2;
        if (!kk && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                d dVar = this.mp;
                if (!dVar.f2091d && dVar.dq) {
                    dq dqVar = this.s;
                    if (!dqVar.f2092d) {
                        if (dqVar.dq) {
                        }
                    }
                    z = true;
                    d2 = d();
                }
                z = false;
                d2 = d();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            dq(com.bytedance.sdk.component.ox.d.dq.s.d.CANCEL);
        } else {
            if (d2) {
                return;
            }
            this.p.d(this.ox);
        }
    }

    public synchronized void ox(com.bytedance.sdk.component.ox.d.dq.s.d dVar) {
        if (this.ia == null) {
            this.ia = dVar;
            notifyAll();
        }
    }

    public boolean ox() {
        return this.p.f2094d == ((this.ox & 1) == 1);
    }

    public synchronized List<com.bytedance.sdk.component.ox.d.dq.s.ox> p() throws IOException {
        List<com.bytedance.sdk.component.ox.d.dq.s.ox> list;
        if (!ox()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.iw.dq();
        while (this.no == null && this.ia == null) {
            try {
                ig();
            } catch (Throwable th) {
                this.iw.ia();
                throw th;
            }
        }
        this.iw.ia();
        list = this.no;
        if (list == null) {
            throw new jy(this.ia);
        }
        this.no = null;
        return list;
    }

    public r s() {
        return this.iw;
    }
}
