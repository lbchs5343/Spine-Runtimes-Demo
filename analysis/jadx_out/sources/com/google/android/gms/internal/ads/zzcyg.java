package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dhb;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzcyg extends zzdcc implements zzbih {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f5819a;

    public zzcyg(Set set) {
        super(set);
        this.f5819a = new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbih
    public final synchronized void zza(String str, Bundle bundle) {
        this.f5819a.putAll(bundle);
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzcyf
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((dhb) obj).onAdMetadataChanged();
            }
        });
    }

    public final synchronized Bundle zzb() {
        return new Bundle(this.f5819a);
    }
}
