package g;

import com.google.android.gms.internal.ads.zzgyl;
import com.google.android.gms.internal.ads.zzhca;
import com.google.android.gms.internal.ads.zzhcb;

/* loaded from: classes3.dex */
public final class dmd implements zzgyl {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14414a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14415b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14416c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhca f14417d;

    public dmd(int i, zzhca zzhcaVar, boolean z, boolean z2) {
        this.f14416c = i;
        this.f14417d = zzhcaVar;
        this.f14414a = z;
        this.f14415b = z2;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.f14416c - ((dmd) obj).f14416c;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final int zza() {
        return this.f14416c;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final zzhca zzb() {
        return this.f14417d;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final zzhcb zzc() {
        return this.f14417d.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final boolean zzd() {
        return this.f14415b;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final boolean zze() {
        return this.f14414a;
    }
}
