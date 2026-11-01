package g;

import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzlx;
import com.google.android.gms.internal.ads.zzod;
import com.google.android.gms.internal.ads.zzur;

/* loaded from: classes3.dex */
public final class fef {

    /* renamed from: a, reason: collision with root package name */
    public final zzur f16646a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16647b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16648c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16649d;

    /* renamed from: e, reason: collision with root package name */
    public int f16650e;

    /* renamed from: f, reason: collision with root package name */
    public long f16651f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ zzod f16652g;

    public fef(zzod zzodVar, String str, int i, zzur zzurVar) {
        this.f16652g = zzodVar;
        this.f16648c = str;
        this.f16650e = i;
        this.f16651f = zzurVar == null ? -1L : zzurVar.zzd;
        if (zzurVar == null || !zzurVar.zzb()) {
            return;
        }
        this.f16646a = zzurVar;
    }

    public final boolean h(zzlx zzlxVar) {
        zzur zzurVar = zzlxVar.zzd;
        if (zzurVar == null) {
            return this.f16650e != zzlxVar.zzc;
        }
        long j = this.f16651f;
        if (j == -1) {
            return false;
        }
        if (zzurVar.zzd > j) {
            return true;
        }
        zzur zzurVar2 = this.f16646a;
        if (zzurVar2 == null) {
            return false;
        }
        zzbv zzbvVar = zzlxVar.zzb;
        int zza = zzbvVar.zza(zzurVar.zza);
        int zza2 = zzbvVar.zza(zzurVar2.zza);
        zzur zzurVar3 = zzlxVar.zzd;
        if (zzurVar3.zzd < zzurVar2.zzd || zza < zza2) {
            return false;
        }
        if (zza > zza2) {
            return true;
        }
        if (!zzurVar3.zzb()) {
            int i = zzlxVar.zzd.zze;
            return i == -1 || i > zzurVar2.zzb;
        }
        zzur zzurVar4 = zzlxVar.zzd;
        int i2 = zzurVar4.zzb;
        int i3 = zzurVar4.zzc;
        int i4 = zzurVar2.zzb;
        if (i2 <= i4) {
            return i2 == i4 && i3 > zzurVar2.zzc;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 < r9.zzc()) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(zzbv zzbvVar, zzbv zzbvVar2) {
        int i = this.f16650e;
        if (i < zzbvVar.zzc()) {
            zzod zzodVar = this.f16652g;
            zzbvVar.zze(i, zzodVar.f8811d, 0L);
            for (int i2 = zzodVar.f8811d.zzn; i2 <= zzodVar.f8811d.zzo; i2++) {
                int zza = zzbvVar2.zza(zzbvVar.zzf(i2));
                if (zza != -1) {
                    i = zzbvVar2.zzd(zza, zzodVar.f8813f, false).zzc;
                    break;
                }
            }
            i = -1;
        }
        this.f16650e = i;
        if (i == -1) {
            return false;
        }
        zzur zzurVar = this.f16646a;
        return zzurVar == null || zzbvVar2.zza(zzurVar.zza) != -1;
    }
}
