package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaeq implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public final zzed f4150a = new zzed(4);

    /* renamed from: b, reason: collision with root package name */
    public final zzads f4151b = new zzads(-1, -1, "image/avif");

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        return this.f4151b.zzb(zzacsVar, zzadnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.f4151b.zze(zzacuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4151b.zzf(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzacg zzacgVar = (zzacg) zzacsVar;
        zzacgVar.zzl(4, false);
        zzed zzedVar = this.f4150a;
        zzedVar.zzI(4);
        zzacgVar.zzm(zzedVar.zzN(), 0, 4, false);
        if (zzedVar.zzu() == 1718909296) {
            zzedVar.zzI(4);
            zzacgVar.zzm(zzedVar.zzN(), 0, 4, false);
            if (zzedVar.zzu() == 1635150182) {
                return true;
            }
        }
        return false;
    }
}
