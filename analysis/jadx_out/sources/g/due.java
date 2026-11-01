package g;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* loaded from: classes3.dex */
public final class due extends axh implements RunnableFuture {

    /* renamed from: a, reason: collision with root package name */
    public volatile eye f14814a;

    public due(Callable callable) {
        this.f14814a = new fne(this, callable);
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String f() {
        eye eyeVar = this.f14814a;
        return eyeVar != null ? tn.ad("task=[", eyeVar.toString(), "]") : super.f();
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final void g() {
        eye eyeVar;
        if (ah() && (eyeVar = this.f14814a) != null) {
            eyeVar.i();
        }
        this.f14814a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        eye eyeVar = this.f14814a;
        if (eyeVar != null) {
            eyeVar.run();
        }
        this.f14814a = null;
    }
}
