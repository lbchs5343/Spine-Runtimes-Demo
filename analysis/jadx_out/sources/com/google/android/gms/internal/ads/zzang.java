package com.google.android.gms.internal.ads;

import g.dub;

/* loaded from: classes3.dex */
public final class zzang implements zzaob {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4383a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4384b;

    /* renamed from: c, reason: collision with root package name */
    public int f4385c;

    /* renamed from: d, reason: collision with root package name */
    public zzek f4386d;

    /* renamed from: e, reason: collision with root package name */
    public final zzamm f4387e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4388f;

    /* renamed from: g, reason: collision with root package name */
    public int f4389g;
    public int i;
    public boolean k;
    public final zzec h = new zzec(new byte[10], 10);
    public int j = 0;

    public zzang(zzamm zzammVar) {
        this.f4387e = zzammVar;
    }

    public final boolean l(zzed zzedVar, byte[] bArr, int i) {
        int min = Math.min(zzedVar.zzb(), i - this.f4385c);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzedVar.zzM(min);
        } else {
            zzedVar.zzH(bArr, this.f4385c, min);
        }
        int i2 = this.f4385c + min;
        this.f4385c = i2;
        return i2 == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zza(zzed zzedVar, int i) throws zzbh {
        int i2;
        long j;
        long j2;
        int i3;
        zzdb.zzb(this.f4386d);
        int i4 = i & 1;
        zzamm zzammVar = this.f4387e;
        int i5 = -1;
        int i6 = 2;
        ?? r7 = 0;
        if (i4 != 0) {
            int i7 = this.j;
            if (i7 != 0 && i7 != 1) {
                if (i7 != 2) {
                    int i8 = this.i;
                    if (i8 != -1) {
                        zzdt.zzf("PesReader", "Unexpected start indicator: expected " + i8 + " more bytes");
                    }
                    zzammVar.zzc(zzedVar.zze() == 0);
                } else {
                    zzdt.zzf("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            this.j = 1;
            this.f4385c = 0;
        }
        int i9 = i;
        while (zzedVar.zzb() > 0) {
            int i10 = this.j;
            if (i10 != 0) {
                zzec zzecVar = this.h;
                if (i10 != 1) {
                    if (i10 != i6) {
                        int zzb = zzedVar.zzb();
                        int i11 = this.i;
                        int i12 = i11 == i5 ? 0 : zzb - i11;
                        if (i12 > 0) {
                            zzb -= i12;
                            zzedVar.zzK(zzedVar.zzd() + zzb);
                        }
                        zzammVar.zza(zzedVar);
                        int i13 = this.i;
                        if (i13 != i5) {
                            int i14 = i13 - zzb;
                            this.i = i14;
                            if (i14 == 0) {
                                zzammVar.zzc(r7);
                                this.j = 1;
                                this.f4385c = r7;
                            }
                        }
                    } else {
                        if (l(zzedVar, zzecVar.zza, Math.min(10, this.f4389g)) && l(zzedVar, null, this.f4389g)) {
                            zzecVar.zzl(r7);
                            if (this.f4388f) {
                                zzecVar.zzn(4);
                                long zzd = zzecVar.zzd(3);
                                zzecVar.zzn(1);
                                int zzd2 = zzecVar.zzd(15) << 15;
                                zzecVar.zzn(1);
                                long zzd3 = zzecVar.zzd(15);
                                zzecVar.zzn(1);
                                if (this.f4383a || !this.k) {
                                    j2 = zzd;
                                    i3 = zzd2;
                                } else {
                                    zzecVar.zzn(4);
                                    j2 = zzd;
                                    zzecVar.zzn(1);
                                    int zzd4 = zzecVar.zzd(15) << 15;
                                    zzecVar.zzn(1);
                                    long zzd5 = zzecVar.zzd(15);
                                    zzecVar.zzn(1);
                                    i3 = zzd2;
                                    this.f4386d.zzb(zzd5 | (zzecVar.zzd(3) << 30) | zzd4);
                                    this.f4383a = true;
                                }
                                j = this.f4386d.zzb(zzd3 | (j2 << 30) | i3);
                            } else {
                                j = -9223372036854775807L;
                            }
                            i9 |= true != this.f4384b ? 0 : 4;
                            zzammVar.zzd(j, i9);
                            this.j = 3;
                            this.f4385c = 0;
                        }
                    }
                } else if (l(zzedVar, zzecVar.zza, 9)) {
                    zzecVar.zzl(0);
                    int zzd6 = zzecVar.zzd(24);
                    if (zzd6 != 1) {
                        dub.g(zzd6, "Unexpected start code prefix: ", "PesReader");
                        this.i = -1;
                        i2 = 0;
                    } else {
                        zzecVar.zzn(8);
                        int zzd7 = zzecVar.zzd(16);
                        zzecVar.zzn(5);
                        this.f4384b = zzecVar.zzp();
                        zzecVar.zzn(2);
                        this.f4388f = zzecVar.zzp();
                        this.k = zzecVar.zzp();
                        zzecVar.zzn(6);
                        int zzd8 = zzecVar.zzd(8);
                        this.f4389g = zzd8;
                        if (zzd7 == 0) {
                            this.i = -1;
                        } else {
                            int i15 = (zzd7 - 3) - zzd8;
                            this.i = i15;
                            if (i15 < 0) {
                                dub.g(i15, "Found negative packet payload size: ", "PesReader");
                                this.i = -1;
                            }
                        }
                        i2 = 2;
                    }
                    this.j = i2;
                    this.f4385c = 0;
                }
            } else {
                zzedVar.zzM(zzedVar.zzb());
            }
            i5 = -1;
            i6 = 2;
            r7 = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzb(zzek zzekVar, zzacu zzacuVar, zzaoa zzaoaVar) {
        this.f4386d = zzekVar;
        this.f4387e.zzb(zzacuVar, zzaoaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzc() {
        this.j = 0;
        this.f4385c = 0;
        this.f4383a = false;
        this.f4387e.zze();
    }

    public final boolean zzd(boolean z) {
        return this.j == 3 && this.i == -1;
    }
}
