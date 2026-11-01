package com.google.android.gms.internal.ads;

import g.abz;
import g.adq;
import g.fim;
import g.gwt;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzfar implements zzcwp, zzcyl, zzfch, fim, zzcyx, zzcxc, zzdel {

    /* renamed from: f, reason: collision with root package name */
    public final zzfgy f7736f;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicReference f7737g = new AtomicReference();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f7733c = new AtomicReference();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f7734d = new AtomicReference();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f7735e = new AtomicReference();
    public final AtomicReference h = new AtomicReference();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f7732b = new AtomicReference();

    /* renamed from: a, reason: collision with root package name */
    public zzfar f7731a = null;

    public zzfar(zzfgy zzfgyVar) {
        this.f7736f = zzfgyVar;
    }

    public static zzfar zzi(zzfar zzfarVar) {
        zzfar zzfarVar2 = new zzfar(zzfarVar.f7736f);
        zzfarVar2.f7731a = zzfarVar;
        return zzfarVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(final abz abzVar) {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzdB(abzVar);
            return;
        }
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfam
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbai) obj).zzc(abz.this);
            }
        };
        AtomicReference atomicReference = this.f7737g;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfan
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbai) obj).zzb(abz.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzdG();
        } else {
            zzfby.zza(this.f7734d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfai
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbam) obj).zzb();
                }
            });
        }
    }

    @Override // g.fim
    public final void zzdH() {
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
    }

    @Override // g.fim
    public final void zzdk() {
    }

    @Override // g.fim
    public final void zzdq() {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzdq();
        } else {
            zzfby.zza(this.h, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfaf
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((fim) obj).zzdq();
                }
            });
        }
    }

    @Override // g.fim
    public final void zzdr() {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzdr();
            return;
        }
        zzfby.zza(this.h, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfaq
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((fim) obj).zzdr();
            }
        });
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfad
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbam) obj).zzf();
            }
        };
        AtomicReference atomicReference = this.f7734d;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfae
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbam) obj).zze();
            }
        });
    }

    @Override // g.fim
    public final void zzdt() {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzdt();
        } else {
            zzfby.zza(this.h, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfap
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((fim) obj).zzdt();
                }
            });
        }
    }

    @Override // g.fim
    public final void zzdu(final int i) {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzdu(i);
        } else {
            zzfby.zza(this.h, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfal
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((fim) obj).zzdu(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzg() {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzg();
        } else {
            zzfby.zza(this.f7735e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfao
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzcyl) obj).zzg();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzh(final adq adqVar) {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzh(adqVar);
        } else {
            zzfby.zza(this.f7732b, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfac
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((gwt) obj).b(adq.this);
                }
            });
        }
    }

    public final void zzj() {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzj();
            return;
        }
        this.f7736f.zza();
        zzfby.zza(this.f7733c, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfaj
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbaj) obj).zza();
            }
        });
        zzfby.zza(this.f7734d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfak
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbam) obj).zzc();
            }
        });
    }

    public final void zzk(final zzbaf zzbafVar) {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzk(zzbafVar);
        } else {
            zzfby.zza(this.f7737g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfah
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbai) obj).zzd(zzbaf.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfch
    public final void zzl(zzfch zzfchVar) {
        this.f7731a = (zzfar) zzfchVar;
    }

    public final void zzm(fim fimVar) {
        this.h.set(fimVar);
    }

    public final void zzn(gwt gwtVar) {
        this.f7732b.set(gwtVar);
    }

    public final void zzo(zzbai zzbaiVar) {
        this.f7737g.set(zzbaiVar);
    }

    public final void zzp(zzbam zzbamVar) {
        this.f7734d.set(zzbamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final void zzq(final abz abzVar) {
        zzfar zzfarVar = this.f7731a;
        if (zzfarVar != null) {
            zzfarVar.zzq(abzVar);
        } else {
            zzfby.zza(this.f7734d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfag
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbam) obj).zzd(abz.this);
                }
            });
        }
    }
}
