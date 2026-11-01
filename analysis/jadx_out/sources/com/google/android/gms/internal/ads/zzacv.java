package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzacv {
    public static int zza(zzacs zzacsVar, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int zzb = zzacsVar.zzb(bArr, i + i3, i2 - i3);
            if (zzb == -1) {
                break;
            }
            i3 += zzb;
        }
        return i3;
    }

    public static void zzb(boolean z, String str) throws zzbh {
        if (!z) {
            throw zzbh.zza(str, null);
        }
    }

    public static boolean zzc(zzacs zzacsVar, byte[] bArr, int i, int i2, boolean z) throws IOException {
        try {
            return zzacsVar.zzm(bArr, 0, i2, z);
        } catch (EOFException e2) {
            if (z) {
                return false;
            }
            throw e2;
        }
    }

    public static boolean zzd(zzacs zzacsVar, byte[] bArr, int i, int i2) throws IOException {
        try {
            zzacsVar.zzi(bArr, i, i2);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zze(zzacs zzacsVar, int i) throws IOException {
        try {
            zzacsVar.zzk(i);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
