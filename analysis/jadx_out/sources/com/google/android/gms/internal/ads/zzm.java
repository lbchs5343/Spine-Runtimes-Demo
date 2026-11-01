package com.google.android.gms.internal.ads;

import g.awf;
import g.tn;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzm {
    public static final zzm zza;

    /* renamed from: a, reason: collision with root package name */
    public int f8800a;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final byte[] zze;
    public final int zzf;
    public final int zzg;

    static {
        zzk zzkVar = new zzk();
        zzkVar.zzc(1);
        zzkVar.zzb(2);
        zzkVar.zzd(3);
        zza = zzkVar.zzg();
        zzk zzkVar2 = new zzk();
        zzkVar2.zzc(1);
        zzkVar2.zzb(1);
        zzkVar2.zzd(2);
        zzkVar2.zzg();
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public /* synthetic */ zzm(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = bArr;
        this.zzf = i4;
        this.zzg = i5;
    }

    public static String b(int i) {
        return i != -1 ? i != 1 ? i != 2 ? awf.ac(i, "Undefined color range ") : "Limited range" : "Full range" : "Unset color range";
    }

    public static String c(int i) {
        return i != -1 ? i != 6 ? i != 1 ? i != 2 ? awf.ac(i, "Undefined color space ") : "BT601" : "BT709" : "BT2020" : "Unset color space";
    }

    public static String d(int i) {
        return i != -1 ? i != 10 ? i != 1 ? i != 2 ? i != 3 ? i != 6 ? i != 7 ? awf.ac(i, "Undefined color transfer ") : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "sRGB" : "Linear" : "Gamma 2.2" : "Unset color transfer";
    }

    public static int zza(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int zzb(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    public static boolean zzg(zzm zzmVar) {
        if (zzmVar == null) {
            return true;
        }
        int i = zzmVar.zzb;
        if (i != -1 && i != 1 && i != 2) {
            return false;
        }
        int i2 = zzmVar.zzc;
        if (i2 != -1 && i2 != 2) {
            return false;
        }
        int i3 = zzmVar.zzd;
        if ((i3 != -1 && i3 != 3) || zzmVar.zze != null) {
            return false;
        }
        int i4 = zzmVar.zzg;
        if (i4 != -1 && i4 != 8) {
            return false;
        }
        int i5 = zzmVar.zzf;
        return i5 == -1 || i5 == 8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzm.class == obj.getClass()) {
            zzm zzmVar = (zzm) obj;
            if (this.zzb == zzmVar.zzb && this.zzc == zzmVar.zzc && this.zzd == zzmVar.zzd && Arrays.equals(this.zze, zzmVar.zze) && this.zzf == zzmVar.zzf && this.zzg == zzmVar.zzg) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f8800a;
        if (i != 0) {
            return i;
        }
        int hashCode = ((((Arrays.hashCode(this.zze) + ((((((this.zzb + 527) * 31) + this.zzc) * 31) + this.zzd) * 31)) * 31) + this.zzf) * 31) + this.zzg;
        this.f8800a = hashCode;
        return hashCode;
    }

    public final String toString() {
        String str;
        int i = this.zzf;
        int i2 = this.zzd;
        int i3 = this.zzc;
        String c2 = c(this.zzb);
        String b2 = b(i3);
        String d2 = d(i2);
        String str2 = "NA";
        if (i != -1) {
            str = i + "bit Luma";
        } else {
            str = "NA";
        }
        int i4 = this.zzg;
        if (i4 != -1) {
            str2 = i4 + "bit Chroma";
        }
        boolean z = this.zze != null;
        StringBuilder o = tn.o("ColorInfo(", c2, ", ", b2, ", ");
        o.append(d2);
        o.append(", ");
        o.append(z);
        o.append(", ");
        return awf.r(o, str, ", ", str2, ")");
    }

    public final zzk zzc() {
        zzk zzkVar = new zzk();
        zzkVar.f8776c = this.zzb;
        zzkVar.f8778e = this.zzc;
        zzkVar.f8779f = this.zzd;
        zzkVar.f8774a = this.zze;
        zzkVar.f8775b = this.zzf;
        zzkVar.f8777d = this.zzg;
        return zzkVar;
    }

    public final String zzd() {
        String str;
        String str2;
        if (zzf()) {
            String c2 = c(this.zzb);
            String b2 = b(this.zzc);
            String d2 = d(this.zzd);
            Locale locale = Locale.US;
            str = c2 + "/" + b2 + "/" + d2;
        } else {
            str = "NA/NA/NA";
        }
        if (zze()) {
            str2 = this.zzf + "/" + this.zzg;
        } else {
            str2 = "NA/NA";
        }
        return awf.i(str, "/", str2);
    }

    public final boolean zze() {
        return (this.zzf == -1 || this.zzg == -1) ? false : true;
    }

    public final boolean zzf() {
        return (this.zzb == -1 || this.zzc == -1 || this.zzd == -1) ? false : true;
    }
}
