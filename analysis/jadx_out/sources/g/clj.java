package g;

import com.google.android.gms.internal.ads.zzgcy;
import com.google.android.gms.internal.ads.zzgec;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class clj extends zzgec implements ScheduledFuture {

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledFuture f13062e;

    public clj(zzgcy zzgcyVar, ScheduledFuture scheduledFuture) {
        super(zzgcyVar);
        this.f13062e = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgeb, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = this.f8253c.cancel(z);
        if (cancel) {
            this.f13062e.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f13062e.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f13062e.getDelay(timeUnit);
    }
}
