package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzawy implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final zzawf f4569a;

    /* renamed from: b, reason: collision with root package name */
    public final zzasf f4570b;

    public zzawy(zzawf zzawfVar, zzasf zzasfVar) {
        this.f4569a = zzawfVar;
        this.f4570b = zzasfVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        if (this.f4569a.zzl() != null) {
            this.f4569a.zzl().get();
        }
        zzata zzc = this.f4569a.zzc();
        if (zzc == null) {
            return null;
        }
        try {
            synchronized (this.f4570b) {
                this.f4570b.zzaY(zzc.zzaV(), zzgyh.zza());
            }
            return null;
        } catch (zzgzm | NullPointerException unused) {
            return null;
        }
    }
}
