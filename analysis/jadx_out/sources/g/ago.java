package g;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class ago implements cbs {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10190a;

    /* renamed from: b, reason: collision with root package name */
    public final evq f10191b;

    /* renamed from: c, reason: collision with root package name */
    public final clq f10192c;

    public ago(evq evqVar) {
        bff.p(evqVar, "sink");
        this.f10191b = evqVar;
        this.f10192c = new clq();
    }

    @Override // g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        evq evqVar = this.f10191b;
        if (this.f10190a) {
            return;
        }
        try {
            clq clqVar = this.f10192c;
            long j = clqVar.f13080b;
            if (j > 0) {
                evqVar.f(clqVar, j);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            evqVar.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f10190a = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // g.cbs
    public final cbs d(int i, byte[] bArr) {
        bff.p(bArr, abn.EXTRA_SOURCE);
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.af(i, bArr);
        i();
        return this;
    }

    @Override // g.evq
    public final dme e() {
        return this.f10191b.e();
    }

    @Override // g.evq
    public final void f(clq clqVar, long j) {
        bff.p(clqVar, abn.EXTRA_SOURCE);
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.f(clqVar, j);
        i();
    }

    @Override // g.cbs, g.evq, java.io.Flushable
    public final void flush() {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        clq clqVar = this.f10192c;
        long j = clqVar.f13080b;
        evq evqVar = this.f10191b;
        if (j > 0) {
            evqVar.f(clqVar, j);
        }
        evqVar.flush();
    }

    @Override // g.cbs
    public final cbs g(gei geiVar) {
        bff.p(geiVar, "byteString");
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.o(geiVar);
        i();
        return this;
    }

    @Override // g.cbs
    public final clq h() {
        return this.f10192c;
    }

    public final cbs i() {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        clq clqVar = this.f10192c;
        long ao = clqVar.ao();
        if (ao > 0) {
            this.f10191b.f(clqVar, ao);
        }
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f10190a;
    }

    @Override // g.cbs
    public final cbs j(String str) {
        bff.p(str, "string");
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.ap(str);
        i();
        return this;
    }

    @Override // g.cbs
    public final cbs k(long j) {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.u(j);
        i();
        return this;
    }

    @Override // g.cbs
    public final cbs l(long j) {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.ag(j);
        i();
        return this;
    }

    public final String toString() {
        return "buffer(" + this.f10191b + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        bff.p(byteBuffer, abn.EXTRA_SOURCE);
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        int write = this.f10192c.write(byteBuffer);
        i();
        return write;
    }

    @Override // g.cbs
    public final cbs write(byte[] bArr) {
        bff.p(bArr, abn.EXTRA_SOURCE);
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.af(bArr.length, bArr);
        i();
        return this;
    }

    @Override // g.cbs
    public final cbs writeByte(int i) {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.al(i);
        i();
        return this;
    }

    @Override // g.cbs
    public final cbs writeInt(int i) {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.r(i);
        i();
        return this;
    }

    @Override // g.cbs
    public final cbs writeShort(int i) {
        if (this.f10190a) {
            throw new IllegalStateException("closed");
        }
        this.f10192c.ab(i);
        i();
        return this;
    }
}
