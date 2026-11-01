package g;

/* loaded from: classes3.dex */
public abstract class ewq implements evq {
    public final evq i;

    public ewq(evq evqVar) {
        bff.p(evqVar, "delegate");
        this.i = evqVar;
    }

    @Override // g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
        this.i.close();
    }

    @Override // g.evq
    public final dme e() {
        return this.i.e();
    }

    @Override // g.evq
    public void f(clq clqVar, long j) {
        this.i.f(clqVar, j);
    }

    @Override // g.evq, java.io.Flushable
    public void flush() {
        this.i.flush();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.i + ')';
    }
}
