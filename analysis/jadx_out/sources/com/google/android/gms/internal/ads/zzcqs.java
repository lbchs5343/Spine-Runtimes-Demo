package com.google.android.gms.internal.ads;

import g.edt;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzcqs implements zzaym {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f5535a = new AtomicReference();

    /* renamed from: b, reason: collision with root package name */
    public final zzcfk f5536b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f5537c;

    public zzcqs(zzcfk zzcfkVar, Executor executor) {
        this.f5536b = zzcfkVar;
        this.f5537c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final synchronized void zzdp(zzayl zzaylVar) {
        if (this.f5536b != null) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmm)).booleanValue()) {
                if (zzaylVar.zzj) {
                    AtomicReference atomicReference = this.f5535a;
                    Boolean bool = Boolean.TRUE;
                    if (!bool.equals(atomicReference.getAndSet(bool))) {
                        Executor executor = this.f5537c;
                        final zzcfk zzcfkVar = this.f5536b;
                        Objects.requireNonNull(zzcfkVar);
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqq
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcfk.this.onResume();
                            }
                        });
                        return;
                    }
                }
                if (!zzaylVar.zzj) {
                    AtomicReference atomicReference2 = this.f5535a;
                    Boolean bool2 = Boolean.FALSE;
                    if (!bool2.equals(atomicReference2.getAndSet(bool2))) {
                        Executor executor2 = this.f5537c;
                        final zzcfk zzcfkVar2 = this.f5536b;
                        Objects.requireNonNull(zzcfkVar2);
                        executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqr
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcfk.this.onPause();
                            }
                        });
                    }
                }
            }
        }
    }
}
