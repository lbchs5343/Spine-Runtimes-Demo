package com.google.android.gms.internal.ads;

import g.abz;
import g.adq;
import g.dhb;
import g.eus;
import g.evo;
import g.fim;
import g.fsp;

/* loaded from: classes3.dex */
public final class zzdav implements eus, dhb, zzcwm, evo, zzcyx, zzcxg, zzcyl, fim, zzcxc, zzdel {

    /* renamed from: a, reason: collision with root package name */
    public zzemw f5840a;

    /* renamed from: b, reason: collision with root package name */
    public zzfar f5841b;

    /* renamed from: c, reason: collision with root package name */
    public zzfdw f5842c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdas f5843d = new zzdas(this);

    /* renamed from: e, reason: collision with root package name */
    public zzems f5844e;

    public static void f(Object obj, fsp fspVar) {
        if (obj != null) {
            fspVar.zza(obj);
        }
    }

    @Override // g.evo
    public final void onAdClicked() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczl
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).onAdClicked();
            }
        });
        f(this.f5840a, new fsp() { // from class: com.google.android.gms.internal.ads.zzczm
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzemw) obj).onAdClicked();
            }
        });
    }

    @Override // g.dhb
    public final void onAdMetadataChanged() {
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzczr
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).onAdMetadataChanged();
            }
        });
    }

    @Override // g.eus
    public final void onAppEvent(final String str, final String str2) {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczx
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).onAppEvent(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzdaq
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zza();
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzdar
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zza();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzdaj
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzb();
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzdak
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczs
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzc();
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzczt
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzdag
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzdG();
            }
        });
        f(this.f5840a, new fsp() { // from class: com.google.android.gms.internal.ads.zzdal
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzemw) obj).zzdG();
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzdam
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzdG();
            }
        });
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdan
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzdG();
            }
        });
    }

    @Override // g.fim
    public final void zzdH() {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdae
            @Override // g.fsp
            public final void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczy
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzdf();
            }
        });
    }

    @Override // g.fim
    public final void zzdk() {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzczq
            @Override // g.fsp
            public final void zza(Object obj) {
            }
        });
    }

    @Override // g.fim
    public final void zzdq() {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdad
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzdq();
            }
        });
    }

    @Override // g.fim
    public final void zzdr() {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzczz
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzdr();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(final zzbwj zzbwjVar, final String str, final String str2) {
        f(this.f5844e, new fsp(zzbwjVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzczu
            @Override // g.fsp
            public final void zza(Object obj) {
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzczw
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzds(zzbwj.this, str, str2);
            }
        });
    }

    @Override // g.fim
    public final void zzdt() {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdaf
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzdt();
            }
        });
    }

    @Override // g.fim
    public final void zzdu(final int i) {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdah
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzdu(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczk
            @Override // g.fsp
            public final void zza(Object obj) {
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzczv
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczn
            @Override // g.fsp
            public final void zza(Object obj) {
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzczo
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzg() {
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdai
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzh(final adq adqVar) {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzdaa
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzh(adq.this);
            }
        });
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzdab
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzh(adq.this);
            }
        });
        f(this.f5841b, new fsp() { // from class: com.google.android.gms.internal.ads.zzdac
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfar) obj).zzh(adq.this);
            }
        });
    }

    public final zzdas zzi() {
        return this.f5843d;
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final void zzq(final abz abzVar) {
        f(this.f5842c, new fsp() { // from class: com.google.android.gms.internal.ads.zzdao
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzfdw) obj).zzq(abz.this);
            }
        });
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzdap
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzq(abz.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        f(this.f5844e, new fsp() { // from class: com.google.android.gms.internal.ads.zzczp
            @Override // g.fsp
            public final void zza(Object obj) {
                ((zzems) obj).zzr();
            }
        });
    }
}
