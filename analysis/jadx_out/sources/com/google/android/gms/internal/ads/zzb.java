package com.google.android.gms.internal.ads;

import g.tn;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzb {

    /* renamed from: b, reason: collision with root package name */
    public final zza[] f4662b;
    public static final zzb zza = new zzb(new zza[0]);

    /* renamed from: a, reason: collision with root package name */
    public static final zza f4661a = new zza(0).zzb(0);
    public final long zzc = 0;
    public final int zzb = 0;
    public final int zzd = 0;

    static {
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public zzb(zza[] zzaVarArr) {
        this.f4662b = zzaVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzb.class == obj.getClass() && Arrays.equals(this.f4662b, ((zzb) obj).f4662b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f4662b) + (((int) (-9223372036854775807L)) * 961);
    }

    public final String toString() {
        return tn.x("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[", "])");
    }

    public final zza zza(int i) {
        return i < 0 ? f4661a : this.f4662b[i];
    }

    public final boolean zzb(int i) {
        zza(-1);
        int i2 = zza.zzi;
        return false;
    }
}
