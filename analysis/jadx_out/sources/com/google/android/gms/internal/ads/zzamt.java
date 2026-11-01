package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.eut;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzamt implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public zzadx f4336a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4339d;

    /* renamed from: e, reason: collision with root package name */
    public long f4340e;

    /* renamed from: f, reason: collision with root package name */
    public final zzanq f4341f;
    public eut i;
    public boolean k;
    public String m;

    /* renamed from: g, reason: collision with root package name */
    public final boolean[] f4342g = new boolean[3];
    public final zzane j = new zzane(7, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    public final zzane l = new zzane(8, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);

    /* renamed from: c, reason: collision with root package name */
    public final zzane f4338c = new zzane(6, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);

    /* renamed from: b, reason: collision with root package name */
    public long f4337b = -9223372036854775807L;
    public final zzed h = new zzed();

    public zzamt(zzanq zzanqVar, boolean z, boolean z2) {
        this.f4341f = zzanqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0204 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01a5  */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) {
        zzane zzaneVar;
        zzane zzaneVar2;
        zzane zzaneVar3;
        int i;
        byte[] bArr;
        int i2;
        byte[] bArr2;
        int i3;
        long j;
        eut eutVar;
        boolean z;
        int i4;
        boolean z2;
        zzdb.zzb(this.f4336a);
        int i5 = zzen.zza;
        int zzd = zzedVar.zzd();
        int zze = zzedVar.zze();
        byte[] zzN = zzedVar.zzN();
        this.f4340e += zzedVar.zzb();
        this.f4336a.zzq(zzedVar, zzedVar.zzb());
        while (true) {
            int zza = zzfp.zza(zzN, zzd, zze, this.f4342g);
            zzaneVar = this.f4338c;
            zzaneVar2 = this.l;
            zzaneVar3 = this.j;
            if (zza == zze) {
                break;
            }
            int i6 = zza + 3;
            int i7 = zzN[i6] & 31;
            int i8 = zza - zzd;
            if (i8 > 0) {
                if (!this.k) {
                    zzaneVar3.zza(zzN, zzd, zza);
                    zzaneVar2.zza(zzN, zzd, zza);
                }
                zzaneVar.zza(zzN, zzd, zza);
            }
            int i9 = zze - zza;
            long j2 = this.f4340e - i9;
            int i10 = i8 < 0 ? -i8 : 0;
            long j3 = this.f4337b;
            boolean z3 = this.k;
            zzanq zzanqVar = this.f4341f;
            if (!z3) {
                zzaneVar3.zzd(i10);
                zzaneVar2.zzd(i10);
                if (this.k) {
                    i2 = zze;
                    bArr2 = zzN;
                    i3 = i6;
                    j = j2;
                    if (zzaneVar3.zze()) {
                        zzfo zzf = zzfp.zzf(zzaneVar3.zza, 4, zzaneVar3.zzb);
                        zzanqVar.zze(zzf.zzm);
                        this.i.h.append(zzf.zzd, zzf);
                        zzaneVar3.zzb();
                    } else if (zzaneVar2.zze()) {
                        zzfn zze2 = zzfp.zze(zzaneVar2.zza, 4, zzaneVar2.zzb);
                        this.i.j.append(zze2.zza, zze2);
                        zzaneVar2.zzb();
                    }
                } else if (zzaneVar3.zze() && zzaneVar2.zze()) {
                    ArrayList arrayList = new ArrayList();
                    i3 = i6;
                    arrayList.add(Arrays.copyOf(zzaneVar3.zza, zzaneVar3.zzb));
                    arrayList.add(Arrays.copyOf(zzaneVar2.zza, zzaneVar2.zzb));
                    i2 = zze;
                    zzfo zzf2 = zzfp.zzf(zzaneVar3.zza, 4, zzaneVar3.zzb);
                    bArr2 = zzN;
                    zzfn zze3 = zzfp.zze(zzaneVar2.zza, 4, zzaneVar2.zzb);
                    j = j2;
                    String zzc = zzdd.zzc(zzf2.zza, zzf2.zzb, zzf2.zzc);
                    zzadx zzadxVar = this.f4336a;
                    zzab zzabVar = new zzab();
                    zzabVar.zzL(this.m);
                    zzabVar.zzZ("video/avc");
                    zzabVar.zzA(zzc);
                    zzabVar.zzae(zzf2.zze);
                    zzabVar.zzJ(zzf2.zzf);
                    zzk zzkVar = new zzk();
                    zzkVar.zzc(zzf2.zzj);
                    zzkVar.zzb(zzf2.zzk);
                    zzkVar.zzd(zzf2.zzl);
                    zzkVar.zzf(zzf2.zzh + 8);
                    zzkVar.zza(zzf2.zzi + 8);
                    zzabVar.zzB(zzkVar.zzg());
                    zzabVar.zzV(zzf2.zzg);
                    zzabVar.zzM(arrayList);
                    zzabVar.zzR(zzf2.zzm);
                    zzadxVar.zzl(zzabVar.zzaf());
                    this.k = true;
                    this.i.h.append(zzf2.zzd, zzf2);
                    this.i.j.append(zze3.zza, zze3);
                    zzaneVar3.zzb();
                    zzaneVar2.zzb();
                }
                if (zzaneVar.zzd(i10)) {
                    int zzb = zzfp.zzb(zzaneVar.zza, zzaneVar.zzb);
                    byte[] bArr3 = zzaneVar.zza;
                    zzed zzedVar2 = this.h;
                    zzedVar2.zzJ(bArr3, zzb);
                    zzedVar2.zzL(4);
                    zzanqVar.zza(j3, zzedVar2);
                }
                eutVar = this.i;
                boolean z4 = this.k;
                if (eutVar.f16199c == 9) {
                    z = true;
                } else {
                    if (z4 && eutVar.k) {
                        long j4 = eutVar.f16200d;
                        int i11 = i9 + ((int) (j - j4));
                        long j5 = eutVar.f16203g;
                        if (j5 != -9223372036854775807L) {
                            eutVar.f16201e.zzs(j5, eutVar.i ? 1 : 0, (int) (j4 - eutVar.f16197a), i11, null);
                        }
                    }
                    eutVar.f16197a = eutVar.f16200d;
                    eutVar.f16203g = eutVar.f16202f;
                    eutVar.i = false;
                    z = true;
                    eutVar.k = true;
                }
                boolean z5 = eutVar.f16198b;
                boolean z6 = eutVar.i;
                i4 = eutVar.f16199c;
                if (i4 != 5 && (!z5 || i4 != z)) {
                    z = false;
                }
                z2 = z | z6;
                eutVar.i = z2;
                if (z2) {
                    this.f4339d = false;
                }
                long j6 = this.f4337b;
                if (this.k) {
                    zzaneVar3.zzc(i7);
                    zzaneVar2.zzc(i7);
                }
                zzaneVar.zzc(i7);
                eut eutVar2 = this.i;
                boolean z7 = this.f4339d;
                eutVar2.f16199c = i7;
                eutVar2.f16202f = j6;
                eutVar2.f16200d = j;
                eutVar2.f16198b = z7;
                zzd = i3;
                zze = i2;
                zzN = bArr2;
            }
            i2 = zze;
            bArr2 = zzN;
            i3 = i6;
            j = j2;
            if (zzaneVar.zzd(i10)) {
            }
            eutVar = this.i;
            boolean z42 = this.k;
            if (eutVar.f16199c == 9) {
            }
            boolean z52 = eutVar.f16198b;
            boolean z62 = eutVar.i;
            i4 = eutVar.f16199c;
            if (i4 != 5) {
                z = false;
            }
            z2 = z | z62;
            eutVar.i = z2;
            if (z2) {
            }
            long j62 = this.f4337b;
            if (this.k) {
            }
            zzaneVar.zzc(i7);
            eut eutVar22 = this.i;
            boolean z72 = this.f4339d;
            eutVar22.f16199c = i7;
            eutVar22.f16202f = j62;
            eutVar22.f16200d = j;
            eutVar22.f16198b = z72;
            zzd = i3;
            zze = i2;
            zzN = bArr2;
        }
        int i12 = zze;
        byte[] bArr4 = zzN;
        if (this.k) {
            i = i12;
            bArr = bArr4;
        } else {
            i = i12;
            bArr = bArr4;
            zzaneVar3.zza(bArr, zzd, i);
            zzaneVar2.zza(bArr, zzd, i);
        }
        zzaneVar.zza(bArr, zzd, i);
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.m = zzaoaVar.zzb();
        zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 2);
        this.f4336a = zzw;
        this.i = new eut(zzw);
        this.f4341f.zzb(zzacuVar, zzaoaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
        zzdb.zzb(this.f4336a);
        int i = zzen.zza;
        if (z) {
            this.f4341f.zzc();
            eut eutVar = this.i;
            long j = this.f4340e;
            boolean z2 = eutVar.f16198b;
            boolean z3 = eutVar.i;
            int i2 = eutVar.f16199c;
            char c2 = 1;
            if (i2 != 5 && (!z2 || i2 != 1)) {
                c2 = 0;
            }
            boolean z4 = (z3 ? 1 : 0) | c2;
            eutVar.i = z4;
            eutVar.f16200d = j;
            long j2 = eutVar.f16203g;
            if (j2 != -9223372036854775807L) {
                long j3 = j - eutVar.f16197a;
                eutVar.f16201e.zzs(j2, z4 ? 1 : 0, (int) j3, 0, null);
            }
            eutVar.k = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.f4337b = j;
        int i2 = i & 2;
        this.f4339d = (i2 != 0) | this.f4339d;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.f4340e = 0L;
        this.f4339d = false;
        this.f4337b = -9223372036854775807L;
        zzfp.zzh(this.f4342g);
        this.j.zzb();
        this.l.zzb();
        this.f4338c.zzb();
        this.f4341f.zzc();
        eut eutVar = this.i;
        if (eutVar != null) {
            eutVar.k = false;
        }
    }
}
