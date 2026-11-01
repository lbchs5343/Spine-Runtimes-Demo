package g;

import com.google.android.gms.internal.ads.zzkm;
import com.google.android.gms.internal.ads.zzko;
import com.google.android.gms.internal.ads.zzls;
import com.google.android.gms.internal.ads.zzuo;
import com.google.android.gms.internal.ads.zzup;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzwi;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyd;

/* loaded from: classes3.dex */
public final class gva implements zzup, zzuo {

    /* renamed from: a, reason: collision with root package name */
    public zzuo f18793a;

    /* renamed from: b, reason: collision with root package name */
    public final zzup f18794b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18795c;

    public gva(zzup zzupVar, long j) {
        this.f18794b = zzupVar;
        this.f18795c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zza(long j, zzls zzlsVar) {
        zzup zzupVar = this.f18794b;
        long j2 = this.f18795c;
        return zzupVar.zza(j - j2, zzlsVar) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzb() {
        long zzb = this.f18794b.zzb();
        if (zzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzb + this.f18795c;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzc() {
        long zzc = this.f18794b.zzc();
        if (zzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzc + this.f18795c;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        long zzd = this.f18794b.zzd();
        if (zzd == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzd + this.f18795c;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zze(long j) {
        zzup zzupVar = this.f18794b;
        long j2 = this.f18795c;
        return zzupVar.zze(j - j2) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzf(zzyd[] zzydVarArr, boolean[] zArr, zzwg[] zzwgVarArr, boolean[] zArr2, long j) {
        zzwg[] zzwgVarArr2 = new zzwg[zzwgVarArr.length];
        int i = 0;
        while (true) {
            zzwg zzwgVar = null;
            if (i >= zzwgVarArr.length) {
                break;
            }
            gej gejVar = (gej) zzwgVarArr[i];
            if (gejVar != null) {
                zzwgVar = gejVar.f17985a;
            }
            zzwgVarArr2[i] = zzwgVar;
            i++;
        }
        zzup zzupVar = this.f18794b;
        long j2 = this.f18795c;
        long zzf = zzupVar.zzf(zzydVarArr, zArr, zzwgVarArr2, zArr2, j - j2);
        for (int i2 = 0; i2 < zzwgVarArr.length; i2++) {
            zzwg zzwgVar2 = zzwgVarArr2[i2];
            if (zzwgVar2 == null) {
                zzwgVarArr[i2] = null;
            } else {
                zzwg zzwgVar3 = zzwgVarArr[i2];
                if (zzwgVar3 == null || ((gej) zzwgVar3).f17985a != zzwgVar2) {
                    zzwgVarArr[i2] = new gej(zzwgVar2, j2);
                }
            }
        }
        return zzf + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final /* bridge */ /* synthetic */ void zzg(zzwi zzwiVar) {
        zzuo zzuoVar = this.f18793a;
        zzuoVar.getClass();
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzwr zzh() {
        return this.f18794b.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        zzuo zzuoVar = this.f18793a;
        zzuoVar.getClass();
        zzuoVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        this.f18794b.zzj(j - this.f18795c, false);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() {
        this.f18794b.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.f18793a = zzuoVar;
        this.f18794b.zzl(this, j - this.f18795c);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final void zzm(long j) {
        this.f18794b.zzm(j - this.f18795c);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzo(zzko zzkoVar) {
        long j = zzkoVar.zza;
        zzkm zza = zzkoVar.zza();
        zza.zze(j - this.f18795c);
        return this.f18794b.zzo(zza.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzp() {
        return this.f18794b.zzp();
    }
}
