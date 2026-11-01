package com.google.android.gms.internal.ads;

import g.agd;
import g.cuf;
import g.evf;
import g.fc;

/* loaded from: classes3.dex */
public final class zzbno extends zzcav {

    /* renamed from: a, reason: collision with root package name */
    public final zzbnt f4881a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4882b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4883c = new Object();

    public zzbno(zzbnt zzbntVar) {
        this.f4881a = zzbntVar;
    }

    public final void zzb() {
        agd.e("release: Trying to acquire lock");
        synchronized (this.f4883c) {
            try {
                agd.e("release: Lock acquired");
                if (this.f4882b) {
                    agd.e("release: Lock already released");
                    return;
                }
                this.f4882b = true;
                zzj(new cuf(18), new zzcar());
                zzj(new fc(27, this), new evf(25, this));
                agd.e("release: Lock released");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
