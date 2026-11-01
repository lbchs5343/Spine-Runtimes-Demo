package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class eqv extends ewq {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16016a;

    /* renamed from: b, reason: collision with root package name */
    public final axr f16017b;

    /* JADX WARN: Multi-variable type inference failed */
    public eqv(dgz dgzVar, and andVar) {
        super(dgzVar);
        this.f16017b = (axr) andVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [g.and, g.axr] */
    @Override // g.ewq, g.evq, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f16016a) {
            return;
        }
        try {
            super.close();
        } catch (IOException e2) {
            this.f16016a = true;
            this.f16017b.invoke(e2);
        }
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [g.and, g.axr] */
    @Override // g.ewq, g.evq
    public final void f(clq clqVar, long j) {
        if (this.f16016a) {
            clqVar.skip(j);
            return;
        }
        try {
            this.i.f(clqVar, j);
        } catch (IOException e2) {
            this.f16016a = true;
            this.f16017b.invoke(e2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [g.and, g.axr] */
    @Override // g.ewq, g.evq, java.io.Flushable
    public final void flush() {
        if (this.f16016a) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e2) {
            this.f16016a = true;
            this.f16017b.invoke(e2);
        }
    }
}
