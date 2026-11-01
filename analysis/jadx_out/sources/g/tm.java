package g;

import com.google.android.gms.internal.ads.zzbj;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzkp;
import com.google.android.gms.internal.ads.zzln;
import com.google.android.gms.internal.ads.zzlv;

/* loaded from: classes3.dex */
public final class tm implements zzkp {

    /* renamed from: a, reason: collision with root package name */
    public zzln f20048a;

    /* renamed from: b, reason: collision with root package name */
    public zzkp f20049b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20050c = true;

    /* renamed from: d, reason: collision with root package name */
    public final zzlv f20051d;

    /* renamed from: e, reason: collision with root package name */
    public final com.google.android.gms.internal.ads.s f20052e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20053f;

    public tm(com.google.android.gms.internal.ads.s sVar, zzdc zzdcVar) {
        this.f20052e = sVar;
        this.f20051d = new zzlv(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final long zza() {
        if (this.f20050c) {
            return this.f20051d.zza();
        }
        zzkp zzkpVar = this.f20049b;
        zzkpVar.getClass();
        return zzkpVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final zzbj zzc() {
        zzkp zzkpVar = this.f20049b;
        return zzkpVar != null ? zzkpVar.zzc() : this.f20051d.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final void zzg(zzbj zzbjVar) {
        zzkp zzkpVar = this.f20049b;
        if (zzkpVar != null) {
            zzkpVar.zzg(zzbjVar);
            zzbjVar = this.f20049b.zzc();
        }
        this.f20051d.zzg(zzbjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkp
    public final boolean zzj() {
        if (this.f20050c) {
            return false;
        }
        zzkp zzkpVar = this.f20049b;
        zzkpVar.getClass();
        return zzkpVar.zzj();
    }
}
