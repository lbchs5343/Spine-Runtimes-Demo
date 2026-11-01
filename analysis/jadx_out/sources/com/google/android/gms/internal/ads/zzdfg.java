package com.google.android.gms.internal.ads;

import g.bcl;

/* loaded from: classes3.dex */
public final class zzdfg extends zzdcc {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5911a;

    public final void zza() {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzdfd
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((bcl) obj).onVideoEnd();
            }
        });
    }

    public final void zzb() {
        m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzdfc
            @Override // com.google.android.gms.internal.ads.zzdcb
            public final void zza(Object obj) {
                ((bcl) obj).onVideoPause();
            }
        });
    }

    public final synchronized void zzc() {
        try {
            if (!this.f5911a) {
                m(new zzdfe());
                this.f5911a = true;
            }
            m(new zzdcb() { // from class: com.google.android.gms.internal.ads.zzdff
                @Override // com.google.android.gms.internal.ads.zzdcb
                public final void zza(Object obj) {
                    ((bcl) obj).onVideoPlay();
                }
            });
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd() {
        m(new zzdfe());
        this.f5911a = true;
    }
}
