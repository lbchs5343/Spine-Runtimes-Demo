package g;

import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzhm;
import com.google.android.gms.internal.ads.zzkj;
import com.google.android.gms.internal.ads.zztv;
import com.google.android.gms.internal.ads.zzwg;

/* loaded from: classes3.dex */
public final class bha implements zzwg {

    /* renamed from: a, reason: collision with root package name */
    public final zzwg f11560a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11561b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zztv f11562c;

    public bha(zztv zztvVar, zzwg zzwgVar) {
        this.f11562c = zztvVar;
        this.f11560a = zzwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final int zza(zzkj zzkjVar, zzhm zzhmVar, int i) {
        zztv zztvVar = this.f11562c;
        if (zztvVar.e()) {
            return -3;
        }
        if (this.f11561b) {
            zzhmVar.zzc(4);
            return -4;
        }
        long zzb = zztvVar.zzb();
        int zza = this.f11560a.zza(zzkjVar, zzhmVar, i);
        if (zza != -5) {
            long j = zztvVar.f8894b;
            if (j == Long.MIN_VALUE || ((zza != -4 || zzhmVar.zze < j) && !(zza == -3 && zzb == Long.MIN_VALUE && !zzhmVar.zzd))) {
                return zza;
            }
            zzhmVar.zzb();
            zzhmVar.zzc(4);
            this.f11561b = true;
            return -4;
        }
        zzad zzadVar = zzkjVar.zza;
        zzadVar.getClass();
        int i2 = zzadVar.zzF;
        if (i2 == 0) {
            if (zzadVar.zzG == 0) {
                return -5;
            }
            i2 = 0;
        }
        int i3 = zztvVar.f8894b == Long.MIN_VALUE ? zzadVar.zzG : 0;
        zzab zzb2 = zzadVar.zzb();
        zzb2.zzG(i2);
        zzb2.zzH(i3);
        zzkjVar.zza = zzb2.zzaf();
        return -5;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final int zzb(long j) {
        if (this.f11562c.e()) {
            return -3;
        }
        return this.f11560a.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final void zzd() {
        this.f11560a.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final boolean zze() {
        return !this.f11562c.e() && this.f11560a.zze();
    }
}
