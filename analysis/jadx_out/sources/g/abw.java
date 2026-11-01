package g;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class abw implements Serializable, dvf {
    final Object zza;

    public abw(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof abw)) {
            return false;
        }
        Object obj2 = this.zza;
        Object obj3 = ((abw) obj).zza;
        return obj2 == obj3 || obj2.equals(obj3);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.zza + ")";
    }

    @Override // g.dvf
    public final Object zza() {
        return this.zza;
    }
}
