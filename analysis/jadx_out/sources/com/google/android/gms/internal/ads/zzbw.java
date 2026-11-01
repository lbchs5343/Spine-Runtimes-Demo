package com.google.android.gms.internal.ads;

import g.tn;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzbw {

    /* renamed from: a, reason: collision with root package name */
    public final zzad[] f5020a;

    /* renamed from: b, reason: collision with root package name */
    public int f5021b;
    public final int zza;
    public final String zzb;
    public final int zzc;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzbw(String str, zzad... zzadVarArr) {
        int length = zzadVarArr.length;
        int i = 1;
        zzdb.zzd(length > 0);
        this.zzb = str;
        this.f5020a = zzadVarArr;
        this.zza = length;
        int zzb = zzbg.zzb(zzadVarArr[0].zzo);
        this.zzc = zzb == -1 ? zzbg.zzb(zzadVarArr[0].zzn) : zzb;
        String str2 = zzadVarArr[0].zzd;
        str2 = (str2 == null || str2.equals("und")) ? "" : str2;
        int i2 = zzadVarArr[0].zzf | 16384;
        while (true) {
            zzad[] zzadVarArr2 = this.f5020a;
            if (i >= zzadVarArr2.length) {
                return;
            }
            String str3 = zzadVarArr2[i].zzd;
            if (!str2.equals((str3 == null || str3.equals("und")) ? "" : str3)) {
                zzad[] zzadVarArr3 = this.f5020a;
                c(i, "languages", zzadVarArr3[0].zzd, zzadVarArr3[i].zzd);
                return;
            } else {
                zzad[] zzadVarArr4 = this.f5020a;
                if (i2 != (zzadVarArr4[i].zzf | 16384)) {
                    c(i, "role flags", Integer.toBinaryString(zzadVarArr4[0].zzf), Integer.toBinaryString(this.f5020a[i].zzf));
                    return;
                }
                i++;
            }
        }
    }

    public static void c(int i, String str, String str2, String str3) {
        StringBuilder o = tn.o("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        o.append(str3);
        o.append("' (track ");
        o.append(i);
        o.append(")");
        zzdt.zzd("TrackGroup", "", new IllegalStateException(o.toString()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbw.class == obj.getClass()) {
            zzbw zzbwVar = (zzbw) obj;
            if (this.zzb.equals(zzbwVar.zzb) && Arrays.equals(this.f5020a, zzbwVar.f5020a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f5021b;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f5020a) + ((this.zzb.hashCode() + 527) * 31);
        this.f5021b = hashCode;
        return hashCode;
    }

    public final int zza(zzad zzadVar) {
        int i = 0;
        while (true) {
            zzad[] zzadVarArr = this.f5020a;
            if (i >= zzadVarArr.length) {
                return -1;
            }
            if (zzadVar == zzadVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public final zzad zzb(int i) {
        return this.f5020a[i];
    }
}
