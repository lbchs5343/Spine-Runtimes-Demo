package g;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ady extends fee implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final ady f10068a = new ady();

    /* renamed from: b, reason: collision with root package name */
    public static final cpk f10069b;

    static {
        cpk cpkVar = dlq.f14383a;
        int i = fst.f17352a;
        if (64 >= i) {
            i = 64;
        }
        int ai = dzm.ai(i, 12, "kotlinx.coroutines.io.parallelism");
        cpkVar.getClass();
        if (ai < 1) {
            throw new IllegalArgumentException(awf.ac(ai, "Expected positive parallelism level, but got ").toString());
        }
        if (ai < fga.f16731b) {
            if (ai < 1) {
                throw new IllegalArgumentException(awf.ac(ai, "Expected positive parallelism level, but got ").toString());
            }
            cpkVar = new dbk(cpkVar, ai);
        }
        f10069b = cpkVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        i(cgq.f12850a, runnable);
    }

    @Override // g.cpk
    public final void g(boj bojVar, Runnable runnable) {
        f10069b.g(bojVar, runnable);
    }

    @Override // g.cpk
    public final void i(boj bojVar, Runnable runnable) {
        f10069b.i(bojVar, runnable);
    }

    @Override // g.cpk
    public final String toString() {
        return "Dispatchers.IO";
    }
}
