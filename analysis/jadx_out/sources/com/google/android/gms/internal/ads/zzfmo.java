package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import g.agd;
import g.aik;
import g.bzv;
import g.cvb;
import g.esy;
import g.ghd;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public abstract class zzfmo {

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f8014c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbpg f8015d;

    /* renamed from: f, reason: collision with root package name */
    public final ghd f8017f;

    /* renamed from: g, reason: collision with root package name */
    public final ClientApi f8018g;
    public final cvb i;
    public final zzflx j;
    public final Context k;
    public final int m;
    public final aik n;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentLinkedQueue f8013b = new ConcurrentLinkedQueue();
    public final AtomicBoolean h = new AtomicBoolean(true);
    public final AtomicBoolean l = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f8016e = new AtomicBoolean(true);

    public zzfmo(ClientApi clientApi, Context context, int i, zzbpg zzbpgVar, ghd ghdVar, aik aikVar, ScheduledExecutorService scheduledExecutorService, zzflx zzflxVar, cvb cvbVar) {
        this.f8018g = clientApi;
        this.k = context;
        this.m = i;
        this.f8015d = zzbpgVar;
        this.f8017f = ghdVar;
        this.n = aikVar;
        this.f8014c = scheduledExecutorService;
        this.j = zzflxVar;
        this.i = cvbVar;
    }

    public static void o(zzfmo zzfmoVar, boolean z) {
        synchronized (zzfmoVar) {
            try {
                if (zzfmoVar.j.zzd()) {
                    return;
                }
                if (z) {
                    zzfmoVar.j.zzb();
                }
                zzfmoVar.f8014c.schedule(new zzfmj(zzfmoVar), zzfmoVar.j.zza(), TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzgfa a();

    public final synchronized void p() {
        Iterator it = this.f8013b.iterator();
        while (it.hasNext()) {
            if (((zzfmi) it.next()).zzc()) {
                it.remove();
            }
        }
    }

    public final synchronized void q() {
        p();
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfml
            @Override // java.lang.Runnable
            public final void run() {
                zzfmo zzfmoVar = zzfmo.this;
                if (zzfmoVar.f8016e.get() && zzfmoVar.f8013b.isEmpty()) {
                    try {
                        zzfmoVar.n.b(zzfmoVar.f8017f);
                    } catch (RemoteException unused) {
                        agd.b("Failed to call onAdsExhausted");
                    }
                }
            }
        });
        if (!this.l.get() && this.h.get()) {
            if (this.f8013b.size() < this.f8017f.zzd) {
                this.l.set(true);
                zzgei.zzr(a(), new bzv(3, this), this.f8014c);
            }
        }
    }

    public final synchronized zzfmo zzc() {
        this.f8014c.submit(new zzfmj(this));
        return this;
    }

    public final synchronized Object zzd() {
        this.j.zzc();
        zzfmi zzfmiVar = (zzfmi) this.f8013b.poll();
        q();
        if (zzfmiVar == null) {
            return null;
        }
        return zzfmiVar.zzb();
    }

    public final void zzk() {
        this.h.set(false);
        this.f8016e.set(false);
    }

    public final synchronized boolean zzl() {
        p();
        return !this.f8013b.isEmpty();
    }
}
