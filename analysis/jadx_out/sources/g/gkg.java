package g;

import com.google.android.gms.internal.ads.zzfzd;
import java.util.Comparator;

/* loaded from: classes3.dex */
public final class gkg extends zzfzd {
    public static final zzfzd d(int i) {
        return i < 0 ? zzfzd.f8230b : i > 0 ? zzfzd.f8231c : zzfzd.f8229a;
    }

    @Override // com.google.android.gms.internal.ads.zzfzd
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfzd
    public final zzfzd zzb(int i, int i2) {
        return d(Integer.compare(i, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzfzd
    public final zzfzd zzc(Object obj, Object obj2, Comparator comparator) {
        return d(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzfzd
    public final zzfzd zzd(boolean z, boolean z2) {
        return d(Boolean.compare(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzfzd
    public final zzfzd zze(boolean z, boolean z2) {
        return d(Boolean.compare(z2, z));
    }
}
