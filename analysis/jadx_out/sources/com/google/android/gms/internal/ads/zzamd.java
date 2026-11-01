package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzamd implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public final zzame f4274a = new zzame(null, 0);

    /* renamed from: b, reason: collision with root package name */
    public final zzed f4275b = new zzed(2786);

    /* renamed from: c, reason: collision with root package name */
    public boolean f4276c;

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        zzed zzedVar = this.f4275b;
        int zza = zzacsVar.zza(zzedVar.zzN(), 0, 2786);
        if (zza == -1) {
            return -1;
        }
        zzedVar.zzL(0);
        zzedVar.zzK(zza);
        boolean z = this.f4276c;
        zzame zzameVar = this.f4274a;
        if (!z) {
            zzameVar.zzd(0L, 4);
            this.f4276c = true;
        }
        zzameVar.zza(zzedVar);
        return 0;
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
        this.f4274a.zzb(zzacuVar, new zzaoa(Integer.MIN_VALUE, 0, 1));
        zzacuVar.zzD();
        zzacuVar.zzO(new zzadp(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4276c = false;
        this.f4274a.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        r9.zzj();
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if ((r5 - r3) >= 8192) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzed zzedVar = new zzed(10);
        int i = 0;
        while (true) {
            zzacg zzacgVar = (zzacg) zzacsVar;
            zzacgVar.zzm(zzedVar.zzN(), 0, 10, false);
            zzedVar.zzL(0);
            if (zzedVar.zzo() != 4801587) {
                break;
            }
            zzedVar.zzM(3);
            int zzl = zzedVar.zzl();
            i += zzl + 10;
            zzacgVar.zzl(zzl, false);
        }
        zzacsVar.zzj();
        zzacg zzacgVar2 = (zzacg) zzacsVar;
        zzacgVar2.zzl(i, false);
        int i2 = i;
        while (true) {
            int i3 = 0;
            while (true) {
                zzacgVar2.zzm(zzedVar.zzN(), 0, 6, false);
                zzedVar.zzL(0);
                if (zzedVar.zzq() != 2935) {
                    break;
                }
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                int zzb = zzabr.zzb(zzedVar.zzN());
                if (zzb == -1) {
                    return false;
                }
                zzacgVar2.zzl(zzb - 6, false);
            }
            zzacgVar2.zzl(i2, false);
        }
    }
}
