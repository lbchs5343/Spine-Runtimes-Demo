package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzenr implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7292a;

    public zzenr(boolean z) {
        this.f7292a = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        ((Bundle) obj).putString("adid_p", true != this.f7292a ? "0" : "1");
    }
}
