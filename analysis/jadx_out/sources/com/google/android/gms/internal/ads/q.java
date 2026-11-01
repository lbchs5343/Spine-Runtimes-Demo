package com.google.android.gms.internal.ads;

import g.ctm;
import g.dcy;
import g.eaf;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public abstract class q extends ak {

    /* renamed from: a, reason: collision with root package name */
    public static final ctm f3969a = new ctm(1, q.class);

    /* renamed from: b, reason: collision with root package name */
    public zzfzj f3970b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3971c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3972d;

    public q(zzfzj zzfzjVar, boolean z, boolean z2) {
        int size = zzfzjVar.size();
        this.p = null;
        this.q = size;
        this.f3970b = zzfzjVar;
        this.f3972d = z;
        this.f3971c = z2;
    }

    public final void e(zzfzj zzfzjVar) {
        int ao = ak.n.ao(this);
        int i = 0;
        zzfwq.zzl(ao >= 0, "Less than 0 remaining futures");
        if (ao == 0) {
            if (zzfzjVar != null) {
                zzgbu it = zzfzjVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        try {
                            m(i, zzgfj.zza(future));
                        } catch (ExecutionException e2) {
                            j(e2.getCause());
                        } catch (Throwable th) {
                            j(th);
                        }
                    }
                    i++;
                }
            }
            this.p = null;
            i();
            h(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final String f() {
        zzfzj zzfzjVar = this.f3970b;
        return zzfzjVar != null ? "futures=".concat(zzfzjVar.toString()) : super.f();
    }

    @Override // com.google.android.gms.internal.ads.zzgcy
    public final void g() {
        zzfzj zzfzjVar = this.f3970b;
        h(1);
        if ((zzfzjVar != null) && isCancelled()) {
            boolean ah = ah();
            zzgbu it = zzfzjVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(ah);
            }
        }
    }

    public abstract void h(int i);

    public abstract void i();

    public final void j(Throwable th) {
        th.getClass();
        if (this.f3972d && !zzd(th)) {
            Set set = this.p;
            if (set == null) {
                Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                newSetFromMap.getClass();
                if (!isCancelled()) {
                    Throwable ag = ag();
                    Objects.requireNonNull(ag);
                    while (ag != null && newSetFromMap.add(ag)) {
                        ag = ag.getCause();
                    }
                }
                ak.n.ai(this, newSetFromMap);
                set = this.p;
                Objects.requireNonNull(set);
            }
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                if (set.add(th2)) {
                }
            }
            f3969a.e().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
            return;
        }
        boolean z = th instanceof Error;
        if (z) {
            f3969a.e().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != z ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
        }
    }

    public final void k(int i, dcy dcyVar) {
        try {
            if (dcyVar.isCancelled()) {
                this.f3970b = null;
                cancel(false);
            } else {
                try {
                    m(i, zzgfj.zza(dcyVar));
                } catch (ExecutionException e2) {
                    j(e2.getCause());
                } catch (Throwable th) {
                    j(th);
                }
            }
        } finally {
            e(null);
        }
    }

    public final void l() {
        Objects.requireNonNull(this.f3970b);
        if (this.f3970b.isEmpty()) {
            i();
            return;
        }
        if (!this.f3972d) {
            final zzfzj zzfzjVar = this.f3971c ? this.f3970b : null;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdh
                @Override // java.lang.Runnable
                public final void run() {
                    q.this.e(zzfzjVar);
                }
            };
            zzgbu it = this.f3970b.iterator();
            while (it.hasNext()) {
                dcy dcyVar = (dcy) it.next();
                if (dcyVar.isDone()) {
                    e(zzfzjVar);
                } else {
                    dcyVar.addListener(runnable, eaf.zza);
                }
            }
            return;
        }
        zzgbu it2 = this.f3970b.iterator();
        final int i = 0;
        while (it2.hasNext()) {
            final dcy dcyVar2 = (dcy) it2.next();
            int i2 = i + 1;
            if (dcyVar2.isDone()) {
                k(i, dcyVar2);
            } else {
                dcyVar2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdg
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.this.k(i, dcyVar2);
                    }
                }, eaf.zza);
            }
            i = i2;
        }
    }

    public abstract void m(int i, Object obj);
}
