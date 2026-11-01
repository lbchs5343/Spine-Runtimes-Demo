package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class zzyg extends zzyj {
    public abstract Pair l(zzyf zzyfVar, int[][][] iArr, int[] iArr2);

    @Override // com.google.android.gms.internal.ads.zzyj
    public final zzyk zzo(zzlq[] zzlqVarArr, zzwr zzwrVar, zzur zzurVar, zzbv zzbvVar) throws zzig {
        boolean z;
        int[] iArr;
        int[] iArr2 = new int[3];
        zzbw[][] zzbwVarArr = new zzbw[3][];
        int[][][] iArr3 = new int[3][][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzwrVar.zzb;
            zzbwVarArr[i] = new zzbw[i2];
            iArr3[i] = new int[i2][];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzlqVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < zzwrVar.zzb) {
            zzbw zzb = zzwrVar.zzb(i5);
            int i6 = zzb.zzc;
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z2 = true;
            while (i7 < i3) {
                zzlq zzlqVar = zzlqVarArr[i7];
                int i10 = 0;
                for (int i11 = 0; i11 < zzb.zza; i11++) {
                    i10 = Math.max(i10, zzlqVar.zzY(zzb.zzb(i11)) & 7);
                }
                boolean z3 = iArr2[i7] == 0;
                if (i10 > i9) {
                    z2 = z3;
                    i8 = i7;
                    i9 = i10;
                } else if (i10 == i9 && i6 == 5 && !z2 && z3) {
                    i8 = i7;
                    i9 = i10;
                    z2 = true;
                }
                i7++;
                i3 = 2;
            }
            if (i8 == i3) {
                iArr = new int[zzb.zza];
            } else {
                zzlq zzlqVar2 = zzlqVarArr[i8];
                int[] iArr5 = new int[zzb.zza];
                for (int i12 = 0; i12 < zzb.zza; i12++) {
                    iArr5[i12] = zzlqVar2.zzY(zzb.zzb(i12));
                }
                iArr = iArr5;
            }
            int i13 = iArr2[i8];
            zzbwVarArr[i8][i13] = zzb;
            iArr3[i8][i13] = iArr;
            iArr2[i8] = i13 + 1;
            i5++;
            i3 = 2;
        }
        zzwr[] zzwrVarArr = new zzwr[i3];
        String[] strArr = new String[i3];
        int[] iArr6 = new int[i3];
        int i14 = 0;
        while (i14 < i3) {
            int i15 = iArr2[i14];
            zzwrVarArr[i14] = new zzwr((zzbw[]) zzen.zzO(zzbwVarArr[i14], i15));
            iArr3[i14] = (int[][]) zzen.zzO(iArr3[i14], i15);
            strArr[i14] = zzlqVarArr[i14].zzU();
            iArr6[i14] = zzlqVarArr[i14].zzb();
            i14++;
            i3 = 2;
        }
        zzyf zzyfVar = new zzyf(iArr6, zzwrVarArr, iArr4, iArr3, new zzwr((zzbw[]) zzen.zzO(zzbwVarArr[2], iArr2[2])));
        Pair l = l(zzyfVar, iArr3, iArr4);
        zzyh[] zzyhVarArr = (zzyh[]) l.second;
        List[] listArr = new List[zzyhVarArr.length];
        for (int i16 = 0; i16 < zzyhVarArr.length; i16++) {
            zzyh zzyhVar = zzyhVarArr[i16];
            listArr[i16] = zzyhVar != null ? zzfzo.zzo(zzyhVar) : zzfzo.zzn();
        }
        zzfzl zzfzlVar = new zzfzl();
        for (int i17 = 0; i17 < 2; i17++) {
            zzwr zzd = zzyfVar.zzd(i17);
            List list = listArr[i17];
            for (int i18 = 0; i18 < zzd.zzb; i18++) {
                zzbw zzb2 = zzd.zzb(i18);
                boolean z4 = zzyfVar.zza(i17, i18, false) != 0;
                int i19 = zzb2.zza;
                int[] iArr7 = new int[i19];
                boolean[] zArr = new boolean[i19];
                for (int i20 = 0; i20 < zzb2.zza; i20++) {
                    iArr7[i20] = zzyfVar.zzb(i17, i18, i20) & 7;
                    int i21 = 0;
                    while (true) {
                        if (i21 >= list.size()) {
                            z = false;
                            break;
                        }
                        zzyh zzyhVar2 = (zzyh) list.get(i21);
                        if (zzyhVar2.zze().equals(zzb2) && zzyhVar2.zzb(i20) != -1) {
                            z = true;
                            break;
                        }
                        i21++;
                    }
                    zArr[i20] = z;
                }
                zzfzlVar.zzf(new zzcc(zzb2, z4, iArr7, zArr));
            }
        }
        zzwr zze = zzyfVar.zze();
        for (int i22 = 0; i22 < zze.zzb; i22++) {
            zzbw zzb3 = zze.zzb(i22);
            int[] iArr8 = new int[zzb3.zza];
            Arrays.fill(iArr8, 0);
            zzfzlVar.zzf(new zzcc(zzb3, false, iArr8, new boolean[zzb3.zza]));
        }
        return new zzyk((zzlr[]) l.first, (zzyd[]) l.second, new zzcd(zzfzlVar.zzi()), zzyfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void zzp(Object obj) {
    }
}
