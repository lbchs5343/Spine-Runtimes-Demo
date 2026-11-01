package g;

import com.google.android.gms.internal.ads.zzhm;
import com.google.android.gms.internal.ads.zzkj;
import com.google.android.gms.internal.ads.zzwg;

/* loaded from: classes3.dex */
public final class gej implements zzwg {

    /* renamed from: a, reason: collision with root package name */
    public final zzwg f17985a;

    /* renamed from: b, reason: collision with root package name */
    public final long f17986b;

    public gej(zzwg zzwgVar, long j) {
        this.f17985a = zzwgVar;
        this.f17986b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final int zza(zzkj zzkjVar, zzhm zzhmVar, int i) {
        int zza = this.f17985a.zza(zzkjVar, zzhmVar, i);
        if (zza != -4) {
            return zza;
        }
        zzhmVar.zze += this.f17986b;
        return -4;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final int zzb(long j) {
        return this.f17985a.zzb(j - this.f17986b);
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final void zzd() {
        this.f17985a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final boolean zze() {
        return this.f17985a.zze();
    }
}
