package g;

import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzfzd;
import com.google.android.gms.internal.ads.zzlo;

/* loaded from: classes3.dex */
public final class fp implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17177a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f17178b;

    public fp(int i, zzad zzadVar) {
        this.f17177a = 1 == (zzadVar.zze & 1);
        this.f17178b = zzlo.zza(i, false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        fp fpVar = (fp) obj;
        return zzfzd.zzj().zzd(this.f17178b, fpVar.f17178b).zzd(this.f17177a, fpVar.f17177a).zza();
    }
}
