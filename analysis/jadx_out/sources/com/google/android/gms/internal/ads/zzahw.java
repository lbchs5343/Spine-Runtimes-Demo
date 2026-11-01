package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import g.awf;
import g.bjp;
import g.bmz;
import g.deu;
import g.dni;
import g.dob;
import java.io.EOFException;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzahw implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public int f4185a;

    /* renamed from: b, reason: collision with root package name */
    public long f4186b;

    /* renamed from: c, reason: collision with root package name */
    public deu f4187c;

    /* renamed from: d, reason: collision with root package name */
    public int f4188d;

    /* renamed from: e, reason: collision with root package name */
    public final zzadh f4189e;

    /* renamed from: f, reason: collision with root package name */
    public long f4190f;

    /* renamed from: g, reason: collision with root package name */
    public zzacu f4191g;
    public final zzed h;
    public zzadx i;
    public boolean j;
    public long k;
    public zzbd l;
    public final zzadj m;
    public long n;
    public final zzadf o;
    public zzadx p;

    public zzahw() {
        throw null;
    }

    public zzahw(int i) {
        this.h = new zzed(10);
        this.m = new zzadj();
        this.o = new zzadf();
        this.n = -9223372036854775807L;
        this.f4189e = new zzadh();
        this.p = new zzacm();
        this.k = -1L;
    }

    public final void q() {
        deu deuVar = this.f4187c;
        if ((deuVar instanceof bjp) && deuVar.zzh()) {
            long j = this.k;
            if (j == -1 || j == this.f4187c.zzd()) {
                return;
            }
            bjp bjpVar = (bjp) this.f4187c;
            this.f4187c = new bjp(this.k, bjpVar.f11711g, bjpVar.j, bjpVar.h);
            zzacu zzacuVar = this.f4191g;
            zzacuVar.getClass();
            zzacuVar.zzO(this.f4187c);
        }
    }

    public final boolean r(zzacs zzacsVar) {
        deu deuVar = this.f4187c;
        if (deuVar != null) {
            long zzd = deuVar.zzd();
            if (zzd != -1 && zzacsVar.zze() > zzd - 4) {
                return true;
            }
        }
        try {
            return !zzacsVar.zzm(this.h.zzN(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final boolean s(zzacs zzacsVar, boolean z) {
        int i;
        int i2;
        int zzb;
        zzacsVar.zzj();
        if (zzacsVar.zzf() == 0) {
            zzbd zza = this.f4189e.zza(zzacsVar, null);
            this.l = zza;
            if (zza != null) {
                this.o.zzb(zza);
            }
            i2 = (int) zzacsVar.zze();
            if (!z) {
                zzacsVar.zzk(i2);
            }
            i = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (!r(zzacsVar)) {
                zzed zzedVar = this.h;
                zzedVar.zzL(0);
                int zzg = zzedVar.zzg();
                if ((i == 0 || ((-128000) & zzg) == (i & (-128000))) && (zzb = zzadk.zzb(zzg)) != -1) {
                    i3++;
                    if (i3 != 1) {
                        if (i3 == 4) {
                            break;
                        }
                    } else {
                        this.m.zza(zzg);
                        i = zzg;
                    }
                    zzacsVar.zzg(zzb - 4);
                } else {
                    int i5 = i4 + 1;
                    if (i4 == (true != z ? 131072 : 32768)) {
                        if (z) {
                            return false;
                        }
                        q();
                        throw new EOFException();
                    }
                    if (z) {
                        zzacsVar.zzj();
                        zzacsVar.zzg(i2 + i5);
                    } else {
                        zzacsVar.zzk(1);
                    }
                    i4 = i5;
                    i = 0;
                    i3 = 0;
                }
            } else if (i3 <= 0) {
                q();
                throw new EOFException();
            }
        }
        if (z) {
            zzacsVar.zzk(i2 + i4);
        } else {
            zzacsVar.zzj();
        }
        this.f4185a = i;
        return true;
    }

    public final void zza() {
        this.j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x035a  */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        long j;
        long j2;
        int i;
        int i2;
        zzadf zzadfVar;
        int zzg;
        long zzu;
        long[] jArr;
        int i3;
        int i4;
        long zzf;
        long j3;
        long j4;
        deu bjpVar;
        long j5;
        zzbd zzbdVar;
        deu deuVar;
        deu bjpVar2;
        long j6;
        int zzm;
        zzahw zzahwVar = this;
        zzacs zzacsVar2 = zzacsVar;
        zzdb.zzb(zzahwVar.i);
        int i5 = zzen.zza;
        if (zzahwVar.f4185a == 0) {
            try {
                zzahwVar.s(zzacsVar2, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        deu deuVar2 = zzahwVar.f4187c;
        zzed zzedVar = zzahwVar.h;
        zzadj zzadjVar = zzahwVar.m;
        if (deuVar2 == null) {
            zzed zzedVar2 = new zzed(zzadjVar.zzc);
            zzacsVar2.zzh(zzedVar2.zzN(), 0, zzadjVar.zzc);
            int i6 = zzadjVar.zza & 1;
            j = C.MICROS_PER_SECOND;
            if (i6 != 0) {
                if (zzadjVar.zze != 1) {
                    i = 36;
                    long j7 = 0;
                    j2 = -9223372036854775807L;
                    if (zzedVar2.zze() >= i + 4) {
                        zzedVar2.zzL(i);
                        i2 = zzedVar2.zzg();
                        if (i2 != 1483304551) {
                            if (i2 == 1231971951) {
                                i2 = 1231971951;
                            }
                        }
                        zzadfVar = zzahwVar.o;
                        if (i2 != 1231971951) {
                            if (i2 == 1447187017) {
                                long zzd = zzacsVar2.zzd();
                                long zzf2 = zzacsVar2.zzf();
                                zzedVar2.zzM(10);
                                int zzg2 = zzedVar2.zzg();
                                if (zzg2 > 0) {
                                    int i7 = zzadjVar.zzd;
                                    long zzu2 = zzen.zzu(zzg2, (i7 >= 32000 ? 1152 : 576) * C.MICROS_PER_SECOND, i7, RoundingMode.FLOOR);
                                    int zzq = zzedVar2.zzq();
                                    int zzq2 = zzedVar2.zzq();
                                    int zzq3 = zzedVar2.zzq();
                                    zzedVar2.zzM(2);
                                    long j8 = zzadjVar.zzc + zzf2;
                                    long[] jArr2 = new long[zzq];
                                    long[] jArr3 = new long[zzq];
                                    long j9 = zzf2;
                                    int i8 = 0;
                                    while (i8 < zzq) {
                                        jArr2[i8] = (i8 * zzu2) / zzq;
                                        jArr3[i8] = Math.max(j9, j8);
                                        if (zzq3 == 1) {
                                            zzm = zzedVar2.zzm();
                                        } else if (zzq3 == 2) {
                                            zzm = zzedVar2.zzq();
                                        } else if (zzq3 == 3) {
                                            zzm = zzedVar2.zzo();
                                        } else if (zzq3 == 4) {
                                            zzm = zzedVar2.zzp();
                                        }
                                        j9 += zzm * zzq2;
                                        i8++;
                                        j8 = j8;
                                    }
                                    if (zzd != -1 && zzd != j9) {
                                        StringBuilder l = awf.l(zzd, "VBRI data size mismatch: ", ", ");
                                        l.append(j9);
                                        zzdt.zzf("VbriSeeker", l.toString());
                                    }
                                    bjpVar = new dni(jArr2, jArr3, zzu2, j9, zzadjVar.zzf);
                                    zzacsVar2 = zzacsVar;
                                    zzacsVar2.zzk(zzadjVar.zzc);
                                    zzahwVar = this;
                                    zzbdVar = zzahwVar.l;
                                    long zzf3 = zzacsVar2.zzf();
                                    if (zzbdVar != null) {
                                    }
                                    deuVar = null;
                                    if (zzahwVar.j) {
                                    }
                                    zzahwVar.f4187c = bjpVar2;
                                    zzahwVar.f4191g.zzO(bjpVar2);
                                    zzab zzabVar = new zzab();
                                    zzabVar.zzZ(zzadjVar.zzb);
                                    zzabVar.zzQ(4096);
                                    zzabVar.zzz(zzadjVar.zze);
                                    zzabVar.zzaa(zzadjVar.zzd);
                                    zzabVar.zzG(zzadfVar.zza);
                                    zzabVar.zzH(zzadfVar.zzb);
                                    zzabVar.zzS(zzahwVar.l);
                                    if (zzahwVar.f4187c.zzc() != -2147483647) {
                                    }
                                    zzahwVar.p.zzl(zzabVar.zzaf());
                                    zzahwVar.f4190f = zzacsVar2.zzf();
                                }
                                bjpVar = null;
                                zzacsVar2 = zzacsVar;
                                zzacsVar2.zzk(zzadjVar.zzc);
                                zzahwVar = this;
                                zzbdVar = zzahwVar.l;
                                long zzf32 = zzacsVar2.zzf();
                                if (zzbdVar != null) {
                                }
                                deuVar = null;
                                if (zzahwVar.j) {
                                }
                                zzahwVar.f4187c = bjpVar2;
                                zzahwVar.f4191g.zzO(bjpVar2);
                                zzab zzabVar2 = new zzab();
                                zzabVar2.zzZ(zzadjVar.zzb);
                                zzabVar2.zzQ(4096);
                                zzabVar2.zzz(zzadjVar.zze);
                                zzabVar2.zzaa(zzadjVar.zzd);
                                zzabVar2.zzG(zzadfVar.zza);
                                zzabVar2.zzH(zzadfVar.zzb);
                                zzabVar2.zzS(zzahwVar.l);
                                if (zzahwVar.f4187c.zzc() != -2147483647) {
                                }
                                zzahwVar.p.zzl(zzabVar2.zzaf());
                                zzahwVar.f4190f = zzacsVar2.zzf();
                            } else if (i2 != 1483304551) {
                                zzacsVar2.zzj();
                                bjpVar = null;
                                zzbdVar = zzahwVar.l;
                                long zzf322 = zzacsVar2.zzf();
                                if (zzbdVar != null) {
                                    int zza = zzbdVar.zza();
                                    for (int i9 = 0; i9 < zza; i9++) {
                                        zzbc zzb = zzbdVar.zzb(i9);
                                        if (zzb instanceof zzagq) {
                                            zzagq zzagqVar = (zzagq) zzb;
                                            int zza2 = zzbdVar.zza();
                                            int i10 = 0;
                                            while (true) {
                                                if (i10 >= zza2) {
                                                    j6 = -9223372036854775807L;
                                                    break;
                                                }
                                                zzbc zzb2 = zzbdVar.zzb(i10);
                                                if (zzb2 instanceof zzagu) {
                                                    zzagu zzaguVar = (zzagu) zzb2;
                                                    if (zzaguVar.zzf.equals("TLEN")) {
                                                        j6 = zzen.zzs(Long.parseLong((String) zzaguVar.zzb.get(0)));
                                                        break;
                                                    }
                                                }
                                                i10++;
                                            }
                                            int length = zzagqVar.zzd.length;
                                            int i11 = length + 1;
                                            long[] jArr4 = new long[i11];
                                            long[] jArr5 = new long[i11];
                                            jArr4[0] = zzf322;
                                            jArr5[0] = 0;
                                            long j10 = zzf322;
                                            int i12 = 1;
                                            while (i12 <= length) {
                                                int i13 = i12 - 1;
                                                int i14 = i12;
                                                j10 += zzagqVar.zzb + zzagqVar.zzd[i13];
                                                j7 += zzagqVar.zzc + zzagqVar.zze[i13];
                                                jArr4[i14] = j10;
                                                jArr5[i14] = j7;
                                                i12 = i14 + 1;
                                                length = length;
                                            }
                                            deuVar = new dob(jArr4, jArr5, j6);
                                            if (zzahwVar.j) {
                                                deu deuVar3 = deuVar != null ? deuVar : bjpVar == null ? null : bjpVar;
                                                if (deuVar3 != null) {
                                                    deuVar3.zzh();
                                                    bjpVar2 = deuVar3;
                                                } else {
                                                    zzacsVar2.zzh(zzedVar.zzN(), 0, 4);
                                                    zzedVar.zzL(0);
                                                    zzadjVar.zza(zzedVar.zzg());
                                                    bjpVar2 = new bjp(zzacsVar2.zzd(), zzadjVar.zzf, zzacsVar2.zzf(), zzadjVar.zzc);
                                                }
                                            } else {
                                                bjpVar2 = new zzahx();
                                            }
                                            zzahwVar.f4187c = bjpVar2;
                                            zzahwVar.f4191g.zzO(bjpVar2);
                                            zzab zzabVar22 = new zzab();
                                            zzabVar22.zzZ(zzadjVar.zzb);
                                            zzabVar22.zzQ(4096);
                                            zzabVar22.zzz(zzadjVar.zze);
                                            zzabVar22.zzaa(zzadjVar.zzd);
                                            zzabVar22.zzG(zzadfVar.zza);
                                            zzabVar22.zzH(zzadfVar.zzb);
                                            zzabVar22.zzS(zzahwVar.l);
                                            if (zzahwVar.f4187c.zzc() != -2147483647) {
                                                zzabVar22.zzy(zzahwVar.f4187c.zzc());
                                            }
                                            zzahwVar.p.zzl(zzabVar22.zzaf());
                                            zzahwVar.f4190f = zzacsVar2.zzf();
                                        }
                                    }
                                }
                                deuVar = null;
                                if (zzahwVar.j) {
                                }
                                zzahwVar.f4187c = bjpVar2;
                                zzahwVar.f4191g.zzO(bjpVar2);
                                zzab zzabVar222 = new zzab();
                                zzabVar222.zzZ(zzadjVar.zzb);
                                zzabVar222.zzQ(4096);
                                zzabVar222.zzz(zzadjVar.zze);
                                zzabVar222.zzaa(zzadjVar.zzd);
                                zzabVar222.zzG(zzadfVar.zza);
                                zzabVar222.zzH(zzadfVar.zzb);
                                zzabVar222.zzS(zzahwVar.l);
                                if (zzahwVar.f4187c.zzc() != -2147483647) {
                                }
                                zzahwVar.p.zzl(zzabVar222.zzaf());
                                zzahwVar.f4190f = zzacsVar2.zzf();
                            }
                        }
                        zzg = zzedVar2.zzg();
                        int zzp = (zzg & 1) == 0 ? zzedVar2.zzp() : -1;
                        zzu = (zzg & 2) == 0 ? zzedVar2.zzu() : -1L;
                        if ((zzg & 4) != 4) {
                            long[] jArr6 = new long[100];
                            for (int i15 = 0; i15 < 100; i15++) {
                                jArr6[i15] = zzedVar2.zzm();
                            }
                            jArr = jArr6;
                        } else {
                            jArr = null;
                        }
                        if ((zzg & 8) != 0) {
                            zzedVar2.zzM(4);
                        }
                        if (zzedVar2.zzb() < 24) {
                            zzedVar2.zzM(21);
                            int zzo = zzedVar2.zzo();
                            i4 = zzo >> 12;
                            i3 = zzo & 4095;
                        } else {
                            i3 = -1;
                            i4 = -1;
                        }
                        long j11 = zzp;
                        zzadj zzadjVar2 = new zzadj(zzadjVar);
                        if (!zzadfVar.zza() && i4 != -1 && i3 != -1) {
                            zzadfVar.zza = i4;
                            zzadfVar.zzb = i3;
                        }
                        zzf = zzacsVar2.zzf();
                        if (zzacsVar2.zzd() != -1 && zzu != -1) {
                            j5 = zzf + zzu;
                            if (zzacsVar2.zzd() != j5) {
                                StringBuilder l2 = awf.l(zzacsVar2.zzd(), "Data size mismatch between stream (", ") and Xing frame (");
                                l2.append(j5);
                                l2.append("), using Xing value.");
                                zzdt.zze("Mp3Extractor", l2.toString());
                            }
                        }
                        zzacsVar2.zzk(zzadjVar.zzc);
                        if (i2 != 1483304551) {
                            long zzt = (j11 == -1 || j11 == 0) ? -9223372036854775807L : zzen.zzt((j11 * zzadjVar2.zzg) - 1, zzadjVar2.zzd);
                            if (zzt != -9223372036854775807L) {
                                bjpVar = (zzu == -1 || jArr == null) ? new bmz(zzf, zzadjVar2.zzc, zzt, zzadjVar2.zzf, -1L, null) : new bmz(zzf, zzadjVar2.zzc, zzt, zzadjVar2.zzf, zzu, jArr);
                                zzahwVar = this;
                                zzbdVar = zzahwVar.l;
                                long zzf3222 = zzacsVar2.zzf();
                                if (zzbdVar != null) {
                                }
                                deuVar = null;
                                if (zzahwVar.j) {
                                }
                                zzahwVar.f4187c = bjpVar2;
                                zzahwVar.f4191g.zzO(bjpVar2);
                                zzab zzabVar2222 = new zzab();
                                zzabVar2222.zzZ(zzadjVar.zzb);
                                zzabVar2222.zzQ(4096);
                                zzabVar2222.zzz(zzadjVar.zze);
                                zzabVar2222.zzaa(zzadjVar.zzd);
                                zzabVar2222.zzG(zzadfVar.zza);
                                zzabVar2222.zzH(zzadfVar.zzb);
                                zzabVar2222.zzS(zzahwVar.l);
                                if (zzahwVar.f4187c.zzc() != -2147483647) {
                                }
                                zzahwVar.p.zzl(zzabVar2222.zzaf());
                                zzahwVar.f4190f = zzacsVar2.zzf();
                            }
                        } else {
                            long zzd2 = zzacsVar2.zzd();
                            long zzt2 = (j11 == -1 || j11 == 0) ? -9223372036854775807L : zzen.zzt((zzadjVar2.zzg * j11) - 1, zzadjVar2.zzd);
                            if (zzt2 != -9223372036854775807L) {
                                if (zzu != -1) {
                                    long j12 = zzf + zzu;
                                    j3 = zzu - zzadjVar2.zzc;
                                    j4 = j12;
                                } else if (zzd2 != -1) {
                                    j3 = (zzd2 - zzf) - zzadjVar2.zzc;
                                    j4 = zzd2;
                                }
                                long j13 = j3;
                                RoundingMode roundingMode = RoundingMode.HALF_UP;
                                zzahwVar = this;
                                bjpVar = new bjp(j4, zzgcr.zzb(zzen.zzu(j13, 8000000L, zzt2, roundingMode)), zzf + zzadjVar2.zzc, zzgcr.zzb(zzgcm.zzb(j13, j11, roundingMode)));
                                zzbdVar = zzahwVar.l;
                                long zzf32222 = zzacsVar2.zzf();
                                if (zzbdVar != null) {
                                }
                                deuVar = null;
                                if (zzahwVar.j) {
                                }
                                zzahwVar.f4187c = bjpVar2;
                                zzahwVar.f4191g.zzO(bjpVar2);
                                zzab zzabVar22222 = new zzab();
                                zzabVar22222.zzZ(zzadjVar.zzb);
                                zzabVar22222.zzQ(4096);
                                zzabVar22222.zzz(zzadjVar.zze);
                                zzabVar22222.zzaa(zzadjVar.zzd);
                                zzabVar22222.zzG(zzadfVar.zza);
                                zzabVar22222.zzH(zzadfVar.zzb);
                                zzabVar22222.zzS(zzahwVar.l);
                                if (zzahwVar.f4187c.zzc() != -2147483647) {
                                }
                                zzahwVar.p.zzl(zzabVar22222.zzaf());
                                zzahwVar.f4190f = zzacsVar2.zzf();
                            }
                        }
                        bjpVar = null;
                        zzahwVar = this;
                        zzbdVar = zzahwVar.l;
                        long zzf322222 = zzacsVar2.zzf();
                        if (zzbdVar != null) {
                        }
                        deuVar = null;
                        if (zzahwVar.j) {
                        }
                        zzahwVar.f4187c = bjpVar2;
                        zzahwVar.f4191g.zzO(bjpVar2);
                        zzab zzabVar222222 = new zzab();
                        zzabVar222222.zzZ(zzadjVar.zzb);
                        zzabVar222222.zzQ(4096);
                        zzabVar222222.zzz(zzadjVar.zze);
                        zzabVar222222.zzaa(zzadjVar.zzd);
                        zzabVar222222.zzG(zzadfVar.zza);
                        zzabVar222222.zzH(zzadfVar.zzb);
                        zzabVar222222.zzS(zzahwVar.l);
                        if (zzahwVar.f4187c.zzc() != -2147483647) {
                        }
                        zzahwVar.p.zzl(zzabVar222222.zzaf());
                        zzahwVar.f4190f = zzacsVar2.zzf();
                    }
                    if (zzedVar2.zze() >= 40) {
                        zzedVar2.zzL(36);
                        if (zzedVar2.zzg() == 1447187017) {
                            i2 = 1447187017;
                            zzadfVar = zzahwVar.o;
                            if (i2 != 1231971951) {
                            }
                            zzg = zzedVar2.zzg();
                            if ((zzg & 1) == 0) {
                            }
                            if ((zzg & 2) == 0) {
                            }
                            if ((zzg & 4) != 4) {
                            }
                            if ((zzg & 8) != 0) {
                            }
                            if (zzedVar2.zzb() < 24) {
                            }
                            long j112 = zzp;
                            zzadj zzadjVar22 = new zzadj(zzadjVar);
                            if (!zzadfVar.zza()) {
                                zzadfVar.zza = i4;
                                zzadfVar.zzb = i3;
                            }
                            zzf = zzacsVar2.zzf();
                            if (zzacsVar2.zzd() != -1) {
                                j5 = zzf + zzu;
                                if (zzacsVar2.zzd() != j5) {
                                }
                            }
                            zzacsVar2.zzk(zzadjVar.zzc);
                            if (i2 != 1483304551) {
                            }
                            bjpVar = null;
                            zzahwVar = this;
                            zzbdVar = zzahwVar.l;
                            long zzf3222222 = zzacsVar2.zzf();
                            if (zzbdVar != null) {
                            }
                            deuVar = null;
                            if (zzahwVar.j) {
                            }
                            zzahwVar.f4187c = bjpVar2;
                            zzahwVar.f4191g.zzO(bjpVar2);
                            zzab zzabVar2222222 = new zzab();
                            zzabVar2222222.zzZ(zzadjVar.zzb);
                            zzabVar2222222.zzQ(4096);
                            zzabVar2222222.zzz(zzadjVar.zze);
                            zzabVar2222222.zzaa(zzadjVar.zzd);
                            zzabVar2222222.zzG(zzadfVar.zza);
                            zzabVar2222222.zzH(zzadfVar.zzb);
                            zzabVar2222222.zzS(zzahwVar.l);
                            if (zzahwVar.f4187c.zzc() != -2147483647) {
                            }
                            zzahwVar.p.zzl(zzabVar2222222.zzaf());
                            zzahwVar.f4190f = zzacsVar2.zzf();
                        }
                    }
                    i2 = 0;
                    zzadfVar = zzahwVar.o;
                    if (i2 != 1231971951) {
                    }
                    zzg = zzedVar2.zzg();
                    if ((zzg & 1) == 0) {
                    }
                    if ((zzg & 2) == 0) {
                    }
                    if ((zzg & 4) != 4) {
                    }
                    if ((zzg & 8) != 0) {
                    }
                    if (zzedVar2.zzb() < 24) {
                    }
                    long j1122 = zzp;
                    zzadj zzadjVar222 = new zzadj(zzadjVar);
                    if (!zzadfVar.zza()) {
                    }
                    zzf = zzacsVar2.zzf();
                    if (zzacsVar2.zzd() != -1) {
                    }
                    zzacsVar2.zzk(zzadjVar.zzc);
                    if (i2 != 1483304551) {
                    }
                    bjpVar = null;
                    zzahwVar = this;
                    zzbdVar = zzahwVar.l;
                    long zzf32222222 = zzacsVar2.zzf();
                    if (zzbdVar != null) {
                    }
                    deuVar = null;
                    if (zzahwVar.j) {
                    }
                    zzahwVar.f4187c = bjpVar2;
                    zzahwVar.f4191g.zzO(bjpVar2);
                    zzab zzabVar22222222 = new zzab();
                    zzabVar22222222.zzZ(zzadjVar.zzb);
                    zzabVar22222222.zzQ(4096);
                    zzabVar22222222.zzz(zzadjVar.zze);
                    zzabVar22222222.zzaa(zzadjVar.zzd);
                    zzabVar22222222.zzG(zzadfVar.zza);
                    zzabVar22222222.zzH(zzadfVar.zzb);
                    zzabVar22222222.zzS(zzahwVar.l);
                    if (zzahwVar.f4187c.zzc() != -2147483647) {
                    }
                    zzahwVar.p.zzl(zzabVar22222222.zzaf());
                    zzahwVar.f4190f = zzacsVar2.zzf();
                }
                i = 21;
                long j72 = 0;
                j2 = -9223372036854775807L;
                if (zzedVar2.zze() >= i + 4) {
                }
                if (zzedVar2.zze() >= 40) {
                }
                i2 = 0;
                zzadfVar = zzahwVar.o;
                if (i2 != 1231971951) {
                }
                zzg = zzedVar2.zzg();
                if ((zzg & 1) == 0) {
                }
                if ((zzg & 2) == 0) {
                }
                if ((zzg & 4) != 4) {
                }
                if ((zzg & 8) != 0) {
                }
                if (zzedVar2.zzb() < 24) {
                }
                long j11222 = zzp;
                zzadj zzadjVar2222 = new zzadj(zzadjVar);
                if (!zzadfVar.zza()) {
                }
                zzf = zzacsVar2.zzf();
                if (zzacsVar2.zzd() != -1) {
                }
                zzacsVar2.zzk(zzadjVar.zzc);
                if (i2 != 1483304551) {
                }
                bjpVar = null;
                zzahwVar = this;
                zzbdVar = zzahwVar.l;
                long zzf322222222 = zzacsVar2.zzf();
                if (zzbdVar != null) {
                }
                deuVar = null;
                if (zzahwVar.j) {
                }
                zzahwVar.f4187c = bjpVar2;
                zzahwVar.f4191g.zzO(bjpVar2);
                zzab zzabVar222222222 = new zzab();
                zzabVar222222222.zzZ(zzadjVar.zzb);
                zzabVar222222222.zzQ(4096);
                zzabVar222222222.zzz(zzadjVar.zze);
                zzabVar222222222.zzaa(zzadjVar.zzd);
                zzabVar222222222.zzG(zzadfVar.zza);
                zzabVar222222222.zzH(zzadfVar.zzb);
                zzabVar222222222.zzS(zzahwVar.l);
                if (zzahwVar.f4187c.zzc() != -2147483647) {
                }
                zzahwVar.p.zzl(zzabVar222222222.zzaf());
                zzahwVar.f4190f = zzacsVar2.zzf();
            } else {
                if (zzadjVar.zze == 1) {
                    i = 13;
                    long j722 = 0;
                    j2 = -9223372036854775807L;
                    if (zzedVar2.zze() >= i + 4) {
                    }
                    if (zzedVar2.zze() >= 40) {
                    }
                    i2 = 0;
                    zzadfVar = zzahwVar.o;
                    if (i2 != 1231971951) {
                    }
                    zzg = zzedVar2.zzg();
                    if ((zzg & 1) == 0) {
                    }
                    if ((zzg & 2) == 0) {
                    }
                    if ((zzg & 4) != 4) {
                    }
                    if ((zzg & 8) != 0) {
                    }
                    if (zzedVar2.zzb() < 24) {
                    }
                    long j112222 = zzp;
                    zzadj zzadjVar22222 = new zzadj(zzadjVar);
                    if (!zzadfVar.zza()) {
                    }
                    zzf = zzacsVar2.zzf();
                    if (zzacsVar2.zzd() != -1) {
                    }
                    zzacsVar2.zzk(zzadjVar.zzc);
                    if (i2 != 1483304551) {
                    }
                    bjpVar = null;
                    zzahwVar = this;
                    zzbdVar = zzahwVar.l;
                    long zzf3222222222 = zzacsVar2.zzf();
                    if (zzbdVar != null) {
                    }
                    deuVar = null;
                    if (zzahwVar.j) {
                    }
                    zzahwVar.f4187c = bjpVar2;
                    zzahwVar.f4191g.zzO(bjpVar2);
                    zzab zzabVar2222222222 = new zzab();
                    zzabVar2222222222.zzZ(zzadjVar.zzb);
                    zzabVar2222222222.zzQ(4096);
                    zzabVar2222222222.zzz(zzadjVar.zze);
                    zzabVar2222222222.zzaa(zzadjVar.zzd);
                    zzabVar2222222222.zzG(zzadfVar.zza);
                    zzabVar2222222222.zzH(zzadfVar.zzb);
                    zzabVar2222222222.zzS(zzahwVar.l);
                    if (zzahwVar.f4187c.zzc() != -2147483647) {
                    }
                    zzahwVar.p.zzl(zzabVar2222222222.zzaf());
                    zzahwVar.f4190f = zzacsVar2.zzf();
                }
                i = 21;
                long j7222 = 0;
                j2 = -9223372036854775807L;
                if (zzedVar2.zze() >= i + 4) {
                }
                if (zzedVar2.zze() >= 40) {
                }
                i2 = 0;
                zzadfVar = zzahwVar.o;
                if (i2 != 1231971951) {
                }
                zzg = zzedVar2.zzg();
                if ((zzg & 1) == 0) {
                }
                if ((zzg & 2) == 0) {
                }
                if ((zzg & 4) != 4) {
                }
                if ((zzg & 8) != 0) {
                }
                if (zzedVar2.zzb() < 24) {
                }
                long j1122222 = zzp;
                zzadj zzadjVar222222 = new zzadj(zzadjVar);
                if (!zzadfVar.zza()) {
                }
                zzf = zzacsVar2.zzf();
                if (zzacsVar2.zzd() != -1) {
                }
                zzacsVar2.zzk(zzadjVar.zzc);
                if (i2 != 1483304551) {
                }
                bjpVar = null;
                zzahwVar = this;
                zzbdVar = zzahwVar.l;
                long zzf32222222222 = zzacsVar2.zzf();
                if (zzbdVar != null) {
                }
                deuVar = null;
                if (zzahwVar.j) {
                }
                zzahwVar.f4187c = bjpVar2;
                zzahwVar.f4191g.zzO(bjpVar2);
                zzab zzabVar22222222222 = new zzab();
                zzabVar22222222222.zzZ(zzadjVar.zzb);
                zzabVar22222222222.zzQ(4096);
                zzabVar22222222222.zzz(zzadjVar.zze);
                zzabVar22222222222.zzaa(zzadjVar.zzd);
                zzabVar22222222222.zzG(zzadfVar.zza);
                zzabVar22222222222.zzH(zzadfVar.zzb);
                zzabVar22222222222.zzS(zzahwVar.l);
                if (zzahwVar.f4187c.zzc() != -2147483647) {
                }
                zzahwVar.p.zzl(zzabVar22222222222.zzaf());
                zzahwVar.f4190f = zzacsVar2.zzf();
            }
        } else {
            j = C.MICROS_PER_SECOND;
            j2 = -9223372036854775807L;
            long j14 = zzahwVar.f4190f;
            if (j14 != 0) {
                long zzf4 = zzacsVar2.zzf();
                if (zzf4 < j14) {
                    zzacsVar2.zzk((int) (j14 - zzf4));
                }
            }
        }
        int i16 = zzahwVar.f4188d;
        if (i16 == 0) {
            zzacsVar2.zzj();
            if (r(zzacsVar)) {
                return -1;
            }
            zzedVar.zzL(0);
            int zzg3 = zzedVar.zzg();
            if (((-128000) & zzg3) != (zzahwVar.f4185a & (-128000)) || zzadk.zzb(zzg3) == -1) {
                zzacsVar2.zzk(1);
                zzahwVar.f4185a = 0;
                return 0;
            }
            zzadjVar.zza(zzg3);
            if (zzahwVar.n == j2) {
                zzahwVar.n = zzahwVar.f4187c.zze(zzacsVar2.zzf());
            }
            i16 = zzadjVar.zzc;
            zzahwVar.f4188d = i16;
            zzahwVar.k = zzacsVar2.zzf() + i16;
        }
        int zzf5 = zzahwVar.p.zzf(zzacsVar2, i16, true);
        if (zzf5 == -1) {
            return -1;
        }
        int i17 = zzahwVar.f4188d - zzf5;
        zzahwVar.f4188d = i17;
        if (i17 > 0) {
            return 0;
        }
        zzahwVar.p.zzs(((zzahwVar.f4186b * j) / zzadjVar.zzd) + zzahwVar.n, 1, zzadjVar.zzc, 0, null);
        zzahwVar.f4186b += zzadjVar.zzg;
        zzahwVar.f4188d = 0;
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
        this.f4191g = zzacuVar;
        zzadx zzw = zzacuVar.zzw(0, 1);
        this.i = zzw;
        this.p = zzw;
        this.f4191g.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4185a = 0;
        this.n = -9223372036854775807L;
        this.f4186b = 0L;
        this.f4188d = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        return s(zzacsVar, true);
    }
}
