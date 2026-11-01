package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzadh {

    /* renamed from: a, reason: collision with root package name */
    public final zzed f4103a = new zzed(10);

    public final zzbd zza(zzacs zzacsVar, zzagi zzagiVar) throws IOException {
        zzed zzedVar = this.f4103a;
        zzbd zzbdVar = null;
        int i = 0;
        while (true) {
            try {
                zzacsVar.zzh(zzedVar.zzN(), 0, 10);
                zzedVar.zzL(0);
                if (zzedVar.zzo() != 4801587) {
                    break;
                }
                zzedVar.zzM(3);
                int zzl = zzedVar.zzl();
                int i2 = zzl + 10;
                if (zzbdVar == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(zzedVar.zzN(), 0, bArr, 0, 10);
                    zzacsVar.zzh(bArr, 10, zzl);
                    zzbdVar = zzagk.zza(bArr, i2, zzagiVar, new zzafm());
                } else {
                    zzacsVar.zzg(zzl);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        zzacsVar.zzj();
        zzacsVar.zzg(i);
        return zzbdVar;
    }
}
