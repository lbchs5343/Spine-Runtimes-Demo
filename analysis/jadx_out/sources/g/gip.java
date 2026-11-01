package g;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzfy;
import com.google.android.gms.internal.ads.zzfzr;
import com.google.android.gms.internal.ads.zzgd;
import com.google.android.gms.internal.ads.zzgi;
import com.google.android.gms.internal.ads.zzhd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class gip implements zzgd {

    /* renamed from: a, reason: collision with root package name */
    public long f18206a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f18207b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfy f18208c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18209d;

    /* renamed from: e, reason: collision with root package name */
    public final zzgd f18210e;

    public gip(zzfy zzfyVar, int i, zzgd zzgdVar) {
        this.f18208c = zzfyVar;
        this.f18209d = i;
        this.f18210e = zzgdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.f18206a;
        long j2 = this.f18209d;
        if (j < j2) {
            int zza = this.f18208c.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.f18206a + zza;
            this.f18206a = j3;
            i3 = zza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j < j2) {
            return i3;
        }
        int zza2 = this.f18210e.zza(bArr, i + i3, i2 - i3);
        int i4 = i3 + zza2;
        this.f18206a += zza2;
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) {
        zzgi zzgiVar2;
        this.f18207b = zzgiVar.zza;
        long j = zzgiVar.zze;
        zzgi zzgiVar3 = null;
        long j2 = this.f18209d;
        if (j >= j2) {
            zzgiVar2 = null;
        } else {
            long j3 = zzgiVar.zzf;
            long j4 = j2 - j;
            if (j3 != -1) {
                j4 = Math.min(j3, j4);
            }
            zzgiVar2 = new zzgi(zzgiVar.zza, j, j4, null);
        }
        long j5 = zzgiVar.zzf;
        if (j5 == -1 || zzgiVar.zze + j5 > j2) {
            long max = Math.max(j2, zzgiVar.zze);
            long j6 = zzgiVar.zzf;
            zzgiVar3 = new zzgi(zzgiVar.zza, max, j6 != -1 ? Math.min(j6, (zzgiVar.zze + j6) - j2) : -1L, null);
        }
        long zzb = zzgiVar2 != null ? this.f18208c.zzb(zzgiVar2) : 0L;
        long zzb2 = zzgiVar3 != null ? this.f18210e.zzb(zzgiVar3) : 0L;
        this.f18206a = zzgiVar.zze;
        if (zzb == -1 || zzb2 == -1) {
            return -1L;
        }
        return zzb + zzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f18207b;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() {
        this.f18208c.zzd();
        this.f18210e.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        return zzfzr.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzf(zzhd zzhdVar) {
    }
}
