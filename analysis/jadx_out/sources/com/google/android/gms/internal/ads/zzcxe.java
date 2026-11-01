package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes3.dex */
public final class zzcxe extends zzdcc {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5813a;

    public zzcxe(Set set) {
        super(set);
        this.f5813a = false;
    }

    public final synchronized void zza() {
        if (this.f5813a) {
            return;
        }
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcxd
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((zzcxg) obj).zzr();
            }
        });
        this.f5813a = true;
    }
}
