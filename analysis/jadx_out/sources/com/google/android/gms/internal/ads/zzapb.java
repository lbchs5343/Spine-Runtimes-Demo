package com.google.android.gms.internal.ads;

import android.os.Process;
import g.efr;
import g.gkr;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes3.dex */
public final class zzapb extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f4427a = zzaqb.zzb;

    /* renamed from: b, reason: collision with root package name */
    public final zzaoz f4428b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f4429c = false;

    /* renamed from: d, reason: collision with root package name */
    public final gkr f4430d;

    /* renamed from: e, reason: collision with root package name */
    public final BlockingQueue f4431e;

    /* renamed from: f, reason: collision with root package name */
    public final BlockingQueue f4432f;

    /* renamed from: g, reason: collision with root package name */
    public final zzapg f4433g;

    public zzapb(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, zzaoz zzaozVar, zzapg zzapgVar) {
        this.f4431e = blockingQueue;
        this.f4432f = blockingQueue2;
        this.f4428b = zzaozVar;
        this.f4433g = zzapgVar;
        this.f4430d = new gkr(this, blockingQueue2, zzapgVar);
    }

    public final void h() {
        zzaoz zzaozVar = this.f4428b;
        zzapp zzappVar = (zzapp) this.f4431e.take();
        zzappVar.zzm("cache-queue-take");
        zzappVar.p();
        try {
            zzappVar.zzw();
            zzaoy zza = zzaozVar.zza(zzappVar.zzj());
            BlockingQueue blockingQueue = this.f4432f;
            gkr gkrVar = this.f4430d;
            if (zza == null) {
                zzappVar.zzm("cache-miss");
                if (!gkrVar.t(zzappVar)) {
                    blockingQueue.put(zzappVar);
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                if (zza.zze < currentTimeMillis) {
                    zzappVar.zzm("cache-hit-expired");
                    zzappVar.zze(zza);
                    if (!gkrVar.t(zzappVar)) {
                        blockingQueue.put(zzappVar);
                    }
                } else {
                    zzappVar.zzm("cache-hit");
                    zzapv o = zzappVar.o(new zzapl(zza.zza, zza.zzg));
                    zzappVar.zzm("cache-hit-parsed");
                    if (o.zzc()) {
                        long j = zza.zzf;
                        zzapg zzapgVar = this.f4433g;
                        if (j < currentTimeMillis) {
                            zzappVar.zzm("cache-hit-refresh-needed");
                            zzappVar.zze(zza);
                            o.zzd = true;
                            if (gkrVar.t(zzappVar)) {
                                zzapgVar.zzb(zzappVar, o, null);
                            } else {
                                zzapgVar.zzb(zzappVar, o, new efr(this, 18, zzappVar));
                            }
                        } else {
                            zzapgVar.zzb(zzappVar, o, null);
                        }
                    } else {
                        zzappVar.zzm("cache-parsing-failed");
                        zzaozVar.zzc(zzappVar.zzj(), true);
                        zzappVar.zze(null);
                        if (!gkrVar.t(zzappVar)) {
                            blockingQueue.put(zzappVar);
                        }
                    }
                }
            }
            zzappVar.p();
        } catch (Throwable th) {
            zzappVar.p();
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f4427a) {
            zzaqb.zzd("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f4428b.zzb();
        while (true) {
            try {
                h();
            } catch (InterruptedException unused) {
                if (this.f4429c) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaqb.zzb("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zzb() {
        this.f4429c = true;
        interrupt();
    }
}
