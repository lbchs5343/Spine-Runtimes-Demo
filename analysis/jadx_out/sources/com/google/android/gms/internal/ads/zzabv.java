package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzabv {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final float zzk;
    public final String zzl;

    public zzabv(ArrayList arrayList, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f2, String str) {
        this.zza = arrayList;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = i8;
        this.zzj = i9;
        this.zzk = f2;
        this.zzl = str;
    }

    public static zzabv zza(zzed zzedVar) throws zzbh {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        float f2;
        try {
            zzedVar.zzM(4);
            int zzm = zzedVar.zzm() & 3;
            int i9 = zzm + 1;
            if (i9 == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzm2 = zzedVar.zzm() & 31;
            for (int i10 = 0; i10 < zzm2; i10++) {
                int zzq = zzedVar.zzq();
                int zzd = zzedVar.zzd();
                zzedVar.zzM(zzq);
                arrayList.add(zzdd.zze(zzedVar.zzN(), zzd, zzq));
            }
            int zzm3 = zzedVar.zzm();
            for (int i11 = 0; i11 < zzm3; i11++) {
                int zzq2 = zzedVar.zzq();
                int zzd2 = zzedVar.zzd();
                zzedVar.zzM(zzq2);
                arrayList.add(zzdd.zze(zzedVar.zzN(), zzd2, zzq2));
            }
            if (zzm2 > 0) {
                int i12 = zzm + 2;
                zzfo zzf = zzfp.zzf((byte[]) arrayList.get(0), i12, ((byte[]) arrayList.get(0)).length);
                int i13 = zzf.zze;
                int i14 = zzf.zzf;
                int i15 = zzf.zzh + 8;
                int i16 = zzf.zzi + 8;
                int i17 = zzf.zzj;
                int i18 = zzf.zzk;
                int i19 = zzf.zzl;
                int i20 = zzf.zzm;
                float f3 = zzf.zzg;
                str = zzdd.zzc(zzf.zza, zzf.zzb, zzf.zzc);
                i7 = i19;
                i8 = i20;
                f2 = f3;
                i4 = i16;
                i5 = i17;
                i6 = i18;
                i = i13;
                i2 = i14;
                i3 = i15;
            } else {
                str = null;
                i = -1;
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                i6 = -1;
                i7 = -1;
                i8 = 16;
                f2 = 1.0f;
            }
            return new zzabv(arrayList, i9, i, i2, i3, i4, i5, i6, i7, i8, f2, str);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw zzbh.zza("Error parsing AVC config", e2);
        }
    }
}
