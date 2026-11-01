package g;

import com.google.android.gms.internal.ads.zzfwr;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes3.dex */
public final class cdm implements Serializable, zzfwr {
    private final List zza;

    public final boolean equals(Object obj) {
        if (obj instanceof cdm) {
            return this.zza.equals(((cdm) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (Object obj : this.zza) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfwr
    public final boolean zza(Object obj) {
        for (int i = 0; i < this.zza.size(); i++) {
            if (!((zzfwr) this.zza.get(i)).zza(obj)) {
                return false;
            }
        }
        return true;
    }
}
