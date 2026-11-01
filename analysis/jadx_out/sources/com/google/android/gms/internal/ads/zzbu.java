package com.google.android.gms.internal.ads;

import android.net.Uri;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzbu {

    /* renamed from: a, reason: collision with root package name */
    public static final zzaw f4996a;
    public static final Object zza = new Object();

    @Deprecated
    public Object zzc;
    public long zze;
    public long zzf;
    public long zzg;
    public boolean zzh;
    public boolean zzi;
    public zzaq zzj;
    public boolean zzk;
    public long zzl;
    public long zzm;
    public int zzn;
    public int zzo;
    public Object zzb = zza;
    public zzaw zzd = f4996a;

    static {
        zzak zzakVar = new zzak();
        zzakVar.zza("androidx.media3.common.Timeline");
        zzakVar.zzb(Uri.EMPTY);
        f4996a = zzakVar.zzc();
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbu.class.equals(obj.getClass())) {
            zzbu zzbuVar = (zzbu) obj;
            if (Objects.equals(this.zzb, zzbuVar.zzb) && Objects.equals(this.zzd, zzbuVar.zzd) && Objects.equals(this.zzj, zzbuVar.zzj) && this.zze == zzbuVar.zze && this.zzf == zzbuVar.zzf && this.zzg == zzbuVar.zzg && this.zzh == zzbuVar.zzh && this.zzi == zzbuVar.zzi && this.zzk == zzbuVar.zzk && this.zzm == zzbuVar.zzm && this.zzn == zzbuVar.zzn && this.zzo == zzbuVar.zzo) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((this.zzb.hashCode() + 217) * 31) + this.zzd.hashCode();
        zzaq zzaqVar = this.zzj;
        int hashCode2 = ((hashCode * 961) + (zzaqVar == null ? 0 : zzaqVar.hashCode())) * 31;
        long j = this.zze;
        int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.zzf;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.zzg;
        int i3 = ((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0)) * 31) + (this.zzk ? 1 : 0);
        long j4 = this.zzm;
        return ((((((i3 * 961) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.zzn) * 31) + this.zzo) * 31;
    }

    public final zzbu zza(Object obj, zzaw zzawVar, Object obj2, long j, long j2, long j3, boolean z, boolean z2, zzaq zzaqVar, long j4, long j5, int i, int i2, long j6) {
        this.zzb = obj;
        if (zzawVar == null) {
            zzawVar = f4996a;
        }
        this.zzd = zzawVar;
        this.zzc = null;
        this.zze = -9223372036854775807L;
        this.zzf = -9223372036854775807L;
        this.zzg = -9223372036854775807L;
        this.zzh = z;
        this.zzi = z2;
        this.zzj = zzaqVar;
        this.zzl = 0L;
        this.zzm = j5;
        this.zzn = 0;
        this.zzo = 0;
        this.zzk = false;
        return this;
    }

    public final boolean zzb() {
        return this.zzj != null;
    }
}
