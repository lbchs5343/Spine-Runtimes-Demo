package com.google.android.gms.internal.ads;

import g.eus;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdbi extends zzdcc implements zzbij {
    public zzdbi(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbij
    public final synchronized void zzb(final String str, final String str2) {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzdbh
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((eus) obj).onAppEvent(str, str2);
            }
        });
    }
}
