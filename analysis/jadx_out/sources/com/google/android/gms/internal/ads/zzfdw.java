package com.google.android.gms.internal.ads;

import g.abz;
import g.adq;
import g.dhb;
import g.gwt;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzfdw implements dhb, zzcya, zzcwp, zzcwm, zzcxc, zzcyx, zzfch, zzdel {

    /* renamed from: f, reason: collision with root package name */
    public final zzfgy f7811f;
    public final AtomicReference h = new AtomicReference();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f7808c = new AtomicReference();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f7809d = new AtomicReference();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f7810e = new AtomicReference();
    public final AtomicReference i = new AtomicReference();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f7807b = new AtomicReference();

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f7806a = new AtomicReference();

    /* renamed from: g, reason: collision with root package name */
    public zzfdw f7812g = null;

    public zzfdw(zzfgy zzfgyVar) {
        this.f7811f = zzfgyVar;
    }

    @Override // g.dhb
    public final void onAdMetadataChanged() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.onAdMetadataChanged();
        } else {
            zzfby.zza(this.h, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdk
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((dhb) obj).onAdMetadataChanged();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zza();
            return;
        }
        this.f7811f.zza();
        zzfby.zza(this.f7809d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfds
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxf) obj).zzg();
            }
        });
        zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdt
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbwp) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzb();
        } else {
            zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdu
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbwp) obj).zzh();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzc();
            return;
        }
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfde
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxf) obj).zzj();
            }
        };
        AtomicReference atomicReference = this.f7809d;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdf
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbwp) obj).zzj();
            }
        });
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdg
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxf) obj).zzf();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(final abz abzVar) {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzdB(abzVar);
            return;
        }
        final int i = abzVar.zza;
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdp
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxj) obj).zzf(abz.this);
            }
        };
        AtomicReference atomicReference = this.f7808c;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdq
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxj) obj).zze(i);
            }
        });
        zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdr
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbwp) obj).zzg(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzdG();
        } else {
            zzfby.zza(this.f7809d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdl
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbxf) obj).zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(final zzbwj zzbwjVar, final String str, final String str2) {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzds(zzbwjVar, str, str2);
            return;
        }
        zzfby.zza(this.f7809d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdv
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                zzbwj zzbwjVar2 = zzbwj.this;
                ((zzbxf) obj).zzk(new zzbxt(zzbwjVar2.zzc(), zzbwjVar2.zzb()));
            }
        });
        zzfby.zza(this.i, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdb
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                zzbwj zzbwjVar2 = zzbwj.this;
                ((zzbxk) obj).zze(new zzbxt(zzbwjVar2.zzc(), zzbwjVar2.zzb()), str, str2);
            }
        });
        zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdc
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbwp) obj).zze(zzbwj.this);
            }
        });
        zzfby.zza(this.f7807b, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdd
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbwk) obj).zze(zzbwj.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zze();
        } else {
            zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdo
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbwp) obj).zzk();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzf();
        } else {
            zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfda
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((zzbwp) obj).zzl();
                }
            });
        }
    }

    public final void zzg(dhb dhbVar) {
        this.h.set(dhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzh(final adq adqVar) {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzh(adqVar);
        } else {
            zzfby.zza(this.f7806a, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdh
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((gwt) obj).b(adq.this);
                }
            });
        }
    }

    public final void zzi(gwt gwtVar) {
        this.f7806a.set(gwtVar);
    }

    public final void zzj(zzbxf zzbxfVar) {
        this.f7809d.set(zzbxfVar);
    }

    public final void zzk(zzbxj zzbxjVar) {
        this.f7808c.set(zzbxjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfch
    public final void zzl(zzfch zzfchVar) {
        this.f7812g = (zzfdw) zzfchVar;
    }

    @Deprecated
    public final void zzm(zzbwp zzbwpVar) {
        this.f7810e.set(zzbwpVar);
    }

    @Deprecated
    public final void zzn(zzbwk zzbwkVar) {
        this.f7807b.set(zzbwkVar);
    }

    public final void zzo(zzbxk zzbxkVar) {
        this.i.set(zzbxkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final void zzq(final abz abzVar) {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzq(abzVar);
            return;
        }
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdm
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxf) obj).zzi(abz.this);
            }
        };
        AtomicReference atomicReference = this.f7809d;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdn
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxf) obj).zzh(abz.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        zzfdw zzfdwVar = this.f7812g;
        if (zzfdwVar != null) {
            zzfdwVar.zzs();
            return;
        }
        zzfby.zza(this.f7808c, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdi
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbxj) obj).zzg();
            }
        });
        zzfby.zza(this.f7810e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzfdj
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((zzbwp) obj).zzi();
            }
        });
    }
}
