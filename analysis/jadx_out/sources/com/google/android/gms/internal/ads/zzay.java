package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzay {

    /* renamed from: a, reason: collision with root package name */
    public Integer f4601a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f4602b;

    /* renamed from: c, reason: collision with root package name */
    public Integer f4603c;

    /* renamed from: d, reason: collision with root package name */
    public Integer f4604d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f4605e;

    /* renamed from: f, reason: collision with root package name */
    public Integer f4606f;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f4607g;
    public CharSequence h;
    public CharSequence i;
    public CharSequence j;
    public Integer k;
    public byte[] l;
    public CharSequence m;
    public Integer n;
    public Integer o;
    public Integer p;
    public CharSequence q;
    public Integer r;
    public Integer s;
    public CharSequence t;
    public CharSequence u;
    public Integer v;
    public CharSequence w;

    public final zzay zza(byte[] bArr, int i) {
        if (this.l != null && !Integer.valueOf(i).equals(3) && Objects.equals(this.v, 3)) {
            return this;
        }
        this.l = (byte[]) bArr.clone();
        this.v = Integer.valueOf(i);
        return this;
    }

    public final zzay zzb(zzba zzbaVar) {
        if (zzbaVar != null) {
            CharSequence charSequence = zzbaVar.zzb;
            if (charSequence != null) {
                this.h = charSequence;
            }
            CharSequence charSequence2 = zzbaVar.zzc;
            if (charSequence2 != null) {
                this.q = charSequence2;
            }
            CharSequence charSequence3 = zzbaVar.zzd;
            if (charSequence3 != null) {
                this.u = charSequence3;
            }
            CharSequence charSequence4 = zzbaVar.zze;
            if (charSequence4 != null) {
                this.f4605e = charSequence4;
            }
            CharSequence charSequence5 = zzbaVar.zzf;
            if (charSequence5 != null) {
                this.f4607g = charSequence5;
            }
            byte[] bArr = zzbaVar.zzg;
            if (bArr != null) {
                Integer num = zzbaVar.zzh;
                this.l = (byte[]) bArr.clone();
                this.v = num;
            }
            Integer num2 = zzbaVar.zzi;
            if (num2 != null) {
                this.f4601a = num2;
            }
            Integer num3 = zzbaVar.zzj;
            if (num3 != null) {
                this.p = num3;
            }
            Integer num4 = zzbaVar.zzk;
            if (num4 != null) {
                this.r = num4;
            }
            Boolean bool = zzbaVar.zzl;
            if (bool != null) {
                this.f4602b = bool;
            }
            Integer num5 = zzbaVar.zzm;
            if (num5 != null) {
                this.f4606f = num5;
            }
            Integer num6 = zzbaVar.zzn;
            if (num6 != null) {
                this.f4606f = num6;
            }
            Integer num7 = zzbaVar.zzo;
            if (num7 != null) {
                this.o = num7;
            }
            Integer num8 = zzbaVar.zzp;
            if (num8 != null) {
                this.f4604d = num8;
            }
            Integer num9 = zzbaVar.zzq;
            if (num9 != null) {
                this.f4603c = num9;
            }
            Integer num10 = zzbaVar.zzr;
            if (num10 != null) {
                this.n = num10;
            }
            Integer num11 = zzbaVar.zzs;
            if (num11 != null) {
                this.s = num11;
            }
            CharSequence charSequence6 = zzbaVar.zzt;
            if (charSequence6 != null) {
                this.w = charSequence6;
            }
            CharSequence charSequence7 = zzbaVar.zzu;
            if (charSequence7 != null) {
                this.m = charSequence7;
            }
            CharSequence charSequence8 = zzbaVar.zzv;
            if (charSequence8 != null) {
                this.t = charSequence8;
            }
            CharSequence charSequence9 = zzbaVar.zzw;
            if (charSequence9 != null) {
                this.i = charSequence9;
            }
            CharSequence charSequence10 = zzbaVar.zzx;
            if (charSequence10 != null) {
                this.j = charSequence10;
            }
            Integer num12 = zzbaVar.zzy;
            if (num12 != null) {
                this.k = num12;
            }
        }
        return this;
    }

    public final zzay zzc(CharSequence charSequence) {
        this.f4605e = charSequence;
        return this;
    }

    public final zzay zzd(CharSequence charSequence) {
        this.u = charSequence;
        return this;
    }

    public final zzay zze(CharSequence charSequence) {
        this.q = charSequence;
        return this;
    }

    public final zzay zzf(CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    public final zzay zzg(CharSequence charSequence) {
        this.t = charSequence;
        return this;
    }

    public final zzay zzh(CharSequence charSequence) {
        this.f4607g = charSequence;
        return this;
    }

    public final zzay zzi(CharSequence charSequence) {
        this.i = charSequence;
        return this;
    }

    public final zzay zzj(Integer num) {
        this.f4604d = num;
        return this;
    }

    public final zzay zzk(Integer num) {
        this.o = num;
        return this;
    }

    public final zzay zzl(Integer num) {
        this.f4606f = num;
        return this;
    }

    public final zzay zzm(Integer num) {
        this.s = num;
        return this;
    }

    public final zzay zzn(Integer num) {
        this.n = num;
        return this;
    }

    public final zzay zzo(Integer num) {
        this.f4603c = num;
        return this;
    }

    public final zzay zzp(CharSequence charSequence) {
        this.j = charSequence;
        return this;
    }

    public final zzay zzq(CharSequence charSequence) {
        this.h = charSequence;
        return this;
    }

    public final zzay zzr(Integer num) {
        this.p = num;
        return this;
    }

    public final zzay zzs(Integer num) {
        this.f4601a = num;
        return this;
    }

    public final zzay zzt(CharSequence charSequence) {
        this.w = charSequence;
        return this;
    }

    public final zzba zzu() {
        return new zzba(this);
    }
}
