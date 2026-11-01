package g;

import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzyd;

/* loaded from: classes3.dex */
public final class bqg implements zzyd {

    /* renamed from: a, reason: collision with root package name */
    public final zzyd f12008a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbw f12009b;

    public bqg(zzyd zzydVar, zzbw zzbwVar) {
        this.f12008a = zzydVar;
        this.f12009b = zzbwVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bqg)) {
            return false;
        }
        bqg bqgVar = (bqg) obj;
        return this.f12008a.equals(bqgVar.f12008a) && this.f12009b.equals(bqgVar.f12009b);
    }

    public final int hashCode() {
        return this.f12008a.hashCode() + ((this.f12009b.hashCode() + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final int zza(int i) {
        return this.f12008a.zza(i);
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final int zzb(int i) {
        return this.f12008a.zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final int zzc() {
        return this.f12008a.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final zzad zzd(int i) {
        return this.f12009b.zzb(this.f12008a.zza(i));
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final zzbw zze() {
        return this.f12009b;
    }
}
