package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbbs;
import g.abz;
import g.evo;

/* loaded from: classes3.dex */
public final class zzdrc implements zzczj, zzcya, zzcwp, zzcxg, evo, zzdbv {

    /* renamed from: a, reason: collision with root package name */
    public final zzbbl f6399a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6400b = false;

    public zzdrc(zzbbl zzbblVar, zzfco zzfcoVar) {
        this.f6399a = zzbblVar;
        zzbblVar.zzc(2);
        if (zzfcoVar != null) {
            zzbblVar.zzc(1101);
        }
    }

    @Override // g.evo
    public final synchronized void onAdClicked() {
        if (this.f6400b) {
            this.f6399a.zzc(8);
        } else {
            this.f6399a.zzc(7);
            this.f6400b = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(abz abzVar) {
        int i = abzVar.zza;
        zzbbl zzbblVar = this.f6399a;
        switch (i) {
            case 1:
                zzbblVar.zzc(101);
                break;
            case 2:
                zzbblVar.zzc(102);
                break;
            case 3:
                zzbblVar.zzc(5);
                break;
            case 4:
                zzbblVar.zzc(103);
                break;
            case 5:
                zzbblVar.zzc(104);
                break;
            case 6:
                zzbblVar.zzc(105);
                break;
            case 7:
                zzbblVar.zzc(106);
                break;
            default:
                zzbblVar.zzc(4);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(final zzfff zzfffVar) {
        this.f6399a.zzb(new zzbbk() { // from class: com.google.android.gms.internal.ads.zzdqy
            @Override // com.google.android.gms.internal.ads.zzbbk
            public final void zza(zzbbs.zzt.zza zzaVar) {
                zzbbs.zza.zzb zzbM = zzaVar.zze().zzbM();
                zzbbs.zzi.zza zzbM2 = zzaVar.zze().zzad().zzbM();
                zzbM2.zzo(zzfff.this.zzb.zzb.zzb);
                zzbM.zzT(zzbM2);
                zzaVar.zzG(zzbM);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzh() {
        this.f6399a.zzc(1109);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzi(final zzbbs.zzb zzbVar) {
        zzbbk zzbbkVar = new zzbbk() { // from class: com.google.android.gms.internal.ads.zzdrb
            @Override // com.google.android.gms.internal.ads.zzbbk
            public final void zza(zzbbs.zzt.zza zzaVar) {
                zzaVar.zzJ(zzbbs.zzb.this);
            }
        };
        zzbbl zzbblVar = this.f6399a;
        zzbblVar.zzb(zzbbkVar);
        zzbblVar.zzc(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzj(final zzbbs.zzb zzbVar) {
        zzbbk zzbbkVar = new zzbbk() { // from class: com.google.android.gms.internal.ads.zzdqz
            @Override // com.google.android.gms.internal.ads.zzbbk
            public final void zza(zzbbs.zzt.zza zzaVar) {
                zzaVar.zzJ(zzbbs.zzb.this);
            }
        };
        zzbbl zzbblVar = this.f6399a;
        zzbblVar.zzb(zzbbkVar);
        zzbblVar.zzc(1102);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzl(boolean z) {
        this.f6399a.zzc(true != z ? 1108 : 1107);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzm(final zzbbs.zzb zzbVar) {
        zzbbk zzbbkVar = new zzbbk() { // from class: com.google.android.gms.internal.ads.zzdra
            @Override // com.google.android.gms.internal.ads.zzbbk
            public final void zza(zzbbs.zzt.zza zzaVar) {
                zzaVar.zzJ(zzbbs.zzb.this);
            }
        };
        zzbbl zzbblVar = this.f6399a;
        zzbblVar.zzb(zzbbkVar);
        zzbblVar.zzc(1104);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzn(boolean z) {
        this.f6399a.zzc(true != z ? 1106 : 1105);
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final synchronized void zzr() {
        this.f6399a.zzc(6);
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        this.f6399a.zzc(3);
    }
}
