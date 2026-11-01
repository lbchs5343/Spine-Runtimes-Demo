package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzeuy implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7588a;

    public zzeuy(String str) {
        this.f7588a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        ((Bundle) obj).putString("request_id", this.f7588a);
    }
}
