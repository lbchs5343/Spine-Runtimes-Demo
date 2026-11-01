package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzgly {
    public static long a(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return (((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16)) & 4294967295L;
    }

    public static void b(long j, byte[] bArr, int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i + i2] = (byte) (255 & j);
            j >>= 8;
        }
    }

    public static byte[] zza(byte[] bArr, byte[] bArr2) {
        long a2 = a(0, bArr) & 67108863;
        int i = 3;
        long a3 = (a(3, bArr) >> 2) & 67108611;
        long a4 = (a(6, bArr) >> 4) & 67092735;
        long a5 = (a(9, bArr) >> 6) & 66076671;
        long a6 = (a(12, bArr) >> 8) & 1048575;
        byte[] bArr3 = new byte[17];
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        int i2 = 0;
        while (true) {
            int length = bArr2.length;
            if (i2 >= length) {
                long j6 = j + (j2 >> 26);
                long j7 = j6 & 67108863;
                long j8 = j3 + (j6 >> 26);
                long j9 = j8 & 67108863;
                long j10 = j4 + (j8 >> 26);
                long j11 = j10 & 67108863;
                long j12 = ((j10 >> 26) * 5) + j5;
                long j13 = j12 >> 26;
                long j14 = j12 & 67108863;
                long j15 = j14 + 5;
                long j16 = (j2 & 67108863) + j13;
                long j17 = j16 + (j15 >> 26);
                long j18 = j7 + (j17 >> 26);
                long j19 = j9 + (j18 >> 26);
                long j20 = (j11 + (j19 >> 26)) - 67108864;
                long j21 = j20 >> 63;
                long j22 = ~j21;
                long j23 = (j16 & j21) | (j17 & 67108863 & j22);
                long j24 = (j7 & j21) | (j18 & 67108863 & j22);
                long j25 = (j9 & j21) | (j19 & 67108863 & j22);
                long j26 = (j11 & j21) | (j20 & j22);
                long a7 = a(16, bArr) + (((j15 & 67108863 & j22) | (j14 & j21) | (j23 << 26)) & 4294967295L);
                long a8 = a(20, bArr) + (((j23 >> 6) | (j24 << 20)) & 4294967295L);
                long a9 = a(24, bArr);
                long a10 = a(28, bArr) + (((j25 >> 18) | (j26 << 8)) & 4294967295L);
                byte[] bArr4 = new byte[16];
                b(a7 & 4294967295L, bArr4, 0);
                long j27 = a8 + (a7 >> 32);
                b(j27 & 4294967295L, bArr4, 4);
                long j28 = a9 + (((j25 << 14) | (j24 >> 12)) & 4294967295L) + (j27 >> 32);
                b(j28 & 4294967295L, bArr4, 8);
                b((a10 + (j28 >> 32)) & 4294967295L, bArr4, 12);
                return bArr4;
            }
            int min = Math.min(16, length - i2);
            System.arraycopy(bArr2, i2, bArr3, 0, min);
            bArr3[min] = 1;
            if (min != 16) {
                Arrays.fill(bArr3, min + 1, 17, (byte) 0);
            }
            long j29 = a6 * 5;
            long j30 = a5 * 5;
            long j31 = a4 * 5;
            long a11 = j5 + (a(0, bArr3) & 67108863);
            long a12 = j2 + ((a(i, bArr3) >> 2) & 67108863);
            long a13 = j + ((a(6, bArr3) >> 4) & 67108863);
            long a14 = j3 + ((a(9, bArr3) >> 6) & 67108863);
            long j32 = a3;
            long a15 = j4 + (((a(12, bArr3) >> 8) & 67108863) | (bArr3[16] << 24));
            long j33 = a12 * a2;
            long j34 = a12 * j32;
            long j35 = a13 * a2;
            long j36 = a12 * a4;
            long j37 = a13 * j32;
            long j38 = a14 * a2;
            long j39 = a12 * a5;
            long j40 = a13 * a4;
            long j41 = a14 * j32;
            long j42 = a15 * a2;
            long j43 = (a3 * 5 * a15) + (a14 * j31) + (a13 * j30) + (a12 * j29) + (a11 * a2);
            long j44 = j43 & 67108863;
            long j45 = a14 * j30;
            long j46 = j31 * a15;
            long j47 = j46 + j45 + (a13 * j29) + (a11 * j32) + j33 + (j43 >> 26);
            long j48 = j30 * a15;
            long j49 = j48 + (a14 * j29) + (a11 * a4) + j34 + j35 + (j47 >> 26);
            long j50 = (a15 * j29) + (a11 * a5) + j36 + j37 + j38 + (j49 >> 26);
            long j51 = (a11 * a6) + j39 + j40 + j41 + j42 + (j50 >> 26);
            long j52 = ((j51 >> 26) * 5) + j44;
            j2 = (j47 & 67108863) + (j52 >> 26);
            i2 += 16;
            j = j49 & 67108863;
            j3 = j50 & 67108863;
            j4 = j51 & 67108863;
            j5 = j52 & 67108863;
            a3 = j32;
            i = 3;
        }
    }
}
