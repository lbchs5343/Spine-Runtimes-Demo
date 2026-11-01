package g;

import com.google.android.gms.internal.ads.zzgdz;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class ekc extends zzgdz {

    /* renamed from: a, reason: collision with root package name */
    public final dcy f15697a;

    public ekc(dcy dcyVar) {
        dcyVar.getClass();
        this.f15697a = dcyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcy, g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        this.f15697a.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgcy, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f15697a.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.zzgcy, java.util.concurrent.Future
    public final Object get() {
        return this.f15697a.get();
    }

    @Override // com.google.android.gms.internal.ads.zzgcy, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f15697a.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.zzgcy, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f15697a.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzgcy, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f15697a.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String toString() {
        return this.f15697a.toString();
    }
}
