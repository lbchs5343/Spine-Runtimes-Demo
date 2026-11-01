package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzafd implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public final zzed f4167a = new zzed(4);

    /* renamed from: b, reason: collision with root package name */
    public final zzads f4168b = new zzads(-1, -1, "image/heif");

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        return this.f4168b.zzb(zzacsVar, zzadnVar);
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
        this.f4168b.zze(zzacuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4168b.zzf(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzacg zzacgVar = (zzacg) zzacsVar;
        zzacgVar.zzl(4, false);
        zzed zzedVar = this.f4167a;
        zzedVar.zzI(4);
        zzacgVar.zzm(zzedVar.zzN(), 0, 4, false);
        if (zzedVar.zzu() == 1718909296) {
            zzedVar.zzI(4);
            zzacgVar.zzm(zzedVar.zzN(), 0, 4, false);
            if (zzedVar.zzu() == 1751476579) {
                return true;
            }
        }
        return false;
    }
}
