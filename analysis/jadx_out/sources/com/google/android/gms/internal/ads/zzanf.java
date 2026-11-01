package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzanf implements zzann {

    /* renamed from: a, reason: collision with root package name */
    public zzadx f4380a;

    /* renamed from: b, reason: collision with root package name */
    public zzad f4381b;

    /* renamed from: c, reason: collision with root package name */
    public zzek f4382c;

    public zzanf(String str) {
        zzab zzabVar = new zzab();
        zzabVar.zzZ(str);
        this.f4381b = zzabVar.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzann
    public final void zza(zzed zzedVar) {
        zzdb.zzb(this.f4382c);
        int i = zzen.zza;
        long zze = this.f4382c.zze();
        long zzf = this.f4382c.zzf();
        if (zze == -9223372036854775807L || zzf == -9223372036854775807L) {
            return;
        }
        zzad zzadVar = this.f4381b;
        if (zzf != zzadVar.zzt) {
            zzab zzb = zzadVar.zzb();
            zzb.zzad(zzf);
            zzad zzaf = zzb.zzaf();
            this.f4381b = zzaf;
            this.f4380a.zzl(zzaf);
        }
        int zzb2 = zzedVar.zzb();
        this.f4380a.zzq(zzedVar, zzb2);
        this.f4380a.zzs(zze, 1, zzb2, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzann
    public final void zzb(zzek zzekVar, zzacu zzacuVar, zzaoa zzaoaVar) {
        this.f4382c = zzekVar;
        zzaoaVar.zzc();
        zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 5);
        this.f4380a = zzw;
        zzw.zzl(this.f4381b);
    }
}
