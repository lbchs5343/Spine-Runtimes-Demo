package com.google.android.gms.internal.ads;

import g.eus;
import g.hct;

/* loaded from: classes3.dex */
public final class zzaza extends hct {

    /* renamed from: a, reason: collision with root package name */
    public final eus f4621a;

    public zzaza(eus eusVar) {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
        this.f4621a = eusVar;
    }

    public final eus zzb() {
        return this.f4621a;
    }

    @Override // g.fbj
    public final void zzc(String str, String str2) {
        this.f4621a.onAppEvent(str, str2);
    }
}
