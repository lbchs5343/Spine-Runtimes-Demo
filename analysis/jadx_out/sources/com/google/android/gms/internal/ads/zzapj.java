package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes3.dex */
public final class zzapj extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final zzaoz f4439a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f4440b = false;

    /* renamed from: c, reason: collision with root package name */
    public final zzapg f4441c;

    /* renamed from: d, reason: collision with root package name */
    public final BlockingQueue f4442d;

    /* renamed from: e, reason: collision with root package name */
    public final zzapi f4443e;

    public zzapj(BlockingQueue blockingQueue, zzapi zzapiVar, zzaoz zzaozVar, zzapg zzapgVar) {
        this.f4442d = blockingQueue;
        this.f4443e = zzapiVar;
        this.f4439a = zzaozVar;
        this.f4441c = zzapgVar;
    }

    public final void f() {
        zzapg zzapgVar = this.f4441c;
        zzapp zzappVar = (zzapp) this.f4442d.take();
        SystemClock.elapsedRealtime();
        zzappVar.p();
        try {
            try {
                zzappVar.zzm("network-queue-take");
                zzappVar.zzw();
                TrafficStats.setThreadStatsTag(zzappVar.zzc());
                zzapl zza = this.f4443e.zza(zzappVar);
                zzappVar.zzm("network-http-complete");
                if (zza.zze && zzappVar.zzv()) {
                    zzappVar.r("not-modified");
                    zzappVar.m();
                } else {
                    zzapv o = zzappVar.o(zza);
                    zzappVar.zzm("network-parse-complete");
                    if (o.zzb != null) {
                        this.f4439a.zzd(zzappVar.zzj(), o.zzb);
                        zzappVar.zzm("network-cache-written");
                    }
                    zzappVar.zzq();
                    zzapgVar.zzb(zzappVar, o, null);
                    zzappVar.n(o);
                }
            } catch (zzapy e2) {
                SystemClock.elapsedRealtime();
                zzapgVar.zza(zzappVar, e2);
                zzappVar.m();
            } catch (Exception e3) {
                zzaqb.zzc(e3, "Unhandled exception %s", e3.toString());
                zzapy zzapyVar = new zzapy(e3);
                SystemClock.elapsedRealtime();
                zzapgVar.zza(zzappVar, zzapyVar);
                zzappVar.m();
            }
            zzappVar.p();
        } catch (Throwable th) {
            zzappVar.p();
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                f();
            } catch (InterruptedException unused) {
                if (this.f4440b) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaqb.zzb("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zza() {
        this.f4440b = true;
        interrupt();
    }
}
