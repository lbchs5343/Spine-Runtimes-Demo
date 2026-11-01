package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzba {
    public static final zzba zza = new zzba(new zzay());
    public final CharSequence zzb;
    public final CharSequence zzc;
    public final CharSequence zzd;
    public final CharSequence zze;
    public final CharSequence zzf;
    public final byte[] zzg;
    public final Integer zzh;
    public final Integer zzi;
    public final Integer zzj;

    @Deprecated
    public final Integer zzk;
    public final Boolean zzl;

    @Deprecated
    public final Integer zzm;
    public final Integer zzn;
    public final Integer zzo;
    public final Integer zzp;
    public final Integer zzq;
    public final Integer zzr;
    public final Integer zzs;
    public final CharSequence zzt;
    public final CharSequence zzu;
    public final CharSequence zzv;
    public final CharSequence zzw;
    public final CharSequence zzx;
    public final Integer zzy;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(1000, 36);
    }

    public zzba(zzay zzayVar) {
        Boolean bool = zzayVar.f4602b;
        Integer num = zzayVar.r;
        Integer num2 = zzayVar.k;
        int i = 1;
        int i2 = 0;
        if (bool != null) {
            if (!bool.booleanValue()) {
                num = -1;
            } else if (num == null || num.intValue() == -1) {
                if (num2 != null) {
                    switch (num2.intValue()) {
                        case 21:
                            i = 2;
                            break;
                        case 22:
                            i = 3;
                            break;
                        case 23:
                            i = 4;
                            break;
                        case 24:
                            i = 5;
                            break;
                        case 25:
                            i = 6;
                            break;
                    }
                    num = Integer.valueOf(i);
                }
                i = 0;
                num = Integer.valueOf(i);
            }
        } else if (num != null) {
            boolean z = num.intValue() != -1;
            bool = Boolean.valueOf(z);
            if (z && num2 == null) {
                switch (num.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i2 = 21;
                        break;
                    case 3:
                        i2 = 22;
                        break;
                    case 4:
                        i2 = 23;
                        break;
                    case 5:
                        i2 = 24;
                        break;
                    case 6:
                        i2 = 25;
                        break;
                    default:
                        i2 = 20;
                        break;
                }
                num2 = Integer.valueOf(i2);
            }
        } else {
            num = null;
        }
        this.zzb = zzayVar.h;
        this.zzc = zzayVar.q;
        this.zzd = zzayVar.u;
        this.zze = zzayVar.f4605e;
        this.zzf = zzayVar.f4607g;
        this.zzg = zzayVar.l;
        this.zzh = zzayVar.v;
        this.zzi = zzayVar.f4601a;
        this.zzj = zzayVar.p;
        this.zzk = num;
        this.zzl = bool;
        Integer num3 = zzayVar.f4606f;
        this.zzm = num3;
        this.zzn = num3;
        this.zzo = zzayVar.o;
        this.zzp = zzayVar.f4604d;
        this.zzq = zzayVar.f4603c;
        this.zzr = zzayVar.n;
        this.zzs = zzayVar.s;
        this.zzt = zzayVar.w;
        this.zzu = zzayVar.m;
        this.zzv = zzayVar.t;
        this.zzw = zzayVar.i;
        this.zzx = zzayVar.j;
        this.zzy = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzba.class == obj.getClass()) {
            zzba zzbaVar = (zzba) obj;
            if (Objects.equals(this.zzb, zzbaVar.zzb) && Objects.equals(this.zzc, zzbaVar.zzc) && Objects.equals(this.zzd, zzbaVar.zzd) && Objects.equals(this.zze, zzbaVar.zze) && Objects.equals(this.zzf, zzbaVar.zzf) && Arrays.equals(this.zzg, zzbaVar.zzg) && Objects.equals(this.zzh, zzbaVar.zzh) && Objects.equals(this.zzi, zzbaVar.zzi) && Objects.equals(this.zzj, zzbaVar.zzj) && Objects.equals(this.zzk, zzbaVar.zzk) && Objects.equals(this.zzl, zzbaVar.zzl) && Objects.equals(this.zzn, zzbaVar.zzn) && Objects.equals(this.zzo, zzbaVar.zzo) && Objects.equals(this.zzp, zzbaVar.zzp) && Objects.equals(this.zzq, zzbaVar.zzq) && Objects.equals(this.zzr, zzbaVar.zzr) && Objects.equals(this.zzs, zzbaVar.zzs) && Objects.equals(this.zzt, zzbaVar.zzt) && Objects.equals(this.zzu, zzbaVar.zzu) && Objects.equals(this.zzv, zzbaVar.zzv) && Objects.equals(this.zzw, zzbaVar.zzw) && Objects.equals(this.zzx, zzbaVar.zzx) && Objects.equals(this.zzy, zzbaVar.zzy)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzb, this.zzc, this.zzd, this.zze, null, null, this.zzf, null, null, null, Integer.valueOf(Arrays.hashCode(this.zzg)), this.zzh, null, this.zzi, this.zzj, this.zzk, this.zzl, null, this.zzn, this.zzo, this.zzp, this.zzq, this.zzr, this.zzs, this.zzt, this.zzu, this.zzv, null, null, this.zzw, null, this.zzx, this.zzy, Boolean.TRUE});
    }

    public final zzay zza() {
        zzay zzayVar = new zzay();
        zzayVar.h = this.zzb;
        zzayVar.q = this.zzc;
        zzayVar.u = this.zzd;
        zzayVar.f4605e = this.zze;
        zzayVar.f4607g = this.zzf;
        zzayVar.l = this.zzg;
        zzayVar.v = this.zzh;
        zzayVar.f4601a = this.zzi;
        zzayVar.p = this.zzj;
        zzayVar.r = this.zzk;
        zzayVar.f4602b = this.zzl;
        zzayVar.f4606f = this.zzn;
        zzayVar.o = this.zzo;
        zzayVar.f4604d = this.zzp;
        zzayVar.f4603c = this.zzq;
        zzayVar.n = this.zzr;
        zzayVar.s = this.zzs;
        zzayVar.w = this.zzt;
        zzayVar.m = this.zzu;
        zzayVar.t = this.zzv;
        zzayVar.i = this.zzw;
        zzayVar.j = this.zzx;
        zzayVar.k = this.zzy;
        return zzayVar;
    }
}
