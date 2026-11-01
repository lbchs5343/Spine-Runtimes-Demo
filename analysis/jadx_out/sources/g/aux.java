package g;

import java.util.concurrent.CompletableFuture;

/* loaded from: classes3.dex */
public final class aux extends CompletableFuture {

    /* renamed from: a, reason: collision with root package name */
    public final fdw f10900a;

    public aux(fdw fdwVar) {
        this.f10900a = fdwVar;
    }

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        if (z) {
            this.f10900a.cancel();
        }
        return super.cancel(z);
    }
}
