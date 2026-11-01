package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfzo;
import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes3.dex */
public final class dyj extends zzfzo {
    final /* synthetic */ nm zza;

    public dyj(nm nmVar) {
        this.zza = nmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return true;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzfwq.zza(i, this.zza.f19709c, "index");
        int i2 = i + i;
        Object obj = this.zza.f19708b[i2];
        Objects.requireNonNull(obj);
        Object obj2 = this.zza.f19708b[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.f19709c;
    }
}
