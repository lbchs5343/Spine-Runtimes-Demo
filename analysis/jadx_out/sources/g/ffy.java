package g;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes3.dex */
public final class ffy extends bth implements Serializable {
    final Object zza;
    final Object zzb;

    public ffy(Object obj, List list) {
        this.zza = obj;
        this.zzb = list;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zza;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzb;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
