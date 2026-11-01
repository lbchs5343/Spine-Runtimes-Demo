package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzamf implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public final zzamg f4284a = new zzamg(null, 0);

    /* renamed from: b, reason: collision with root package name */
    public final zzed f4285b = new zzed(16384);

    /* renamed from: c, reason: collision with root package name */
    public boolean f4286c;

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        zzed zzedVar = this.f4285b;
        int zza = zzacsVar.zza(zzedVar.zzN(), 0, 16384);
        if (zza == -1) {
            return -1;
        }
        zzedVar.zzL(0);
        zzedVar.zzK(zza);
        boolean z = this.f4286c;
        zzamg zzamgVar = this.f4284a;
        if (!z) {
            zzamgVar.zzd(0L, 4);
            this.f4286c = true;
        }
        zzamgVar.zza(zzedVar);
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
        this.f4284a.zzb(zzacuVar, new zzaoa(Integer.MIN_VALUE, 0, 1));
        zzacuVar.zzD();
        zzacuVar.zzO(new zzadp(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4286c = false;
        this.f4284a.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        r16.zzj();
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
    
        if ((r5 - r3) >= 8192) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        int i;
        zzed zzedVar = new zzed(10);
        int i2 = 0;
        while (true) {
            zzacg zzacgVar = (zzacg) zzacsVar;
            zzacgVar.zzm(zzedVar.zzN(), 0, 10, false);
            zzedVar.zzL(0);
            if (zzedVar.zzo() != 4801587) {
                break;
            }
            zzedVar.zzM(3);
            int zzl = zzedVar.zzl();
            i2 += zzl + 10;
            zzacgVar.zzl(zzl, false);
        }
        zzacsVar.zzj();
        zzacg zzacgVar2 = (zzacg) zzacsVar;
        zzacgVar2.zzl(i2, false);
        int i3 = i2;
        while (true) {
            int i4 = 0;
            while (true) {
                int i5 = 7;
                zzacgVar2.zzm(zzedVar.zzN(), 0, 7, false);
                zzedVar.zzL(0);
                int zzq = zzedVar.zzq();
                if (zzq != 44096 && zzq != 44097) {
                    break;
                }
                i4++;
                if (i4 >= 4) {
                    return true;
                }
                byte[] zzN = zzedVar.zzN();
                if (zzN.length < 7) {
                    i = -1;
                } else {
                    int i6 = ((zzN[2] & 255) << 8) | (zzN[3] & 255);
                    if (i6 == 65535) {
                        i6 = ((zzN[4] & 255) << 16) | ((zzN[5] & 255) << 8) | (zzN[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (zzq == 44097) {
                        i5 += 2;
                    }
                    i = i6 + i5;
                }
                if (i == -1) {
                    return false;
                }
                zzacgVar2.zzl(i - 7, false);
            }
            zzacgVar2.zzl(i3, false);
        }
    }
}
