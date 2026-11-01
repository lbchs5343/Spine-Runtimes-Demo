package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaoc {
    public static int zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long zzb(zzed zzedVar, int i, int i2) {
        zzedVar.zzL(i);
        if (zzedVar.zzb() < 5) {
            return -9223372036854775807L;
        }
        int zzg = zzedVar.zzg();
        if ((8388608 & zzg) != 0 || ((zzg >> 8) & 8191) != i2 || (zzg & 32) == 0 || zzedVar.zzm() < 7 || zzedVar.zzb() < 7 || (zzedVar.zzm() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        zzedVar.zzH(bArr, 0, 6);
        long j = bArr[0];
        long j2 = bArr[1];
        long j3 = bArr[2];
        long j4 = bArr[3] & 255;
        return ((j & 255) << 25) | ((j2 & 255) << 17) | ((j3 & 255) << 9) | (j4 + j4) | ((bArr[4] & 255) >> 7);
    }
}
