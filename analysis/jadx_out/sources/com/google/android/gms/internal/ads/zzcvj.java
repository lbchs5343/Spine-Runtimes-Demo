package com.google.android.gms.internal.ads;

import g.abz;
import g.agd;
import g.dcq;
import g.edt;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzcvj implements zzcwm, zzddq, zzdbg, zzcxc, zzaym {

    /* renamed from: a, reason: collision with root package name */
    public final String f5735a;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f5737c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f5738d;

    /* renamed from: f, reason: collision with root package name */
    public final zzcxe f5740f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfet f5741g;
    public ScheduledFuture h;

    /* renamed from: e, reason: collision with root package name */
    public final zzgfa f5739e = zzgfa.zze();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f5736b = new AtomicBoolean();

    public zzcvj(zzcxe zzcxeVar, zzfet zzfetVar, ScheduledExecutorService scheduledExecutorService, zzges zzgesVar, String str) {
        this.f5740f = zzcxeVar;
        this.f5741g = zzfetVar;
        this.f5737c = scheduledExecutorService;
        this.f5738d = zzgesVar;
        this.f5735a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
        zzfet zzfetVar = this.f5741g;
        if (zzfetVar.zze == 3) {
            return;
        }
        int i = zzfetVar.zzY;
        if (i == 0 || i == 1) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzle)).booleanValue() && this.f5735a.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                return;
            }
            this.f5740f.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzle)).booleanValue() && this.f5735a.equals("com.google.ads.mediation.admob.AdMobAdapter") && zzaylVar.zzj && this.f5736b.compareAndSet(false, true) && this.f5741g.zze != 3) {
            agd.e("Full screen 1px impression occurred");
            this.f5740f.zza();
        }
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

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final synchronized void zzj() {
        try {
            if (this.f5739e.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.h;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f5739e.zzc(Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void zzk() {
        zzfet zzfetVar = this.f5741g;
        if (zzfetVar.zze == 3) {
            return;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbC)).booleanValue() && zzfetVar.zzY == 2) {
            if (zzfetVar.zzq == 0) {
                this.f5740f.zza();
                return;
            }
            zzgei.zzr(this.f5739e, new dcq(29, this), this.f5738d);
            this.h = this.f5737c.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcvh
                @Override // java.lang.Runnable
                public final void run() {
                    zzcvj zzcvjVar = zzcvj.this;
                    synchronized (zzcvjVar) {
                        try {
                            if (zzcvjVar.f5739e.isDone()) {
                                return;
                            }
                            zzcvjVar.f5739e.zzc(Boolean.TRUE);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }, zzfetVar.zzq, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final synchronized void zzq(abz abzVar) {
        try {
            if (this.f5739e.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.h;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f5739e.zzd(new Exception());
        } catch (Throwable th) {
            throw th;
        }
    }
}
