package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.dub;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzfp {
    public static final byte[] zza = {0, 0, 0, 1};
    public static final float[] zzb = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8121a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static int[] f8122b = new int[10];

    public static zzfd c(zzfq zzfqVar) {
        zzfqVar.zze();
        return new zzfd(zzfqVar.zza(6), zzfqVar.zza(6), zzfqVar.zza(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzfe d(zzfq zzfqVar, boolean z, int i, zzfe zzfeVar) {
        int[] iArr;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        int i5;
        int i6;
        int[] iArr2 = new int[6];
        if (z) {
            int zza2 = zzfqVar.zza(2);
            z3 = zzfqVar.zzh();
            i5 = zzfqVar.zza(5);
            i6 = 0;
            for (int i7 = 0; i7 < 32; i7++) {
                if (zzfqVar.zzh()) {
                    i6 |= 1 << i7;
                }
            }
            for (int i8 = 0; i8 < 6; i8++) {
                iArr2[i8] = zzfqVar.zza(8);
            }
            i2 = zza2;
        } else {
            if (zzfeVar == null) {
                iArr = iArr2;
                i2 = 0;
                z2 = false;
                i3 = 0;
                i4 = 0;
                int zza3 = zzfqVar.zza(8);
                int i9 = 0;
                for (int i10 = 0; i10 < i; i10++) {
                    if (zzfqVar.zzh()) {
                        i9 += 88;
                    }
                    if (zzfqVar.zzh()) {
                        i9 += 8;
                    }
                }
                zzfqVar.zzf(i9);
                if (i > 0) {
                    int i11 = 8 - i;
                    zzfqVar.zzf(i11 + i11);
                }
                return new zzfe(i2, z2, i3, i4, iArr, zza3);
            }
            int i12 = zzfeVar.zza;
            z3 = zzfeVar.zzb;
            i5 = zzfeVar.zzc;
            i6 = zzfeVar.zzd;
            iArr2 = zzfeVar.zze;
            i2 = i12;
        }
        iArr = iArr2;
        z2 = z3;
        i3 = i5;
        i4 = i6;
        int zza32 = zzfqVar.zza(8);
        int i92 = 0;
        while (i10 < i) {
        }
        zzfqVar.zzf(i92);
        if (i > 0) {
        }
        return new zzfe(i2, z2, i3, i4, iArr, zza32);
    }

    public static void e(zzfq zzfqVar) {
        int zzc = zzfqVar.zzc() + 1;
        zzfqVar.zzf(8);
        for (int i = 0; i < zzc; i++) {
            zzfqVar.zzc();
            zzfqVar.zzc();
            zzfqVar.zze();
        }
        zzfqVar.zzf(20);
    }

    public static int zza(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        zzdb.zzf(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            zzh(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            zzh(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            zzh(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b2 = bArr[i5];
            if ((b2 & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b2 == 1) {
                    zzh(zArr);
                    return i6;
                }
                i5 = i6;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2;
        synchronized (f8121a) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    try {
                        if (i3 >= i - 2) {
                            i3 = i;
                            break;
                        }
                        int i5 = i3 + 1;
                        if (bArr[i3] == 0 && bArr[i5] == 0 && bArr[i3 + 2] == 3) {
                            break;
                        }
                        i3 = i5;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = f8122b;
                    int length = iArr.length;
                    if (length <= i4) {
                        f8122b = Arrays.copyOf(iArr, length + length);
                    }
                    f8122b[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = f8122b[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i7 = i10 + 2;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:176:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzfj zzc(byte[] bArr, int i, int i2, zzfm zzfmVar) {
        boolean z;
        int zzc;
        int i3;
        int i4;
        int i5;
        int zzc2;
        int zzc3;
        int i6;
        int i7;
        int i8;
        zzfe zzfeVar;
        boolean z2;
        int i9;
        int zzc4;
        int i10;
        int i11;
        int i12;
        int i13;
        float f2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        zzfl zzflVar;
        int i20;
        int i21;
        int i22;
        zzfd zzfdVar;
        zzfe zzfeVar2;
        int i23;
        zzfh zzfhVar;
        zzfd c2 = c(new zzfq(bArr, i, i2));
        zzfq zzfqVar = new zzfq(bArr, i + 2, i2);
        zzfqVar.zzf(4);
        int zza2 = zzfqVar.zza(3);
        if (c2.zzb == 0 || zza2 != 7) {
            z = false;
        } else {
            zza2 = 7;
            z = true;
        }
        int i24 = (zzfmVar == null || zzfmVar.zza.isEmpty()) ? 0 : ((zzfc) zzfmVar.zza.get(Math.min(c2.zzb, zzfmVar.zza.size() - 1))).zza;
        zzfe zzfeVar3 = null;
        if (!z) {
            zzfqVar.zze();
            zzfeVar3 = d(zzfqVar, true, zza2, null);
        } else if (zzfmVar != null) {
            zzff zzffVar = zzfmVar.zzb;
            int i25 = zzffVar.zzb[i24];
            if (zzffVar.zza.size() > i25) {
                zzfeVar3 = (zzfe) zzfmVar.zzb.zza.get(i25);
            }
        }
        int i26 = i24;
        int zzc5 = zzfqVar.zzc();
        if (z) {
            int zza3 = zzfqVar.zzh() ? zzfqVar.zza(8) : -1;
            if (zzfmVar != null && (zzfhVar = zzfmVar.zzc) != null) {
                if (zza3 == -1) {
                    zza3 = zzfhVar.zzb[i26];
                }
                if (zza3 != -1 && zzfhVar.zza.size() > zza3) {
                    zzfg zzfgVar = (zzfg) zzfmVar.zzc.zza.get(zza3);
                    zzc = zzfgVar.zza;
                    i5 = zzfgVar.zzd;
                    i4 = zzfgVar.zze;
                    zzc2 = zzfgVar.zzb;
                    zzc3 = zzfgVar.zzc;
                }
            }
            z2 = z;
            zzfeVar = zzfeVar3;
            i8 = 0;
            i7 = 0;
            i6 = 0;
            i4 = 0;
            zzc = 0;
            int zzc6 = zzfqVar.zzc();
            if (z2) {
                i9 = -1;
                for (int i27 = true != zzfqVar.zzh() ? zza2 : 0; i27 <= zza2; i27++) {
                    zzfqVar.zzc();
                    i9 = Math.max(zzfqVar.zzc(), i9);
                    zzfqVar.zzc();
                }
            } else {
                i9 = -1;
            }
            int i28 = 1;
            zzfqVar.zzc();
            zzfqVar.zzc();
            zzfqVar.zzc();
            zzfqVar.zzc();
            zzfqVar.zzc();
            zzfqVar.zzc();
            if (zzfqVar.zzh()) {
                int i29 = 6;
                if (z2 && zzfqVar.zzh()) {
                    zzfqVar.zzf(6);
                } else if (zzfqVar.zzh()) {
                    int i30 = 0;
                    while (i30 < 4) {
                        int i31 = 0;
                        while (i31 < i29) {
                            if (zzfqVar.zzh()) {
                                int min = Math.min(64, i28 << ((i30 + i30) + 4));
                                if (i30 > 1) {
                                    zzfqVar.zzb();
                                }
                                for (int i32 = 0; i32 < min; i32++) {
                                    zzfqVar.zzb();
                                }
                            } else {
                                zzfqVar.zzc();
                            }
                            i31 += i30 == 3 ? 3 : 1;
                            i29 = 6;
                            i28 = 1;
                        }
                        i30++;
                        i29 = 6;
                        i28 = 1;
                    }
                }
            }
            zzfqVar.zzf(2);
            if (zzfqVar.zzh()) {
                zzfqVar.zzf(8);
                zzfqVar.zzc();
                zzfqVar.zzc();
                zzfqVar.zze();
            }
            zzc4 = zzfqVar.zzc();
            i10 = 0;
            int[] iArr = new int[0];
            int i33 = i9;
            int[] iArr2 = new int[0];
            int i34 = -1;
            int i35 = -1;
            while (i10 < zzc4) {
                if (i10 == 0 || !zzfqVar.zzh()) {
                    i21 = zzc4;
                    i22 = i10;
                    zzfdVar = c2;
                    zzfeVar2 = zzfeVar;
                    int zzc7 = zzfqVar.zzc();
                    int zzc8 = zzfqVar.zzc();
                    int[] iArr3 = new int[zzc7];
                    int i36 = 0;
                    while (i36 < zzc7) {
                        iArr3[i36] = (i36 > 0 ? iArr3[i36 - 1] : 0) - (zzfqVar.zzc() + 1);
                        zzfqVar.zze();
                        i36++;
                    }
                    int[] iArr4 = new int[zzc8];
                    int i37 = 0;
                    while (i37 < zzc8) {
                        iArr4[i37] = zzfqVar.zzc() + 1 + (i37 > 0 ? iArr4[i37 - 1] : 0);
                        zzfqVar.zze();
                        i37++;
                    }
                    iArr2 = iArr3;
                    iArr = iArr4;
                    i35 = zzc8;
                    i34 = zzc7;
                } else {
                    i21 = zzc4;
                    int i38 = i34 + i35;
                    boolean zzh = zzfqVar.zzh();
                    boolean z3 = true;
                    int zzc9 = zzfqVar.zzc() + 1;
                    int i39 = 1 - ((zzh ? 1 : 0) + (zzh ? 1 : 0));
                    i22 = i10;
                    int i40 = i38 + 1;
                    zzfdVar = c2;
                    boolean[] zArr = new boolean[i40];
                    int i41 = 0;
                    while (i41 <= i38) {
                        if (zzfqVar.zzh()) {
                            zArr[i41] = z3;
                        } else {
                            zArr[i41] = zzfqVar.zzh();
                        }
                        i41++;
                        z3 = true;
                    }
                    int i42 = i35 - 1;
                    int[] iArr5 = new int[i40];
                    int[] iArr6 = new int[i40];
                    int i43 = 0;
                    while (true) {
                        i23 = i39 * zzc9;
                        if (i42 < 0) {
                            break;
                        }
                        int i44 = iArr[i42] + i23;
                        if (i44 < 0 && zArr[i34 + i42]) {
                            iArr5[i43] = i44;
                            i43++;
                        }
                        i42--;
                    }
                    if (i23 < 0 && zArr[i38]) {
                        iArr5[i43] = i23;
                        i43++;
                    }
                    zzfeVar2 = zzfeVar;
                    int i45 = i43;
                    for (int i46 = 0; i46 < i34; i46++) {
                        int i47 = iArr2[i46] + i23;
                        if (i47 < 0 && zArr[i46]) {
                            iArr5[i45] = i47;
                            i45++;
                        }
                    }
                    int[] copyOf = Arrays.copyOf(iArr5, i45);
                    int i48 = 0;
                    for (int i49 = i34 - 1; i49 >= 0; i49--) {
                        int i50 = iArr2[i49] + i23;
                        if (i50 > 0 && zArr[i49]) {
                            iArr6[i48] = i50;
                            i48++;
                        }
                    }
                    if (i23 > 0 && zArr[i38]) {
                        iArr6[i48] = i23;
                        i48++;
                    }
                    iArr2 = copyOf;
                    int i51 = i48;
                    for (int i52 = 0; i52 < i35; i52++) {
                        int i53 = iArr[i52] + i23;
                        if (i53 > 0 && zArr[i34 + i52]) {
                            iArr6[i51] = i53;
                            i51++;
                        }
                    }
                    iArr = Arrays.copyOf(iArr6, i51);
                    i34 = i45;
                    i35 = i51;
                }
                i10 = i22 + 1;
                zzc4 = i21;
                zzfeVar = zzfeVar2;
                c2 = zzfdVar;
            }
            zzfd zzfdVar2 = c2;
            zzfe zzfeVar4 = zzfeVar;
            if (zzfqVar.zzh()) {
                int zzc10 = zzfqVar.zzc();
                for (int i54 = 0; i54 < zzc10; i54++) {
                    zzfqVar.zzf(zzc6 + 5);
                }
            }
            zzfqVar.zzf(2);
            float f3 = 1.0f;
            if (zzfqVar.zzh()) {
                i11 = i4;
                i12 = zzc;
                i13 = i33;
                f2 = 1.0f;
                i14 = -1;
                i15 = -1;
                i16 = -1;
            } else {
                if (zzfqVar.zzh()) {
                    int zza4 = zzfqVar.zza(8);
                    if (zza4 == 255) {
                        int zza5 = zzfqVar.zza(16);
                        int zza6 = zzfqVar.zza(16);
                        if (zza5 != 0 && zza6 != 0) {
                            f3 = zza5 / zza6;
                        }
                    } else if (zza4 < 17) {
                        f3 = zzb[zza4];
                    } else {
                        dub.g(zza4, "Unexpected aspect_ratio_idc value: ", "NalUnitUtil");
                    }
                }
                if (zzfqVar.zzh()) {
                    zzfqVar.zze();
                }
                if (zzfqVar.zzh()) {
                    zzfqVar.zzf(3);
                    i19 = true != zzfqVar.zzh() ? 2 : 1;
                    if (zzfqVar.zzh()) {
                        int zza7 = zzfqVar.zza(8);
                        int zza8 = zzfqVar.zza(8);
                        zzfqVar.zzf(8);
                        i17 = zzm.zza(zza7);
                        i18 = zzm.zzb(zza8);
                    } else {
                        i17 = -1;
                        i18 = -1;
                    }
                } else if (zzfmVar == null || (zzflVar = zzfmVar.zzd) == null || zzflVar.zza.size() <= (i20 = zzflVar.zzb[i26])) {
                    i17 = -1;
                    i18 = -1;
                    i19 = -1;
                } else {
                    zzfk zzfkVar = (zzfk) zzfmVar.zzd.zza.get(i20);
                    int i55 = zzfkVar.zza;
                    int i56 = zzfkVar.zzb;
                    i18 = zzfkVar.zzc;
                    i17 = i55;
                    i19 = i56;
                }
                if (zzfqVar.zzh()) {
                    zzfqVar.zzc();
                    zzfqVar.zzc();
                }
                zzfqVar.zze();
                if (zzfqVar.zzh()) {
                    i4 += i4;
                }
                i16 = i18;
                i15 = i19;
                i11 = i4;
                i12 = zzc;
                i13 = i33;
                i14 = i17;
                f2 = f3;
            }
            return new zzfj(zzfdVar2, zzfeVar4, i12, i8, i7, zzc5, i6, i11, f2, i13, i14, i15, i16);
        }
        zzc = zzfqVar.zzc();
        if (zzc == 3) {
            zzfqVar.zze();
            i3 = 3;
        } else {
            i3 = zzc;
        }
        int zzc11 = zzfqVar.zzc();
        int zzc12 = zzfqVar.zzc();
        if (zzfqVar.zzh()) {
            int zzc13 = zzfqVar.zzc();
            int zzc14 = zzfqVar.zzc();
            int zzc15 = zzfqVar.zzc();
            int zzc16 = zzfqVar.zzc();
            zzc11 -= (zzc13 + zzc14) * ((i3 == 1 || i3 == 2) ? 2 : 1);
            zzc12 -= (zzc15 + zzc16) * (i3 == 1 ? 2 : 1);
        }
        i4 = zzc12;
        i5 = zzc11;
        zzc2 = zzfqVar.zzc();
        zzc3 = zzfqVar.zzc();
        int i57 = zzc3;
        i8 = zzc2;
        z2 = z;
        zzfeVar = zzfeVar3;
        i6 = i5;
        i7 = i57;
        int zzc62 = zzfqVar.zzc();
        if (z2) {
        }
        int i282 = 1;
        zzfqVar.zzc();
        zzfqVar.zzc();
        zzfqVar.zzc();
        zzfqVar.zzc();
        zzfqVar.zzc();
        zzfqVar.zzc();
        if (zzfqVar.zzh()) {
        }
        zzfqVar.zzf(2);
        if (zzfqVar.zzh()) {
        }
        zzc4 = zzfqVar.zzc();
        i10 = 0;
        int[] iArr7 = new int[0];
        int i332 = i9;
        int[] iArr22 = new int[0];
        int i342 = -1;
        int i352 = -1;
        while (i10 < zzc4) {
        }
        zzfd zzfdVar22 = c2;
        zzfe zzfeVar42 = zzfeVar;
        if (zzfqVar.zzh()) {
        }
        zzfqVar.zzf(2);
        float f32 = 1.0f;
        if (zzfqVar.zzh()) {
        }
        return new zzfj(zzfdVar22, zzfeVar42, i12, i8, i7, zzc5, i6, i11, f2, i13, i14, i15, i16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzfm zzd(byte[] bArr, int i, int i2) {
        int i3;
        int[] iArr;
        zzfl zzflVar;
        boolean z;
        int i4;
        zzfzo zzfzoVar;
        int i5;
        int i6;
        int i7;
        zzfd zzfdVar;
        int i8;
        int i9;
        boolean[][] zArr;
        int[] iArr2;
        boolean[][] zArr2;
        int[] iArr3;
        int i10;
        int i11;
        int i12;
        boolean zzh;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int zzc;
        int i18;
        int i19;
        boolean z2;
        boolean z3;
        zzfq zzfqVar = new zzfq(bArr, i, i2);
        zzfd c2 = c(zzfqVar);
        zzfqVar.zzf(4);
        boolean zzh2 = zzfqVar.zzh();
        boolean zzh3 = zzfqVar.zzh();
        int zza2 = zzfqVar.zza(6);
        int i20 = zza2 + 1;
        int zza3 = zzfqVar.zza(3);
        zzfqVar.zzf(17);
        zzfe d2 = d(zzfqVar, true, zza3, null);
        for (int i21 = true != zzfqVar.zzh() ? zza3 : 0; i21 <= zza3; i21++) {
            zzfqVar.zzc();
            zzfqVar.zzc();
            zzfqVar.zzc();
        }
        int zza4 = zzfqVar.zza(6);
        int zzc2 = zzfqVar.zzc() + 1;
        zzff zzffVar = new zzff(zzfzo.zzo(d2), new int[1]);
        boolean z4 = i20 >= 2 && zzc2 >= 2;
        boolean z5 = zzh2 && zzh3;
        int i22 = zza4 + 1;
        if (!z4 || !z5 || i22 < i20) {
            return new zzfm(c2, null, zzffVar, null, null);
        }
        Class cls = Integer.TYPE;
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) cls, zzc2, i22);
        int[] iArr5 = new int[zzc2];
        int[] iArr6 = new int[zzc2];
        iArr4[0][0] = 0;
        iArr5[0] = 1;
        iArr6[0] = 0;
        for (int i23 = 1; i23 < zzc2; i23++) {
            int i24 = 0;
            for (int i25 = 0; i25 <= zza4; i25++) {
                if (zzfqVar.zzh()) {
                    iArr4[i23][i24] = i25;
                    iArr6[i23] = i25;
                    i24++;
                }
                iArr5[i23] = i24;
            }
        }
        if (zzfqVar.zzh()) {
            zzfqVar.zzf(64);
            if (zzfqVar.zzh()) {
                zzfqVar.zzc();
            }
            int zzc3 = zzfqVar.zzc();
            int i26 = 0;
            while (i26 < zzc3) {
                zzfqVar.zzc();
                if (i26 == 0 || zzfqVar.zzh()) {
                    boolean zzh4 = zzfqVar.zzh();
                    boolean zzh5 = zzfqVar.zzh();
                    if (zzh4 || zzh5) {
                        zzh = zzfqVar.zzh();
                        i13 = zzc3;
                        if (zzh) {
                            zzfqVar.zzf(19);
                        }
                        zzfqVar.zzf(8);
                        if (zzh) {
                            zzfqVar.zzf(4);
                        }
                        zzfqVar.zzf(15);
                        i15 = zzh4;
                        i14 = zzh5;
                        i16 = 0;
                        while (i16 <= zza3) {
                            if (zzfqVar.zzh() || zzfqVar.zzh()) {
                                zzfqVar.zzc();
                            } else if (zzfqVar.zzh()) {
                                i17 = i16;
                                zzc = 0;
                                zzfd zzfdVar2 = c2;
                                i18 = i15 + i14;
                                int[][] iArr7 = iArr4;
                                i19 = 0;
                                while (i19 < i18) {
                                    int i27 = i18;
                                    for (int i28 = 0; i28 <= zzc; i28++) {
                                        zzfqVar.zzc();
                                        zzfqVar.zzc();
                                        if (zzh) {
                                            zzfqVar.zzc();
                                            zzfqVar.zzc();
                                        }
                                        zzfqVar.zze();
                                    }
                                    i19++;
                                    i18 = i27;
                                }
                                i16 = i17 + 1;
                                c2 = zzfdVar2;
                                iArr4 = iArr7;
                            }
                            i17 = i16;
                            zzc = zzfqVar.zzc();
                            zzfd zzfdVar22 = c2;
                            i18 = i15 + i14;
                            int[][] iArr72 = iArr4;
                            i19 = 0;
                            while (i19 < i18) {
                            }
                            i16 = i17 + 1;
                            c2 = zzfdVar22;
                            iArr4 = iArr72;
                        }
                        i26++;
                        zzc3 = i13;
                    } else {
                        i13 = zzc3;
                        z3 = zzh4;
                        z2 = zzh5;
                    }
                } else {
                    i13 = zzc3;
                    z3 = false;
                    z2 = false;
                }
                zzh = false;
                i15 = z3;
                i14 = z2;
                i16 = 0;
                while (i16 <= zza3) {
                }
                i26++;
                zzc3 = i13;
            }
        }
        zzfd zzfdVar3 = c2;
        int[][] iArr8 = iArr4;
        if (!zzfqVar.zzh()) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        zzfqVar.zzd();
        zzfe d3 = d(zzfqVar, false, zza3, d2);
        boolean zzh6 = zzfqVar.zzh();
        boolean[] zArr3 = new boolean[16];
        int i29 = 0;
        for (int i30 = 0; i30 < 16; i30++) {
            boolean zzh7 = zzfqVar.zzh();
            zArr3[i30] = zzh7;
            if (zzh7) {
                i29++;
            }
        }
        if (i29 == 0 || !zArr3[1]) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        int i31 = i29 + 1;
        int[] iArr9 = new int[i29];
        for (int i32 = 0; i32 < i29 - (zzh6 ? 1 : 0); i32++) {
            iArr9[i32] = zzfqVar.zza(3);
        }
        int[] iArr10 = new int[i31];
        if (zzh6) {
            for (int i33 = 1; i33 < i29; i33++) {
                for (int i34 = 0; i34 < i33; i34++) {
                    iArr10[i33] = iArr9[i34] + 1 + iArr10[i33];
                }
            }
            iArr10[i29] = 6;
        }
        int[][] iArr11 = (int[][]) Array.newInstance((Class<?>) cls, i20, i29);
        int[] iArr12 = new int[i20];
        iArr12[0] = 0;
        boolean zzh8 = zzfqVar.zzh();
        int i35 = 1;
        while (i35 < i20) {
            if (zzh8) {
                iArr12[i35] = zzfqVar.zza(6);
            } else {
                iArr12[i35] = i35;
            }
            if (zzh6) {
                i12 = i35;
                for (int i36 = 0; i36 < i29; i36++) {
                    iArr11[i12][i36] = (iArr12[i12] & ((1 << iArr10[r31]) - 1)) >> iArr10[i36];
                }
            } else {
                int i37 = 0;
                while (i37 < i29) {
                    iArr11[i35][i37] = zzfqVar.zza(iArr9[i37] + 1);
                    i37++;
                    i35 = i35;
                }
                i12 = i35;
            }
            i35 = i12 + 1;
        }
        int[] iArr13 = new int[i22];
        int i38 = 1;
        int i39 = 0;
        while (i39 < i20) {
            iArr13[iArr12[i39]] = -1;
            int[] iArr14 = iArr13;
            int i40 = 0;
            int i41 = 0;
            while (i40 < 16) {
                if (zArr3[i40]) {
                    i11 = 1;
                    if (i40 == 1) {
                        iArr14[iArr12[i39]] = iArr11[i39][i41];
                        i40 = 1;
                    }
                    i41++;
                } else {
                    i11 = 1;
                }
                i40 += i11;
            }
            if (i39 > 0) {
                int i42 = 0;
                while (true) {
                    if (i42 >= i39) {
                        i38++;
                        break;
                    }
                    if (iArr14[iArr12[i39]] == iArr14[iArr12[i42]]) {
                        break;
                    }
                    i42++;
                }
            }
            i39++;
            iArr13 = iArr14;
        }
        int[] iArr15 = iArr13;
        int zza5 = zzfqVar.zza(4);
        if (i38 < 2 || zza5 == 0) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        int[] iArr16 = new int[i38];
        for (int i43 = 0; i43 < i38; i43++) {
            iArr16[i43] = zzfqVar.zza(zza5);
        }
        int[] iArr17 = new int[i22];
        for (int i44 = 0; i44 < i20; i44++) {
            iArr17[Math.min(iArr12[i44], zza4)] = i44;
        }
        zzfzl zzfzlVar = new zzfzl();
        int i45 = 0;
        while (i45 <= zza4) {
            int[] iArr18 = iArr16;
            int i46 = i38;
            int min = Math.min(iArr15[i45], i46 - 1);
            int[] iArr19 = iArr17;
            zzfzlVar.zzf(new zzfc(iArr19[i45], min >= 0 ? iArr18[min] : -1));
            i45++;
            i38 = i46;
            iArr16 = iArr18;
            iArr17 = iArr19;
        }
        zzfzo zzi = zzfzlVar.zzi();
        if (((zzfc) zzi.get(0)).zzb == -1) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        int i47 = 1;
        while (true) {
            zzfd zzfdVar4 = zzfdVar3;
            if (i47 > zza4) {
                zzfdVar3 = zzfdVar4;
                i3 = -1;
                i47 = -1;
                break;
            }
            zzfdVar3 = zzfdVar4;
            i3 = -1;
            if (((zzfc) zzi.get(i47)).zzb != -1) {
                break;
            }
            i47++;
        }
        if (i47 == i3) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        Class cls2 = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls2, i20, i20);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls2, i20, i20);
        int i48 = 1;
        while (i48 < i20) {
            boolean[][] zArr6 = zArr5;
            for (int i49 = 0; i49 < i48; i49++) {
                boolean[] zArr7 = zArr4[i48];
                boolean[] zArr8 = zArr6[i48];
                boolean zzh9 = zzfqVar.zzh();
                zArr8[i49] = zzh9;
                zArr7[i49] = zzh9;
            }
            i48++;
            zArr5 = zArr6;
        }
        boolean[][] zArr9 = zArr5;
        for (int i50 = 1; i50 < i20; i50++) {
            int i51 = 0;
            while (i51 < zza2) {
                int i52 = i51;
                int i53 = 0;
                while (true) {
                    if (i53 < i50) {
                        boolean[] zArr10 = zArr9[i50];
                        if (zArr10[i53] && zArr9[i53][i52]) {
                            zArr10[i52] = true;
                            break;
                        }
                        i53++;
                    }
                }
                i51 = i52 + 1;
            }
        }
        int[] iArr20 = new int[i22];
        int i54 = 0;
        while (i54 < i20) {
            int[] iArr21 = iArr20;
            int i55 = 0;
            for (int i56 = 0; i56 < i54; i56++) {
                i55 += zArr4[i54][i56] ? 1 : 0;
            }
            iArr21[iArr12[i54]] = i55;
            i54++;
            iArr20 = iArr21;
        }
        int[] iArr22 = iArr20;
        int i57 = 0;
        for (int i58 = 0; i58 < i20; i58++) {
            if (iArr22[iArr12[i58]] == 0) {
                i57++;
            }
        }
        if (i57 > 1) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        int[] iArr23 = new int[i20];
        int[] iArr24 = new int[zzc2];
        if (zzfqVar.zzh()) {
            iArr = iArr24;
            int i59 = 0;
            while (i59 < i20) {
                int i60 = i59;
                iArr23[i60] = zzfqVar.zza(3);
                i59 = i60 + 1;
            }
        } else {
            iArr = iArr24;
            Arrays.fill(iArr23, 0, i20, zza3);
        }
        int i61 = 0;
        while (i61 < zzc2) {
            int[] iArr25 = iArr23;
            int i62 = i61;
            int[] iArr26 = iArr12;
            int i63 = 0;
            for (int i64 = 0; i64 < iArr5[i62]; i64++) {
                i63 = Math.max(i63, iArr25[((zzfc) zzi.get(iArr8[i62][i64])).zza]);
            }
            iArr[i62] = i63 + 1;
            i61 = i62 + 1;
            iArr23 = iArr25;
            iArr12 = iArr26;
        }
        int[] iArr27 = iArr12;
        if (zzfqVar.zzh()) {
            int i65 = 0;
            while (i65 < zza2) {
                int i66 = i65 + 1;
                int i67 = i66;
                while (i67 < i20) {
                    if (zArr4[i67][i65]) {
                        i10 = i65;
                        zzfqVar.zzf(3);
                    } else {
                        i10 = i65;
                    }
                    i67++;
                    i65 = i10;
                }
                i65 = i66;
            }
        }
        zzfqVar.zze();
        int zzc4 = zzfqVar.zzc() + 1;
        zzfzl zzfzlVar2 = new zzfzl();
        zzfzlVar2.zzf(d2);
        if (zzc4 > 1) {
            zzfzlVar2.zzf(d3);
            for (int i68 = 2; i68 < zzc4; i68++) {
                d3 = d(zzfqVar, zzfqVar.zzh(), zza3, d3);
                zzfzlVar2.zzf(d3);
            }
        }
        zzfzo zzi2 = zzfzlVar2.zzi();
        int zzc5 = zzfqVar.zzc() + zzc2;
        if (zzc5 > zzc2) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        int zza6 = zzfqVar.zza(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) cls2, zzc5, i22);
        int[] iArr28 = new int[zzc5];
        int i69 = 0;
        int[] iArr29 = new int[zzc5];
        int i70 = 0;
        while (i70 < zzc2) {
            iArr28[i70] = i69;
            int i71 = i70;
            int i72 = iArr6[i71];
            iArr29[i71] = i72;
            if (zza6 == 0) {
                iArr2 = iArr6;
                zArr2 = zArr11;
                iArr3 = iArr28;
                Arrays.fill(zArr11[i71], 0, iArr5[i71], true);
                iArr3[i71] = iArr5[i71];
            } else {
                iArr2 = iArr6;
                zArr2 = zArr11;
                iArr3 = iArr28;
                if (zza6 == 1) {
                    for (int i73 = 0; i73 < iArr5[i71]; i73++) {
                        zArr2[i71][i73] = iArr8[i71][i73] == i72;
                    }
                    iArr3[i71] = 1;
                } else {
                    i69 = 0;
                    zArr2[0][0] = true;
                    iArr3[0] = 1;
                    i70 = i71 + 1;
                    iArr6 = iArr2;
                    zArr11 = zArr2;
                    iArr28 = iArr3;
                }
            }
            i69 = 0;
            i70 = i71 + 1;
            iArr6 = iArr2;
            zArr11 = zArr2;
            iArr28 = iArr3;
        }
        boolean[][] zArr12 = zArr11;
        int[] iArr30 = iArr28;
        int[] iArr31 = new int[i22];
        int i74 = 2;
        int[] iArr32 = new int[2];
        iArr32[1] = i22;
        iArr32[i69] = zzc5;
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) cls2, iArr32);
        int i75 = 1;
        int i76 = 0;
        while (i75 < zzc5) {
            if (zza6 == i74) {
                for (int i77 = 0; i77 < iArr5[i75]; i77++) {
                    zArr12[i75][i77] = zzfqVar.zzh();
                    int i78 = iArr30[i75];
                    boolean z6 = zArr12[i75][i77];
                    iArr30[i75] = i78 + (z6 ? 1 : 0);
                    if (z6) {
                        iArr29[i75] = iArr8[i75][i77];
                    }
                }
            }
            if (i76 == 0) {
                if (iArr8[i75][0] == 0 && zArr12[i75][0]) {
                    i76 = 0;
                    for (int i79 = 1; i79 < iArr5[i75]; i79++) {
                        if (iArr8[i75][i79] == i47 && zArr12[i75][i47]) {
                            i76 = i75;
                        }
                    }
                } else {
                    i76 = 0;
                }
            }
            int i80 = 0;
            while (i80 < iArr5[i75]) {
                if (zzc4 > 1) {
                    zArr13[i75][i80] = zArr12[i75][i80];
                    zArr = zArr4;
                    i8 = zzc4;
                    int zza7 = zzgch.zza(zzc4, RoundingMode.CEILING);
                    if (!zArr13[i75][i80]) {
                        int i81 = ((zzfc) zzi.get(iArr8[i75][i80])).zza;
                        int i82 = 0;
                        while (i82 < i80) {
                            i9 = zza6;
                            if (zArr9[i81][((zzfc) zzi.get(iArr8[i75][i82])).zza]) {
                                zArr13[i75][i80] = true;
                                break;
                            }
                            i82++;
                            zza6 = i9;
                        }
                    }
                    i9 = zza6;
                    if (zArr13[i75][i80]) {
                        if (i76 <= 0 || i75 != i76) {
                            zzfqVar.zzf(zza7);
                        } else {
                            iArr31[i80] = zzfqVar.zza(zza7);
                        }
                    }
                } else {
                    i8 = zzc4;
                    i9 = zza6;
                    zArr = zArr4;
                }
                i80++;
                zArr4 = zArr;
                zzc4 = i8;
                zza6 = i9;
            }
            int i83 = zzc4;
            int i84 = zza6;
            boolean[][] zArr14 = zArr4;
            if (iArr30[i75] == 1 && iArr22[iArr29[i75]] > 0) {
                zzfqVar.zze();
            }
            i75++;
            zArr4 = zArr14;
            zzc4 = i83;
            zza6 = i84;
            i74 = 2;
        }
        boolean[][] zArr15 = zArr4;
        if (i76 == 0) {
            return new zzfm(zzfdVar3, null, zzffVar, null, null);
        }
        zzfd zzfdVar5 = zzfdVar3;
        int zzc6 = zzfqVar.zzc();
        int i85 = zzc6 + 1;
        zzfzl zzi3 = zzfzo.zzi(i85);
        int[] iArr33 = new int[i20];
        int i86 = 0;
        while (i86 < i85) {
            int zza8 = zzfqVar.zza(16);
            int zza9 = zzfqVar.zza(16);
            if (zzfqVar.zzh()) {
                zzfzoVar = zzi;
                i5 = zzfqVar.zza(2);
                if (i5 == 3) {
                    zzfqVar.zze();
                }
                i6 = zzfqVar.zza(4);
                i7 = zzfqVar.zza(4);
            } else {
                zzfzoVar = zzi;
                i5 = 0;
                i6 = 0;
                i7 = 0;
            }
            if (zzfqVar.zzh()) {
                int zzc7 = zzfqVar.zzc();
                int zzc8 = zzfqVar.zzc();
                int zzc9 = zzfqVar.zzc();
                int zzc10 = zzfqVar.zzc();
                zzfdVar = zzfdVar5;
                zza8 -= (zzc7 + zzc8) * ((i5 == 1 || i5 == 2) ? 2 : 1);
                zza9 -= (zzc9 + zzc10) * (i5 == 1 ? 2 : 1);
            } else {
                zzfdVar = zzfdVar5;
            }
            zzi3.zzf(new zzfg(i5, i6, i7, zza8, zza9));
            i86++;
            zzi = zzfzoVar;
            zzfdVar5 = zzfdVar;
        }
        zzfzo zzfzoVar2 = zzi;
        zzfd zzfdVar6 = zzfdVar5;
        if (i85 <= 1 || !zzfqVar.zzh()) {
            for (int i87 = 1; i87 < i20; i87++) {
                iArr33[i87] = Math.min(i87, zzc6);
            }
        } else {
            int zza10 = zzgch.zza(i85, RoundingMode.CEILING);
            for (int i88 = 1; i88 < i20; i88++) {
                iArr33[i88] = zzfqVar.zza(zza10);
            }
        }
        zzfh zzfhVar = new zzfh(zzi3.zzi(), iArr33);
        zzfqVar.zzf(2);
        for (int i89 = 1; i89 < i20; i89++) {
            if (iArr22[iArr27[i89]] == 0) {
                zzfqVar.zze();
            }
        }
        for (int i90 = 1; i90 < zzc5; i90++) {
            boolean zzh10 = zzfqVar.zzh();
            int i91 = 0;
            while (i91 < iArr[i90]) {
                if ((i91 <= 0 || !zzh10) ? i91 == 0 : zzfqVar.zzh()) {
                    for (int i92 = 0; i92 < iArr5[i90]; i92++) {
                        if (zArr13[i90][i92]) {
                            zzfqVar.zzc();
                        }
                    }
                    zzfqVar.zzc();
                    zzfqVar.zzc();
                }
                i91++;
            }
        }
        int zzc11 = zzfqVar.zzc() + 2;
        if (zzfqVar.zzh()) {
            zzfqVar.zzf(zzc11);
        } else {
            for (int i93 = 1; i93 < i20; i93++) {
                for (int i94 = 0; i94 < i93; i94++) {
                    if (zArr15[i93][i94]) {
                        zzfqVar.zzf(zzc11);
                    }
                }
            }
        }
        int zzc12 = zzfqVar.zzc();
        for (int i95 = 1; i95 <= zzc12; i95++) {
            zzfqVar.zzf(8);
        }
        if (zzfqVar.zzh()) {
            zzfqVar.zzd();
            if (zzfqVar.zzh() || zzfqVar.zzh()) {
                zzfqVar.zze();
            }
            boolean zzh11 = zzfqVar.zzh();
            boolean zzh12 = zzfqVar.zzh();
            if (zzh11 || zzh12) {
                for (int i96 = 0; i96 < zzc2; i96++) {
                    for (int i97 = 0; i97 < iArr[i96]; i97++) {
                        boolean zzh13 = zzh11 ? zzfqVar.zzh() : false;
                        boolean zzh14 = zzh12 ? zzfqVar.zzh() : false;
                        if (zzh13) {
                            zzfqVar.zzf(32);
                        }
                        if (zzh14) {
                            zzfqVar.zzf(18);
                        }
                    }
                }
            }
            boolean zzh15 = zzfqVar.zzh();
            if (zzh15) {
                z = true;
                i4 = zzfqVar.zza(4) + 1;
            } else {
                z = true;
                i4 = i20;
            }
            zzfzl zzi4 = zzfzo.zzi(i4);
            int[] iArr34 = new int[i20];
            int i98 = 0;
            while (i98 < i4) {
                zzfqVar.zzf(3);
                int i99 = z != zzfqVar.zzh() ? 2 : 1;
                int zza11 = zzm.zza(zzfqVar.zza(8));
                int zzb2 = zzm.zzb(zzfqVar.zza(8));
                zzfqVar.zzf(8);
                zzi4.zzf(new zzfk(zza11, i99, zzb2));
                i98++;
                z = true;
            }
            if (zzh15 && i4 > 1) {
                for (int i100 = 0; i100 < i20; i100++) {
                    iArr34[i100] = zzfqVar.zza(4);
                }
            }
            zzflVar = new zzfl(zzi4.zzi(), iArr34);
        } else {
            zzflVar = null;
        }
        return new zzfm(zzfdVar6, zzfzoVar2, new zzff(zzi2, iArr31), zzfhVar, zzflVar);
    }

    public static zzfn zze(byte[] bArr, int i, int i2) {
        zzfq zzfqVar = new zzfq(bArr, 4, i2);
        int zzc = zzfqVar.zzc();
        int zzc2 = zzfqVar.zzc();
        zzfqVar.zze();
        return new zzfn(zzc, zzc2, zzfqVar.zzh());
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x022d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzfo zzf(byte[] bArr, int i, int i2) {
        int zzc;
        int i3;
        boolean z;
        int zzc2;
        int i4;
        int zzc3;
        int i5;
        int i6;
        boolean z2;
        boolean zzh;
        int i7;
        int i8;
        float f2;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean zzh2;
        boolean zzh3;
        int i13;
        zzfq zzfqVar = new zzfq(bArr, i, i2);
        int zza2 = zzfqVar.zza(8);
        int zza3 = zzfqVar.zza(8);
        int zza4 = zzfqVar.zza(8);
        int zzc4 = zzfqVar.zzc();
        if (zza2 != 100 && zza2 != 110 && zza2 != 122 && zza2 != 244 && zza2 != 44 && zza2 != 83 && zza2 != 86 && zza2 != 118 && zza2 != 128) {
            if (zza2 != 138) {
                i4 = 0;
                zzc = 1;
                z = false;
                zzc2 = 0;
                int zzc5 = zzfqVar.zzc() + 4;
                zzc3 = zzfqVar.zzc();
                if (zzc3 != 0) {
                    i6 = zzfqVar.zzc() + 4;
                    i5 = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_SIZE;
                } else {
                    if (zzc3 == 1) {
                        boolean zzh4 = zzfqVar.zzh();
                        zzfqVar.zzb();
                        zzfqVar.zzb();
                        long zzc6 = zzfqVar.zzc();
                        for (int i14 = 0; i14 < zzc6; i14++) {
                            zzfqVar.zzc();
                        }
                        z2 = zzh4;
                        i5 = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_SIZE;
                        zzc3 = 1;
                        i6 = 0;
                        int zzc7 = zzfqVar.zzc();
                        zzfqVar.zze();
                        int zzc8 = zzfqVar.zzc() + 1;
                        int zzc9 = zzfqVar.zzc() + 1;
                        zzh = zzfqVar.zzh();
                        int i15 = 2 - (zzh ? 1 : 0);
                        if (!zzh) {
                            zzfqVar.zze();
                        }
                        zzfqVar.zze();
                        int i16 = zzc8 * 16;
                        int i17 = zzc9 * i15 * 16;
                        if (zzfqVar.zzh()) {
                            int zzc10 = zzfqVar.zzc();
                            int zzc11 = zzfqVar.zzc();
                            int zzc12 = zzfqVar.zzc();
                            int zzc13 = zzfqVar.zzc();
                            if (zzc == 0) {
                                i13 = 1;
                            } else {
                                i13 = zzc == 3 ? 1 : 2;
                                i15 *= zzc == 1 ? 2 : 1;
                            }
                            i16 -= (zzc10 + zzc11) * i13;
                            i17 -= (zzc12 + zzc13) * i15;
                        }
                        if (zza2 != 44 && zza2 != 86 && zza2 != 100 && zza2 != 110 && zza2 != 122) {
                            if (zza2 == i5) {
                                zza2 = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_SIZE;
                            }
                            i7 = 16;
                            float f3 = 1.0f;
                            int i18 = -1;
                            if (zzfqVar.zzh()) {
                                i8 = i7;
                                f2 = 1.0f;
                                i9 = -1;
                                i10 = -1;
                            } else {
                                if (zzfqVar.zzh()) {
                                    int zza5 = zzfqVar.zza(8);
                                    if (zza5 == 255) {
                                        int zza6 = zzfqVar.zza(16);
                                        int zza7 = zzfqVar.zza(16);
                                        if (zza6 != 0 && zza7 != 0) {
                                            f3 = zza6 / zza7;
                                        }
                                    } else if (zza5 < 17) {
                                        f3 = zzb[zza5];
                                    } else {
                                        dub.g(zza5, "Unexpected aspect_ratio_idc value: ", "NalUnitUtil");
                                    }
                                }
                                if (zzfqVar.zzh()) {
                                    zzfqVar.zze();
                                }
                                if (zzfqVar.zzh()) {
                                    zzfqVar.zzf(3);
                                    int i19 = true != zzfqVar.zzh() ? 2 : 1;
                                    if (zzfqVar.zzh()) {
                                        int zza8 = zzfqVar.zza(8);
                                        int zza9 = zzfqVar.zza(8);
                                        zzfqVar.zzf(8);
                                        i11 = zzm.zza(zza8);
                                        i12 = zzm.zzb(zza9);
                                        i18 = i19;
                                        if (zzfqVar.zzh()) {
                                            zzfqVar.zzc();
                                            zzfqVar.zzc();
                                        }
                                        if (zzfqVar.zzh()) {
                                            zzfqVar.zzf(65);
                                        }
                                        zzh2 = zzfqVar.zzh();
                                        if (zzh2) {
                                            e(zzfqVar);
                                        }
                                        zzh3 = zzfqVar.zzh();
                                        if (zzh3) {
                                            e(zzfqVar);
                                        }
                                        if (!zzh2 || zzh3) {
                                            zzfqVar.zze();
                                        }
                                        zzfqVar.zze();
                                        if (zzfqVar.zzh()) {
                                            zzfqVar.zze();
                                            zzfqVar.zzc();
                                            zzfqVar.zzc();
                                            zzfqVar.zzc();
                                            zzfqVar.zzc();
                                            i7 = zzfqVar.zzc();
                                            zzfqVar.zzc();
                                        }
                                        i10 = i12;
                                        i8 = i7;
                                        f2 = f3;
                                        i9 = i18;
                                        i18 = i11;
                                    } else {
                                        i18 = i19;
                                    }
                                }
                                i11 = -1;
                                i12 = -1;
                                if (zzfqVar.zzh()) {
                                }
                                if (zzfqVar.zzh()) {
                                }
                                zzh2 = zzfqVar.zzh();
                                if (zzh2) {
                                }
                                zzh3 = zzfqVar.zzh();
                                if (zzh3) {
                                }
                                if (!zzh2) {
                                }
                                zzfqVar.zze();
                                zzfqVar.zze();
                                if (zzfqVar.zzh()) {
                                }
                                i10 = i12;
                                i8 = i7;
                                f2 = f3;
                                i9 = i18;
                                i18 = i11;
                            }
                            return new zzfo(zza2, zza3, zza4, zzc4, zzc7, i16, i17, f2, i4, zzc2, z, zzh, zzc5, zzc3, i6, z2, i18, i9, i10, i8);
                        }
                        if ((zza3 & 16) != 0) {
                            i7 = 0;
                            float f32 = 1.0f;
                            int i182 = -1;
                            if (zzfqVar.zzh()) {
                            }
                            return new zzfo(zza2, zza3, zza4, zzc4, zzc7, i16, i17, f2, i4, zzc2, z, zzh, zzc5, zzc3, i6, z2, i182, i9, i10, i8);
                        }
                        i7 = 16;
                        float f322 = 1.0f;
                        int i1822 = -1;
                        if (zzfqVar.zzh()) {
                        }
                        return new zzfo(zza2, zza3, zza4, zzc4, zzc7, i16, i17, f2, i4, zzc2, z, zzh, zzc5, zzc3, i6, z2, i1822, i9, i10, i8);
                    }
                    i5 = MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_SIZE;
                    i6 = 0;
                }
                z2 = false;
                int zzc72 = zzfqVar.zzc();
                zzfqVar.zze();
                int zzc82 = zzfqVar.zzc() + 1;
                int zzc92 = zzfqVar.zzc() + 1;
                zzh = zzfqVar.zzh();
                int i152 = 2 - (zzh ? 1 : 0);
                if (!zzh) {
                }
                zzfqVar.zze();
                int i162 = zzc82 * 16;
                int i172 = zzc92 * i152 * 16;
                if (zzfqVar.zzh()) {
                }
                if (zza2 != 44) {
                    if (zza2 == i5) {
                    }
                    i7 = 16;
                    float f3222 = 1.0f;
                    int i18222 = -1;
                    if (zzfqVar.zzh()) {
                    }
                    return new zzfo(zza2, zza3, zza4, zzc4, zzc72, i162, i172, f2, i4, zzc2, z, zzh, zzc5, zzc3, i6, z2, i18222, i9, i10, i8);
                }
                if ((zza3 & 16) != 0) {
                }
                i7 = 16;
                float f32222 = 1.0f;
                int i182222 = -1;
                if (zzfqVar.zzh()) {
                }
                return new zzfo(zza2, zza3, zza4, zzc4, zzc72, i162, i172, f2, i4, zzc2, z, zzh, zzc5, zzc3, i6, z2, i182222, i9, i10, i8);
            }
            zza2 = 138;
        }
        zzc = zzfqVar.zzc();
        if (zzc == 3) {
            z = zzfqVar.zzh();
            i3 = 3;
        } else {
            i3 = zzc;
            z = false;
        }
        int zzc14 = zzfqVar.zzc();
        zzc2 = zzfqVar.zzc();
        zzfqVar.zze();
        if (zzfqVar.zzh()) {
            int i20 = i3 != 3 ? 8 : 12;
            int i21 = 0;
            while (i21 < i20) {
                if (zzfqVar.zzh()) {
                    int i22 = i21 < 6 ? 16 : 64;
                    int i23 = 8;
                    int i24 = 8;
                    for (int i25 = 0; i25 < i22; i25++) {
                        if (i23 != 0) {
                            i23 = ((zzfqVar.zzb() + i24) + 256) % 256;
                        }
                        if (i23 != 0) {
                            i24 = i23;
                        }
                    }
                }
                i21++;
            }
        }
        i4 = zzc14;
        int zzc52 = zzfqVar.zzc() + 4;
        zzc3 = zzfqVar.zzc();
        if (zzc3 != 0) {
        }
        z2 = false;
        int zzc722 = zzfqVar.zzc();
        zzfqVar.zze();
        int zzc822 = zzfqVar.zzc() + 1;
        int zzc922 = zzfqVar.zzc() + 1;
        zzh = zzfqVar.zzh();
        int i1522 = 2 - (zzh ? 1 : 0);
        if (!zzh) {
        }
        zzfqVar.zze();
        int i1622 = zzc822 * 16;
        int i1722 = zzc922 * i1522 * 16;
        if (zzfqVar.zzh()) {
        }
        if (zza2 != 44) {
        }
        if ((zza3 & 16) != 0) {
        }
        i7 = 16;
        float f322222 = 1.0f;
        int i1822222 = -1;
        if (zzfqVar.zzh()) {
        }
        return new zzfo(zza2, zza3, zza4, zzc4, zzc722, i1622, i1722, f2, i4, zzc2, z, zzh, zzc52, zzc3, i6, z2, i1822222, i9, i10, i8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String zzg(List list) {
        for (int i = 0; i < list.size(); i++) {
            byte[] bArr = (byte[]) list.get(i);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                zzfzl zzfzlVar = new zzfzl();
                int i2 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i2 >= length2) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, length2, zArr);
                    if (zza2 != length2) {
                        zzfzlVar.zzf(Integer.valueOf(zza2));
                    }
                    i2 = zza2 + 3;
                }
                zzfzo zzi = zzfzlVar.zzi();
                for (int i3 = 0; i3 < zzi.size(); i3++) {
                    if (((Integer) zzi.get(i3)).intValue() + 3 < length) {
                        zzfq zzfqVar = new zzfq(bArr, ((Integer) zzi.get(i3)).intValue() + 3, length);
                        zzfd c2 = c(zzfqVar);
                        if (c2.zza == 33 && c2.zzb == 0) {
                            zzfqVar.zzf(4);
                            int zza3 = zzfqVar.zza(3);
                            zzfqVar.zze();
                            zzfe d2 = d(zzfqVar, true, zza3, null);
                            return zzdd.zzd(d2.zza, d2.zzb, d2.zzc, d2.zzd, d2.zze, d2.zzf);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static void zzh(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean zzi(byte b2) {
        if (((b2 & 96) >> 5) != 0) {
            return true;
        }
        int i = b2 & 31;
        return (i == 1 || i == 9 || i == 14) ? false : true;
    }
}
