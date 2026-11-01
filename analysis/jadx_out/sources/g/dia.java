package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class dia extends CancellationException {

    /* renamed from: a, reason: collision with root package name */
    public final transient bxm f14211a;

    public dia(bxm bxmVar) {
        super("Flow was aborted, no more elements needed");
        this.f14211a = bxmVar;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
