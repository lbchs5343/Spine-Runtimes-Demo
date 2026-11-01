package g;

/* loaded from: classes3.dex */
public final class bfs implements evq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gnb f11470a;

    /* renamed from: b, reason: collision with root package name */
    public final gpq f11471b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11472c;

    public bfs(gnb gnbVar) {
        this.f11470a = gnbVar;
        this.f11471b = new gpq(((cbs) gnbVar.j).e());
    }

    @Override // g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f11472c) {
            return;
        }
        this.f11472c = true;
        gpq gpqVar = this.f11471b;
        dme dmeVar = gpqVar.f18541d;
        gpqVar.f18541d = dme.n;
        dmeVar.s();
        dmeVar.t();
        this.f11470a.k = 3;
    }

    @Override // g.evq
    public final dme e() {
        return this.f11471b;
    }

    @Override // g.evq
    public final void f(clq clqVar, long j) {
        if (this.f11472c) {
            throw new IllegalStateException("closed");
        }
        erq.ac(clqVar.f13080b, 0L, j);
        ((cbs) this.f11470a.j).f(clqVar, j);
    }

    @Override // g.evq, java.io.Flushable
    public final void flush() {
        if (this.f11472c) {
            return;
        }
        ((cbs) this.f11470a.j).flush();
    }
}
