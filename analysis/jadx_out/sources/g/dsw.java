package g;

import com.google.android.gms.internal.ads.zzb;
import com.google.android.gms.internal.ads.zzbt;
import com.google.android.gms.internal.ads.zzbu;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzuf;

/* loaded from: classes3.dex */
public final class dsw extends zzuf {

    /* renamed from: a, reason: collision with root package name */
    public final zzbu f14741a;

    public dsw(zzbv zzbvVar) {
        super(zzbvVar);
        this.f14741a = new zzbu();
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzbv
    public final zzbt zzd(int i, zzbt zzbtVar, boolean z) {
        zzbv zzbvVar = this.f8899d;
        zzbt zzd = zzbvVar.zzd(i, zzbtVar, z);
        if (zzbvVar.zze(zzd.zzc, this.f14741a, 0L).zzb()) {
            zzd.zzi(zzbtVar.zza, zzbtVar.zzb, zzbtVar.zzc, zzbtVar.zzd, 0L, zzb.zza, true);
            return zzd;
        }
        zzd.zzf = true;
        return zzd;
    }
}
