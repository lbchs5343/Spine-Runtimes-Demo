package com.google.android.gms.internal.ads;

import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzamx implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public int f4356a;

    /* renamed from: b, reason: collision with root package name */
    public int f4357b;

    /* renamed from: c, reason: collision with root package name */
    public int f4358c;

    /* renamed from: d, reason: collision with root package name */
    public int f4359d;

    /* renamed from: e, reason: collision with root package name */
    public final zzec f4360e;

    /* renamed from: f, reason: collision with root package name */
    public long f4361f;

    /* renamed from: g, reason: collision with root package name */
    public zzadx f4362g;
    public final String h;
    public int i;
    public String j;
    public String k;
    public int l;
    public int m;
    public boolean n;
    public int o;
    public final int p;
    public int q;
    public boolean r;
    public long s;
    public final zzed t;
    public zzad u;
    public long v;

    public zzamx(String str, int i) {
        this.h = str;
        this.p = i;
        zzed zzedVar = new zzed(1024);
        this.t = zzedVar;
        byte[] zzN = zzedVar.zzN();
        this.f4360e = new zzec(zzN, zzN.length);
        this.f4361f = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x019f, code lost:
    
        if (r19.n == false) goto L89;
     */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) throws zzbh {
        int zzd;
        int i;
        int i2;
        boolean zzp;
        zzdb.zzb(this.f4362g);
        while (zzedVar.zzb() > 0) {
            int i3 = this.f4356a;
            if (i3 != 0) {
                if (i3 != 1) {
                    zzec zzecVar = this.f4360e;
                    zzed zzedVar2 = this.t;
                    if (i3 != 2) {
                        int min = Math.min(zzedVar.zzb(), this.q - this.o);
                        zzedVar.zzH(zzecVar.zza, this.o, min);
                        int i4 = this.o + min;
                        this.o = i4;
                        if (i4 == this.q) {
                            zzecVar.zzl(0);
                            if (!zzecVar.zzp()) {
                                this.n = true;
                                int zzd2 = zzecVar.zzd(1);
                                if (zzd2 == 1) {
                                    i2 = zzecVar.zzd(1);
                                    i = 1;
                                } else {
                                    i = zzd2;
                                    i2 = 0;
                                }
                                this.f4359d = i2;
                                if (i2 != 0) {
                                    throw zzbh.zza(null, null);
                                }
                                if (i == 1) {
                                    zzecVar.zzd((zzecVar.zzd(2) + 1) * 8);
                                    i = 1;
                                }
                                if (!zzecVar.zzp()) {
                                    throw zzbh.zza(null, null);
                                }
                                this.f4358c = zzecVar.zzd(6);
                                int zzd3 = zzecVar.zzd(4);
                                int zzd4 = zzecVar.zzd(3);
                                if (zzd3 != 0 || zzd4 != 0) {
                                    throw zzbh.zza(null, null);
                                }
                                if (i == 0) {
                                    int zzc = zzecVar.zzc();
                                    int zza = zzecVar.zza();
                                    zzabm zzb = zzabo.zzb(zzecVar, true);
                                    this.j = zzb.zzc;
                                    this.l = zzb.zza;
                                    this.i = zzb.zzb;
                                    int zza2 = zza - zzecVar.zza();
                                    zzecVar.zzl(zzc);
                                    byte[] bArr = new byte[(zza2 + 7) / 8];
                                    zzecVar.zzh(bArr, 0, zza2);
                                    zzab zzabVar = new zzab();
                                    zzabVar.zzL(this.k);
                                    zzabVar.zzZ("audio/mp4a-latm");
                                    zzabVar.zzA(this.j);
                                    zzabVar.zzz(this.i);
                                    zzabVar.zzaa(this.l);
                                    zzabVar.zzM(Collections.singletonList(bArr));
                                    zzabVar.zzP(this.h);
                                    zzabVar.zzX(this.p);
                                    zzad zzaf = zzabVar.zzaf();
                                    if (!zzaf.equals(this.u)) {
                                        this.u = zzaf;
                                        this.s = 1024000000 / zzaf.zzD;
                                        this.f4362g.zzl(zzaf);
                                    }
                                } else {
                                    int zza3 = zzecVar.zza();
                                    zzabm zzb2 = zzabo.zzb(zzecVar, true);
                                    this.j = zzb2.zzc;
                                    this.l = zzb2.zza;
                                    this.i = zzb2.zzb;
                                    zzecVar.zzn(zzecVar.zzd((zzecVar.zzd(2) + 1) * 8) - (zza3 - zzecVar.zza()));
                                }
                                int zzd5 = zzecVar.zzd(3);
                                this.m = zzd5;
                                if (zzd5 == 0) {
                                    zzecVar.zzn(8);
                                } else if (zzd5 == 1) {
                                    zzecVar.zzn(9);
                                } else if (zzd5 == 3 || zzd5 == 4 || zzd5 == 5) {
                                    zzecVar.zzn(6);
                                } else {
                                    if (zzd5 != 6 && zzd5 != 7) {
                                        throw new IllegalStateException();
                                    }
                                    zzecVar.zzn(1);
                                }
                                boolean zzp2 = zzecVar.zzp();
                                this.r = zzp2;
                                this.v = 0L;
                                if (zzp2) {
                                    if (i != 1) {
                                        do {
                                            zzp = zzecVar.zzp();
                                            this.v = (this.v << 8) + zzecVar.zzd(8);
                                        } while (zzp);
                                    } else {
                                        this.v = zzecVar.zzd((zzecVar.zzd(2) + 1) * 8);
                                    }
                                }
                                if (zzecVar.zzp()) {
                                    zzecVar.zzn(8);
                                }
                            }
                            if (this.f4359d != 0) {
                                throw zzbh.zza(null, null);
                            }
                            if (this.f4358c != 0) {
                                throw zzbh.zza(null, null);
                            }
                            if (this.m != 0) {
                                throw zzbh.zza(null, null);
                            }
                            int i5 = 0;
                            do {
                                zzd = zzecVar.zzd(8);
                                i5 += zzd;
                            } while (zzd == 255);
                            int zzc2 = zzecVar.zzc();
                            if ((zzc2 & 7) == 0) {
                                zzedVar2.zzL(zzc2 >> 3);
                            } else {
                                zzecVar.zzh(zzedVar2.zzN(), 0, i5 * 8);
                                zzedVar2.zzL(0);
                            }
                            this.f4362g.zzq(zzedVar2, i5);
                            zzdb.zzf(this.f4361f != -9223372036854775807L);
                            this.f4362g.zzs(this.f4361f, 1, i5, 0, null);
                            this.f4361f += this.s;
                            if (this.r) {
                                zzecVar.zzn((int) this.v);
                            }
                            this.f4356a = 0;
                        } else {
                            continue;
                        }
                    } else {
                        int zzm = ((this.f4357b & (-225)) << 8) | zzedVar.zzm();
                        this.q = zzm;
                        if (zzm > zzedVar2.zzN().length) {
                            zzedVar2.zzI(zzm);
                            byte[] zzN = zzedVar2.zzN();
                            zzecVar.zzk(zzN, zzN.length);
                        }
                        this.o = 0;
                        this.f4356a = 3;
                    }
                } else {
                    int zzm2 = zzedVar.zzm();
                    if ((zzm2 & 224) == 224) {
                        this.f4357b = zzm2;
                        this.f4356a = 2;
                    } else if (zzm2 != 86) {
                        this.f4356a = 0;
                    }
                }
            } else if (zzedVar.zzm() == 86) {
                this.f4356a = 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4362g = zzacuVar.zzw(zzaoaVar.zza(), 1);
        this.k = zzaoaVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.f4361f = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.f4356a = 0;
        this.f4361f = -9223372036854775807L;
        this.n = false;
    }
}
