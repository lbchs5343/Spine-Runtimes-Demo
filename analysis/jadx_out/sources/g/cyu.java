package g;

import com.google.android.gms.internal.ads.zzgaz;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class cyu extends zzgaz implements Serializable {
    final zzgaz zza;

    public cyu(zzgaz zzgazVar) {
        this.zza = zzgazVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgaz, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof cyu) {
            return this.zza.equals(((cyu) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(".reverse()");
    }
}
