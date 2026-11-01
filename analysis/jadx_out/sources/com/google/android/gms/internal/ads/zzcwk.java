package com.google.android.gms.internal.ads;

import g.evo;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzcwk extends zzdcc implements evo {
    public zzcwk(Set set) {
        super(set);
    }

    @Override // g.evo
    public final void onAdClicked() {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcwj
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((evo) obj).onAdClicked();
            }
        });
    }
}
