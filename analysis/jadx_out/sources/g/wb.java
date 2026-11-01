package g;

import com.google.android.gms.internal.ads.zzfwh;
import com.google.android.gms.internal.ads.zzfwo;
import com.google.android.gms.internal.ads.zzfwq;

/* loaded from: classes3.dex */
public final class wb extends zzfwo {
    private final Object zza;

    public wb(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof wb) {
            return this.zza.equals(((wb) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return tn.ad("Optional.of(", this.zza.toString(), ")");
    }

    @Override // com.google.android.gms.internal.ads.zzfwo
    public final zzfwo zza(zzfwh zzfwhVar) {
        Object apply = zzfwhVar.apply(this.zza);
        zzfwq.zzc(apply, "the Function passed to Optional.transform() must not return null.");
        return new wb(apply);
    }

    @Override // com.google.android.gms.internal.ads.zzfwo
    public final Object zzb(Object obj) {
        return this.zza;
    }
}
