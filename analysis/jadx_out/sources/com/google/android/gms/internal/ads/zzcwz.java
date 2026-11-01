package com.google.android.gms.internal.ads;

import g.abz;
import g.agd;
import g.edt;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcwz extends zzdcc implements zzcwq {

    /* renamed from: a, reason: collision with root package name */
    public ScheduledFuture f5804a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5805b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f5806c;

    public zzcwz(zzcwy zzcwyVar, Set set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.f5805b = false;
        this.f5806c = scheduledExecutorService;
        zzo(zzcwyVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzcwq
    public final void zza(final abz abzVar) {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcwr
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((zzcwq) obj).zza(abz.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwq
    public final void zzb() {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcws
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((zzcwq) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwq
    public final void zzc(final zzdgu zzdguVar) {
        if (this.f5805b) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f5804a;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcwu
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((zzcwq) obj).zzc(zzdgu.this);
            }
        });
    }

    public final synchronized void zze() {
        ScheduledFuture scheduledFuture = this.f5804a;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    public final void zzf() {
        this.f5804a = this.f5806c.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwt
            @Override // java.lang.Runnable
            public final void run() {
                zzcwz zzcwzVar = zzcwz.this;
                synchronized (zzcwzVar) {
                    agd.d("Timeout waiting for show call succeed to be called.");
                    zzcwzVar.zzc(new zzdgu("Timeout for show call succeed."));
                    zzcwzVar.f5805b = true;
                }
            }
        }, ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkq)).intValue(), TimeUnit.MILLISECONDS);
    }
}
