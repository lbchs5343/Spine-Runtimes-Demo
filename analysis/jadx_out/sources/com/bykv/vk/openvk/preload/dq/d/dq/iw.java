package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.f;
import g.awf;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class iw extends com.bykv.vk.openvk.preload.dq.p.ox {
    private static final Writer iw = new Writer() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.iw.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final f mn = new f("closed");

    /* renamed from: d, reason: collision with root package name */
    public com.bykv.vk.openvk.preload.dq.no f590d;
    public final List<com.bykv.vk.openvk.preload.dq.no> dq;
    private String ia;

    public iw() {
        super(iw);
        this.dq = new ArrayList();
        this.f590d = com.bykv.vk.openvk.preload.dq.mp.dq;
    }

    private void dq(com.bykv.vk.openvk.preload.dq.no noVar) {
        if (this.ia != null) {
            if (!(noVar instanceof com.bykv.vk.openvk.preload.dq.mp) || this.s) {
                ((com.bykv.vk.openvk.preload.dq.q) iw()).dq(this.ia, noVar);
            }
            this.ia = null;
            return;
        }
        if (this.dq.isEmpty()) {
            this.f590d = noVar;
            return;
        }
        com.bykv.vk.openvk.preload.dq.no iw2 = iw();
        if (!(iw2 instanceof com.bykv.vk.openvk.preload.dq.kk)) {
            throw new IllegalStateException();
        }
        ((com.bykv.vk.openvk.preload.dq.kk) iw2).dq(noVar);
    }

    private com.bykv.vk.openvk.preload.dq.no iw() {
        return (com.bykv.vk.openvk.preload.dq.no) awf.q(1, this.dq);
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.dq.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.dq.add(mn);
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox d() throws IOException {
        if (this.dq.isEmpty() || this.ia != null) {
            throw new IllegalStateException();
        }
        if (!(iw() instanceof com.bykv.vk.openvk.preload.dq.kk)) {
            throw new IllegalStateException();
        }
        this.dq.remove(r0.size() - 1);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox d(String str) throws IOException {
        if (str == null) {
            return s();
        }
        dq(new f(str));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox dq() throws IOException {
        com.bykv.vk.openvk.preload.dq.kk kkVar = new com.bykv.vk.openvk.preload.dq.kk();
        dq(kkVar);
        this.dq.add(kkVar);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox dq(long j) throws IOException {
        dq(new f(Long.valueOf(j)));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox dq(Boolean bool) throws IOException {
        if (bool == null) {
            return s();
        }
        dq(new f(bool));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox dq(Number number) throws IOException {
        if (number == null) {
            return s();
        }
        if (!this.ox) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        dq(new f(number));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox dq(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.dq.isEmpty() || this.ia != null) {
            throw new IllegalStateException();
        }
        if (!(iw() instanceof com.bykv.vk.openvk.preload.dq.q)) {
            throw new IllegalStateException();
        }
        this.ia = str;
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox dq(boolean z) throws IOException {
        dq(new f(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox, java.io.Flushable
    public final void flush() throws IOException {
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox ox() throws IOException {
        com.bykv.vk.openvk.preload.dq.q qVar = new com.bykv.vk.openvk.preload.dq.q();
        dq(qVar);
        this.dq.add(qVar);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox p() throws IOException {
        if (this.dq.isEmpty() || this.ia != null) {
            throw new IllegalStateException();
        }
        if (!(iw() instanceof com.bykv.vk.openvk.preload.dq.q)) {
            throw new IllegalStateException();
        }
        this.dq.remove(r0.size() - 1);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.ox
    public final com.bykv.vk.openvk.preload.dq.p.ox s() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.mp.dq);
        return this;
    }
}
