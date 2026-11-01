package com.google.android.gms.internal.ads;

import g.adq;
import g.gwt;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzemv implements zzcyx {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f7256a = new AtomicReference();

    public final void zza(gwt gwtVar) {
        this.f7256a.set(gwtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcyx
    public final void zzh(final adq adqVar) {
        zzfby.zza(this.f7256a, new zzfbx() { // from class: com.google.android.gms.internal.ads.zzemu
            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza(Object obj) {
                ((gwt) obj).b(adq.this);
            }
        });
    }
}
