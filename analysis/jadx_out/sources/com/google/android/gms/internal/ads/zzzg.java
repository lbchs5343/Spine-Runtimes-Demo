package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import g.aku;
import g.eky;
import j$.util.Objects;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public final class zzzg {
    public static final zzyz zza = new zzyz(2, -9223372036854775807L);
    public static final zzyz zzb = new zzyz(3, -9223372036854775807L);

    /* renamed from: a, reason: collision with root package name */
    public IOException f8970a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f8971b;

    /* renamed from: c, reason: collision with root package name */
    public final zzyx f8972c;

    /* renamed from: d, reason: collision with root package name */
    public eky f8973d;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzyx] */
    public zzzg(String str) {
        final String str2 = "ExoPlayer:Loader:ProgressiveMediaPeriod";
        final ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory(str2) { // from class: com.google.android.gms.internal.ads.zzel
            public final /* synthetic */ String zza = "ExoPlayer:Loader:ProgressiveMediaPeriod";

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, this.zza);
            }
        });
        this.f8971b = newSingleThreadExecutor;
        Objects.requireNonNull(newSingleThreadExecutor);
        this.f8972c = new Runnable() { // from class: com.google.android.gms.internal.ads.zzyx
            @Override // java.lang.Runnable
            public final void run() {
                newSingleThreadExecutor.shutdown();
            }
        };
    }

    public static zzyz zzb(boolean z, long j) {
        return new zzyz(z ? 1 : 0, j);
    }

    public final long zza(zzzb zzzbVar, zzyy zzyyVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzdb.zzb(myLooper);
        this.f8970a = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        eky ekyVar = new eky(this, myLooper, zzzbVar, zzyyVar, elapsedRealtime);
        zzdb.zzf(this.f8973d == null);
        this.f8973d = ekyVar;
        SystemClock.elapsedRealtime();
        ekyVar.f15723c.getClass();
        ekyVar.f15724d = null;
        eky ekyVar2 = this.f8973d;
        ekyVar2.getClass();
        this.f8971b.execute(ekyVar2);
        return elapsedRealtime;
    }

    public final void zzg() {
        eky ekyVar = this.f8973d;
        zzdb.zzb(ekyVar);
        ekyVar.j(false);
    }

    public final void zzh() {
        this.f8970a = null;
    }

    public final void zzi(int i) throws IOException {
        IOException iOException;
        IOException iOException2 = this.f8970a;
        if (iOException2 != null) {
            throw iOException2;
        }
        eky ekyVar = this.f8973d;
        if (ekyVar != null && (iOException = ekyVar.f15724d) != null && ekyVar.f15725e > i) {
            throw iOException;
        }
    }

    public final void zzj(zzzc zzzcVar) {
        eky ekyVar = this.f8973d;
        if (ekyVar != null) {
            ekyVar.j(true);
        }
        this.f8971b.execute(new aku(18, zzzcVar));
        run();
    }

    public final boolean zzk() {
        return this.f8970a != null;
    }

    public final boolean zzl() {
        return this.f8973d != null;
    }
}
