package g;

/* loaded from: classes3.dex */
public final class fax implements evq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gnb f16494a;

    /* renamed from: b, reason: collision with root package name */
    public final gpq f16495b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16496c;

    public fax(gnb gnbVar) {
        this.f16494a = gnbVar;
        this.f16495b = new gpq(((cbs) gnbVar.j).e());
    }

    @Override // g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final synchronized void close() {
        if (this.f16496c) {
            return;
        }
        this.f16496c = true;
        ((cbs) this.f16494a.j).j("0\r\n\r\n");
        gpq gpqVar = this.f16495b;
        dme dmeVar = gpqVar.f18541d;
        gpqVar.f18541d = dme.n;
        dmeVar.s();
        dmeVar.t();
        this.f16494a.k = 3;
    }

    @Override // g.evq
    public final dme e() {
        return this.f16495b;
    }

    @Override // g.evq
    public final void f(clq clqVar, long j) {
        cbs cbsVar = (cbs) this.f16494a.j;
        if (this.f16496c) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return;
        }
        cbsVar.k(j);
        cbsVar.j("\r\n");
        cbsVar.f(clqVar, j);
        cbsVar.j("\r\n");
    }

    @Override // g.evq, java.io.Flushable
    public final synchronized void flush() {
        if (this.f16496c) {
            return;
        }
        ((cbs) this.f16494a.j).flush();
    }
}
