package com.google.android.gms.internal.ads;

import g.dcy;
import g.gaj;
import g.zy;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzgeg {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8254a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfzo f8255b;

    public /* synthetic */ zzgeg(zzfzo zzfzoVar, boolean z) {
        this.f8254a = z;
        this.f8255b = zzfzoVar;
    }

    public final dcy zza(Callable callable, Executor executor) {
        zy zyVar = new zy(this.f8255b, this.f8254a, false);
        zyVar.aj = new gaj(zyVar, callable, executor);
        zyVar.l();
        return zyVar;
    }
}
