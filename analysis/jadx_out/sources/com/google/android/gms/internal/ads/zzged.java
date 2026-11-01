package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public abstract class zzged extends zzgeb implements dcy {
    @Override // g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        d().addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgeb
    public /* bridge */ /* synthetic */ Future b() {
        throw null;
    }

    public abstract dcy d();
}
