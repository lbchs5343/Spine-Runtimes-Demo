package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzacn {
    public final String zza;

    public zzacn(String str) {
        this.zza = str;
    }

    public static zzacn zza(zzed zzedVar) {
        String str;
        zzedVar.zzM(2);
        int zzm = zzedVar.zzm();
        int i = zzm >> 1;
        int i2 = zzm & 1;
        int zzm2 = zzedVar.zzm() >> 3;
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        int i3 = zzm2 | (i2 << 5);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(i3 >= 10 ? "." : ".0");
        sb.append(i3);
        return new zzacn(sb.toString());
    }
}
