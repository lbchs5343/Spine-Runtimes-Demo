package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzajd {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4209a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static zzadu b(zzacs zzacsVar, boolean z, boolean z2) {
        zzadu zzaduVar;
        long j;
        long j2;
        int i;
        int[] iArr;
        long zzd = zzacsVar.zzd();
        long j3 = 4096;
        long j4 = -1;
        int i2 = (zzd > (-1L) ? 1 : (zzd == (-1L) ? 0 : -1));
        if (i2 != 0 && zzd <= 4096) {
            j3 = zzd;
        }
        zzed zzedVar = new zzed(64);
        int i3 = (int) j3;
        boolean z3 = false;
        int i4 = 0;
        boolean z4 = false;
        while (i4 < i3) {
            zzedVar.zzI(8);
            boolean z5 = true;
            if (!zzacsVar.zzm(zzedVar.zzN(), 0, 8, true)) {
                break;
            }
            long zzu = zzedVar.zzu();
            int zzg = zzedVar.zzg();
            if (zzu == 1) {
                j = j4;
                zzacsVar.zzh(zzedVar.zzN(), 8, 8);
                i = 16;
                zzedVar.zzK(16);
                j2 = zzedVar.zzt();
            } else {
                j = j4;
                if (zzu == 0) {
                    long zzd2 = zzacsVar.zzd();
                    if (zzd2 != j) {
                        zzu = (zzd2 - zzacsVar.zze()) + 8;
                    }
                }
                j2 = zzu;
                i = 8;
            }
            zzaduVar = null;
            int i5 = i2;
            long j5 = i;
            if (j2 < j5) {
                return new zzaic(zzg, j2, i);
            }
            i4 += i;
            if (zzg == 1836019574) {
                i3 += (int) j2;
                if (i5 != 0 && i3 > zzd) {
                    i3 = (int) zzd;
                }
                i2 = i5;
                j4 = j;
            } else {
                if (zzg == 1836019558 || zzg == 1836475768) {
                    z3 = true;
                    break;
                }
                z4 |= !(zzg != 1835295092);
                long j6 = zzd;
                if ((i4 + j2) - j5 >= i3) {
                    break;
                }
                int i6 = (int) (j2 - j5);
                i4 += i6;
                if (zzg == 1718909296) {
                    if (i6 < 8) {
                        return new zzaic(1718909296, i6, 8);
                    }
                    zzedVar.zzI(i6);
                    zzacsVar.zzh(zzedVar.zzN(), 0, i6);
                    int zzg2 = zzedVar.zzg();
                    boolean c2 = c(zzg2, z2) | z4;
                    zzedVar.zzM(4);
                    int zzb = zzedVar.zzb() / 4;
                    if (!c2 && zzb > 0) {
                        iArr = new int[zzb];
                        int i7 = 0;
                        while (true) {
                            if (i7 >= zzb) {
                                z5 = c2;
                                break;
                            }
                            int zzg3 = zzedVar.zzg();
                            iArr[i7] = zzg3;
                            if (c(zzg3, z2)) {
                                break;
                            }
                            i7++;
                        }
                    } else {
                        z5 = c2;
                        iArr = null;
                    }
                    if (!z5) {
                        return new zzaji(zzg2, iArr);
                    }
                    z4 = z5;
                } else if (i6 != 0) {
                    zzacsVar.zzg(i6);
                }
                i2 = i5;
                j4 = j;
                zzd = j6;
            }
        }
        zzaduVar = null;
        return !z4 ? zzaiz.zza : z != z3 ? z3 ? zzaiu.zza : zzaiu.zzb : zzaduVar;
    }

    public static boolean c(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579) {
            if (z) {
                return true;
            }
            i = 1751476579;
        }
        for (int i2 = 0; i2 < 29; i2++) {
            if (f4209a[i2] == i) {
                return true;
            }
        }
        return false;
    }

    public static zzadu zza(zzacs zzacsVar) throws IOException {
        return b(zzacsVar, true, false);
    }

    public static zzadu zzb(zzacs zzacsVar, boolean z) throws IOException {
        return b(zzacsVar, false, z);
    }
}
