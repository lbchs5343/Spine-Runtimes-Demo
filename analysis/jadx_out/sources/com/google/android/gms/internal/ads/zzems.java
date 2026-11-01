package com.google.android.gms.internal.ads;

import android.util.Pair;
import g.abz;
import g.adq;
import g.agd;
import g.bzx;
import g.edt;
import g.ejp;
import g.eus;
import g.evo;
import g.fbj;
import g.gpa;
import g.gwt;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzems implements eus, zzczj, zzcya, zzcwp, zzcxg, evo, zzcwm, zzcyx, zzcxc, zzdel {
    public final zzdsm h;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicReference f7254g = new AtomicReference();
    public final AtomicReference i = new AtomicReference();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f7251d = new AtomicReference();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f7252e = new AtomicReference();

    /* renamed from: f, reason: collision with root package name */
    public final AtomicReference f7253f = new AtomicReference();
    public final AtomicBoolean j = new AtomicBoolean(true);

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f7249b = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f7248a = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayBlockingQueue f7250c = new ArrayBlockingQueue(((Integer) edt.f15376a.f15379d.zza(zzbcn.zziw)).intValue());

    public zzems(zzdsm zzdsmVar) {
        this.h = zzdsmVar;
    }

    public final void k() {
        if (this.f7249b.get() && this.f7248a.get()) {
            ArrayBlockingQueue arrayBlockingQueue = this.f7250c;
            Iterator it = arrayBlockingQueue.iterator();
            while (it.hasNext()) {
                final Pair pair = (Pair) it.next();
                zzfby.zza(this.i, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemd
                    @Override // com.google.android.gms.internal.ads.zzfbx
                    public final void zza(Object obj) {
                        Pair pair2 = pair;
                        ((fbj) obj).zzc((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            arrayBlockingQueue.clear();
            this.j.set(false);
        }
    }

    @Override // g.evo
    public final void onAdClicked() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
            return;
        }
        zzfby.zza(this.f7254g, new zzemq());
    }

    @Override // g.eus
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (!this.j.get()) {
            zzfby.zza(this.i, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemk
                @Override // com.google.android.gms.internal.ads.zzfbx
                public final void zza(Object obj) {
                    ((fbj) obj).zzc(str, str2);
                }
            });
            return;
        }
        if (!this.f7250c.offer(new Pair(str, str2))) {
            agd.c("The queue for app events is full, dropping the new event.");
            zzdsm zzdsmVar = this.h;
            if (zzdsmVar != null) {
                zzdsl zza = zzdsmVar.zza();
                zza.zzb("action", "dae_action");
                zza.zzb("dae_name", str);
                zza.zzb("dae_data", str2);
                zza.zzf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
        zzfby.zza(this.f7254g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzema
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzd();
            }
        });
        zzfby.zza(this.f7253f, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemb
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((bzx) obj).zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
        zzfby.zza(this.f7254g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzeml
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzh();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
        zzfby.zza(this.f7254g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemn
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzj();
            }
        });
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemo
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((bzx) obj).zzf();
            }
        };
        AtomicReference atomicReference = this.f7253f;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemp
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((bzx) obj).zze();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(final abz abzVar) {
        zzfbx zzfbxVar = new zzfbx() { // from class: com.google.android.gms.internal.ads.zzeme
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzf(abz.this);
            }
        };
        AtomicReference atomicReference = this.f7254g;
        zzfby.zza(atomicReference, zzfbxVar);
        zzfby.zza(atomicReference, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemf
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zze(abz.this.zza);
            }
        });
        zzfby.zza(this.f7252e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemg
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((gpa) obj).zzb(abz.this);
            }
        });
        this.j.set(false);
        this.f7250c.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkt)).booleanValue()) {
            zzfby.zza(this.f7254g, new zzemq());
        }
        zzfby.zza(this.f7253f, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemc
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((bzx) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
        zzfby.zza(this.f7254g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemm
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzk();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
        this.j.set(true);
        this.f7248a.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(zzbwj zzbwjVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
    }

    public final synchronized ejp zzg() {
        return (ejp) this.f7254g.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzh(final adq adqVar) {
        zzfby.zza(this.f7251d, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemr
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((gwt) obj).b(adq.this);
            }
        });
    }

    public final synchronized fbj zzi() {
        return (fbj) this.i.get();
    }

    public final void zzj(ejp ejpVar) {
        this.f7254g.set(ejpVar);
    }

    public final void zzk(gpa gpaVar) {
        this.f7252e.set(gpaVar);
    }

    public final void zzl(gwt gwtVar) {
        this.f7251d.set(gwtVar);
    }

    public final void zzm(fbj fbjVar) {
        this.i.set(fbjVar);
        this.f7249b.set(true);
        k();
    }

    public final void zzn(bzx bzxVar) {
        this.f7253f.set(bzxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final void zzq(final abz abzVar) {
        zzfby.zza(this.f7253f, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemj
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((bzx) obj).zzd(abz.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        zzfby.zza(this.f7254g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzg();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final synchronized void zzs() {
        zzfby.zza(this.f7254g, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemh
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((ejp) obj).zzi();
            }
        });
        zzfby.zza(this.f7252e, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemi
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((gpa) obj).zzc();
            }
        });
        this.f7248a.set(true);
        k();
    }
}
