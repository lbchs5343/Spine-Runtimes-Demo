package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import g.dby;
import g.dsg;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaew implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public zzadc f4153a;

    /* renamed from: b, reason: collision with root package name */
    public dby f4154b;

    /* renamed from: c, reason: collision with root package name */
    public zzacu f4155c;

    /* renamed from: d, reason: collision with root package name */
    public int f4156d;

    /* renamed from: e, reason: collision with root package name */
    public zzadx f4157e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f4158f;

    /* renamed from: g, reason: collision with root package name */
    public int f4159g;
    public long h;
    public int i;
    public final zzed j;
    public int k;
    public final zzacx l;
    public zzbd m;

    public zzaew() {
        throw null;
    }

    public zzaew(int i) {
        this.f4158f = new byte[42];
        this.j = new zzed(new byte[32768], 0);
        this.l = new zzacx();
        this.f4159g = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        boolean zzp;
        int i;
        zzadq zzadpVar;
        long j;
        long j2;
        boolean z;
        long j3;
        boolean z2;
        int i2 = this.f4159g;
        if (i2 == 0) {
            zzacsVar.zzj();
            long zze = zzacsVar.zze();
            zzbd zza = zzacz.zza(zzacsVar, true);
            zzacsVar.zzk((int) (zzacsVar.zze() - zze));
            this.m = zza;
            this.f4159g = 1;
            return 0;
        }
        byte[] bArr = this.f4158f;
        if (i2 == 1) {
            zzacsVar.zzh(bArr, 0, 42);
            zzacsVar.zzj();
            this.f4159g = 2;
            return 0;
        }
        if (i2 == 2) {
            zzed zzedVar = new zzed(4);
            zzacsVar.zzi(zzedVar.zzN(), 0, 4);
            if (zzedVar.zzu() != 1716281667) {
                throw zzbh.zza("Failed to read FLAC stream marker.", null);
            }
            this.f4159g = 3;
            return 0;
        }
        if (i2 == 3) {
            zzadc zzadcVar = this.f4153a;
            do {
                zzacsVar.zzj();
                zzec zzecVar = new zzec(new byte[4], 4);
                zzacsVar.zzh(zzecVar.zza, 0, 4);
                zzp = zzecVar.zzp();
                int zzd = zzecVar.zzd(7);
                int zzd2 = zzecVar.zzd(24) + 4;
                if (zzd == 0) {
                    byte[] bArr2 = new byte[38];
                    zzacsVar.zzi(bArr2, 0, 38);
                    zzadcVar = new zzadc(bArr2, 4);
                } else {
                    if (zzadcVar == null) {
                        throw new IllegalArgumentException();
                    }
                    if (zzd == 3) {
                        zzed zzedVar2 = new zzed(zzd2);
                        zzacsVar.zzi(zzedVar2.zzN(), 0, zzd2);
                        zzadcVar = zzadcVar.zzf(zzacz.zzb(zzedVar2));
                    } else if (zzd == 4) {
                        zzed zzedVar3 = new zzed(zzd2);
                        zzacsVar.zzi(zzedVar3.zzN(), 0, zzd2);
                        zzedVar3.zzM(4);
                        zzadcVar = zzadcVar.zzg(Arrays.asList(zzaed.zzc(zzedVar3, false, false).zza));
                    } else if (zzd == 6) {
                        zzed zzedVar4 = new zzed(zzd2);
                        zzacsVar.zzi(zzedVar4.zzN(), 0, zzd2);
                        zzedVar4.zzM(4);
                        zzadcVar = zzadcVar.zze(zzfzo.zzo(zzafr.zzb(zzedVar4)));
                    } else {
                        zzacsVar.zzk(zzd2);
                    }
                }
                int i3 = zzen.zza;
                this.f4153a = zzadcVar;
            } while (!zzp);
            zzadcVar.getClass();
            this.i = Math.max(zzadcVar.zzc, 6);
            this.f4157e.zzl(this.f4153a.zzc(bArr, this.m));
            this.f4159g = 4;
            return 0;
        }
        if (i2 == 4) {
            zzacsVar.zzj();
            zzed zzedVar5 = new zzed(2);
            zzacsVar.zzh(zzedVar5.zzN(), 0, 2);
            int zzq = zzedVar5.zzq();
            if ((zzq >> 2) != 16382) {
                zzacsVar.zzj();
                throw zzbh.zza("First frame does not start with sync code.", null);
            }
            zzacsVar.zzj();
            this.k = zzq;
            zzacu zzacuVar = this.f4155c;
            int i4 = zzen.zza;
            long zzf = zzacsVar.zzf();
            long zzd3 = zzacsVar.zzd();
            final zzadc zzadcVar2 = this.f4153a;
            zzadcVar2.getClass();
            if (zzadcVar2.zzk != null) {
                zzadpVar = new zzada(zzadcVar2, zzf);
                i = 0;
            } else if (zzd3 == -1 || zzadcVar2.zzj <= 0) {
                i = 0;
                zzadpVar = new zzadp(zzadcVar2.zza(), 0L);
            } else {
                int i5 = this.k;
                zzabz zzabzVar = new zzabz() { // from class: com.google.android.gms.internal.ads.zzaes
                    @Override // com.google.android.gms.internal.ads.zzabz
                    public final long zza(long j4) {
                        return zzadc.this.zzb(j4);
                    }
                };
                dsg dsgVar = new dsg(zzadcVar2, i5);
                long zza2 = zzadcVar2.zza();
                long j4 = zzadcVar2.zzj;
                int i6 = zzadcVar2.zzd;
                if (i6 > 0) {
                    j = zzf;
                    i = 0;
                    j2 = ((i6 + zzadcVar2.zzc) / 2) + 1;
                } else {
                    j = zzf;
                    i = 0;
                    int i7 = zzadcVar2.zza;
                    long j5 = 4096;
                    if (i7 == zzadcVar2.zzb && i7 > 0) {
                        j5 = i7;
                    }
                    j2 = 64 + (((j5 * zzadcVar2.zzg) * zzadcVar2.zzh) / 8);
                }
                dby dbyVar = new dby(zzabzVar, dsgVar, zza2, j4, j, zzd3, j2, Math.max(6, zzadcVar2.zzc));
                this.f4154b = dbyVar;
                zzadpVar = dbyVar.zzb();
            }
            zzacuVar.zzO(zzadpVar);
            this.f4159g = 5;
            return i;
        }
        this.f4157e.getClass();
        zzadc zzadcVar3 = this.f4153a;
        zzadcVar3.getClass();
        dby dbyVar2 = this.f4154b;
        if (dbyVar2 != null && dbyVar2.zze()) {
            return dbyVar2.zza(zzacsVar, zzadnVar);
        }
        if (this.h == -1) {
            this.h = zzacy.zzb(zzacsVar, zzadcVar3);
            return 0;
        }
        zzed zzedVar6 = this.j;
        int zze2 = zzedVar6.zze();
        if (zze2 < 32768) {
            int zza3 = zzacsVar.zza(zzedVar6.zzN(), zze2, 32768 - zze2);
            z = zza3 == -1;
            if (!z) {
                zzedVar6.zzK(zze2 + zza3);
            } else if (zzedVar6.zzb() == 0) {
                long j6 = this.h * C.MICROS_PER_SECOND;
                zzadc zzadcVar4 = this.f4153a;
                int i8 = zzen.zza;
                this.f4157e.zzs(j6 / zzadcVar4.zze, 1, this.f4156d, 0, null);
                return -1;
            }
        } else {
            z = false;
        }
        int zzd4 = zzedVar6.zzd();
        int i9 = this.f4156d;
        int i10 = this.i;
        if (i9 < i10) {
            zzedVar6.zzM(Math.min(i10 - i9, zzedVar6.zzb()));
        }
        this.f4153a.getClass();
        int zzd5 = zzedVar6.zzd();
        while (true) {
            int zze3 = zzedVar6.zze() - 16;
            zzacx zzacxVar = this.l;
            if (zzd5 <= zze3) {
                zzedVar6.zzL(zzd5);
                if (zzacy.zzc(zzedVar6, this.f4153a, this.k, zzacxVar)) {
                    zzedVar6.zzL(zzd5);
                    j3 = zzacxVar.zza;
                    break;
                }
                zzd5++;
            } else {
                if (z) {
                    while (zzd5 <= zzedVar6.zze() - this.i) {
                        zzedVar6.zzL(zzd5);
                        try {
                            z2 = zzacy.zzc(zzedVar6, this.f4153a, this.k, zzacxVar);
                        } catch (IndexOutOfBoundsException unused) {
                            z2 = false;
                        }
                        if (zzedVar6.zzd() <= zzedVar6.zze() && z2) {
                            zzedVar6.zzL(zzd5);
                            j3 = zzacxVar.zza;
                            break;
                        }
                        zzd5++;
                    }
                    zzedVar6.zzL(zzedVar6.zze());
                } else {
                    zzedVar6.zzL(zzd5);
                }
                j3 = -1;
            }
        }
        int zzd6 = zzedVar6.zzd() - zzd4;
        zzedVar6.zzL(zzd4);
        this.f4157e.zzq(zzedVar6, zzd6);
        int i11 = this.f4156d + zzd6;
        this.f4156d = i11;
        if (j3 != -1) {
            long j7 = this.h * C.MICROS_PER_SECOND;
            zzadc zzadcVar5 = this.f4153a;
            int i12 = zzen.zza;
            this.f4157e.zzs(j7 / zzadcVar5.zze, 1, i11, 0, null);
            this.f4156d = 0;
            this.h = j3;
        }
        if (zzedVar6.zzb() >= 16) {
            return 0;
        }
        int zzb = zzedVar6.zzb();
        System.arraycopy(zzedVar6.zzN(), zzedVar6.zzd(), zzedVar6.zzN(), 0, zzb);
        zzedVar6.zzL(0);
        zzedVar6.zzK(zzb);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.f4155c = zzacuVar;
        this.f4157e = zzacuVar.zzw(0, 1);
        zzacuVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.f4159g = 0;
        } else {
            dby dbyVar = this.f4154b;
            if (dbyVar != null) {
                dbyVar.zzd(j2);
            }
        }
        this.h = j2 != 0 ? -1L : 0L;
        this.f4156d = 0;
        this.j.zzI(0);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzacz.zza(zzacsVar, false);
        zzed zzedVar = new zzed(4);
        ((zzacg) zzacsVar).zzm(zzedVar.zzN(), 0, 4, false);
        return zzedVar.zzu() == 1716281667;
    }
}
