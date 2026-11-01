package g;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class hz extends axh {

    /* renamed from: a, reason: collision with root package name */
    public dcy f19401a;

    /* renamed from: b, reason: collision with root package name */
    public ScheduledFuture f19402b;

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String f() {
        dcy dcyVar = this.f19401a;
        ScheduledFuture scheduledFuture = this.f19402b;
        if (dcyVar == null) {
            return null;
        }
        String ad = tn.ad("inputFuture=[", dcyVar.toString(), "]");
        if (scheduledFuture == null) {
            return ad;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return ad;
        }
        return ad + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final void g() {
        ac(this.f19401a);
        ScheduledFuture scheduledFuture = this.f19402b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f19401a = null;
        this.f19402b = null;
    }
}
