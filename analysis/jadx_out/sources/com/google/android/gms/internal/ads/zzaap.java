package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;

/* loaded from: classes3.dex */
public final class zzaap {

    /* renamed from: e, reason: collision with root package name */
    public final zzaao f4020e;

    /* renamed from: f, reason: collision with root package name */
    public long f4021f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4022g;
    public final zzaat h;
    public boolean j;

    /* renamed from: c, reason: collision with root package name */
    public int f4018c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f4019d = -9223372036854775807L;
    public long k = -9223372036854775807L;

    /* renamed from: a, reason: collision with root package name */
    public long f4016a = -9223372036854775807L;
    public float i = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    public zzdc f4017b = zzdc.zza;

    public zzaap(Context context, zzaao zzaaoVar, long j) {
        this.f4020e = zzaaoVar;
        this.h = new zzaat(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x007e, code lost:
    
        if (r6 > 100000) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x008b, code lost:
    
        if (r21 >= r25) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0092, code lost:
    
        if (r18.j != false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(long j, long j2, long j3, long j4, boolean z, zzaan zzaanVar) throws zzig {
        int i;
        zzaanVar.f4014a = -9223372036854775807L;
        zzaanVar.f4015b = -9223372036854775807L;
        if (this.f4019d == -9223372036854775807L) {
            this.f4019d = j2;
        }
        long j5 = this.k;
        zzaat zzaatVar = this.h;
        if (j5 != j) {
            zzaatVar.zzd(j);
            this.k = j;
        }
        long j6 = (long) ((j - j2) / this.i);
        if (this.j) {
            j6 -= zzen.zzs(this.f4017b.zzb()) - j3;
        }
        zzaanVar.f4014a = j6;
        if (this.f4016a == -9223372036854775807L || this.f4022g) {
            int i2 = this.f4018c;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        i = 1;
                    } else {
                        if (i2 != 3) {
                            throw new IllegalStateException();
                        }
                        i = 1;
                        long zzs = zzen.zzs(this.f4017b.zzb()) - this.f4021f;
                        if (this.j) {
                            if (j6 < -30000) {
                            }
                        }
                    }
                }
                return 0;
            }
            i = 1;
        } else {
            i = 1;
        }
        if (!this.j || j2 == this.f4019d) {
            return 5;
        }
        long zzc = this.f4017b.zzc();
        long zza = zzaatVar.zza((zzaanVar.f4014a * 1000) + zzc);
        zzaanVar.f4015b = zza;
        long j7 = (zza - zzc) / 1000;
        zzaanVar.f4014a = j7;
        boolean z2 = (this.f4016a == -9223372036854775807L || this.f4022g) ? false : true;
        if (j7 < -500000 && !z) {
            zzaai zzaaiVar = (zzaai) this.f4020e;
            zzwg zzwgVar = zzaaiVar.ch;
            zzwgVar.getClass();
            int zzb = zzwgVar.zzb(j2 - zzaaiVar.cd);
            if (zzb != 0) {
                if (z2) {
                    zzhx zzhxVar = zzaaiVar.eu;
                    zzhxVar.zzd += zzb;
                    zzhxVar.zzf += zzaaiVar.p;
                } else {
                    zzaaiVar.eu.zzj++;
                    zzaaiVar.bg(zzb, zzaaiVar.p);
                }
                if (zzaaiVar.fb()) {
                    zzaaiVar.ez();
                }
                zzabl zzablVar = zzaaiVar.ac;
                if (zzablVar == null) {
                    return 4;
                }
                zzablVar.zzg(false);
                return 4;
            }
        }
        long j8 = zzaanVar.f4014a;
        if (j8 < -30000 && !z) {
            return z2 ? 3 : 2;
        }
        if (j8 > 50000) {
            return 5;
        }
        return i;
    }

    public final void zzb() {
        if (this.f4018c == 0) {
            this.f4018c = 1;
        }
    }

    public final void zzc(boolean z) {
        this.f4022g = z;
        this.f4016a = -9223372036854775807L;
    }

    public final void zzd() {
        this.f4018c = Math.min(this.f4018c, 0);
    }

    public final void zze(boolean z) {
        this.f4018c = z ? 1 : 0;
    }

    public final void zzf() {
        this.f4018c = Math.min(this.f4018c, 2);
    }

    public final void zzg() {
        this.j = true;
        this.f4021f = zzen.zzs(this.f4017b.zzb());
        this.h.zzg();
    }

    public final void zzh() {
        this.j = false;
        this.f4016a = -9223372036854775807L;
        this.h.zzh();
    }

    public final void zzi() {
        this.h.zzf();
        this.k = -9223372036854775807L;
        this.f4019d = -9223372036854775807L;
        this.f4018c = Math.min(this.f4018c, 1);
        this.f4016a = -9223372036854775807L;
    }

    public final void zzj(int i) {
        this.h.zzj(i);
    }

    public final void zzk(zzdc zzdcVar) {
        this.f4017b = zzdcVar;
    }

    public final void zzl(float f2) {
        this.h.zzc(f2);
    }

    public final void zzm(Surface surface) {
        this.h.zzi(surface);
        this.f4018c = Math.min(this.f4018c, 1);
    }

    public final void zzn(float f2) {
        if (f2 == this.i) {
            return;
        }
        this.i = f2;
        this.h.zze(f2);
    }

    public final boolean zzo(boolean z) {
        if (!z || this.f4018c != 3) {
            if (this.f4016a == -9223372036854775807L) {
                return false;
            }
            r2 = this.f4017b.zzb() < this.f4016a;
            return r2;
        }
        this.f4016a = -9223372036854775807L;
        return r2;
    }

    public final boolean zzp() {
        int i = this.f4018c;
        this.f4018c = 3;
        this.f4021f = zzen.zzs(this.f4017b.zzb());
        return i != 3;
    }
}
