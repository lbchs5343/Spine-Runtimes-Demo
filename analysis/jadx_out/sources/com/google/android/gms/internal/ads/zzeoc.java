package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzeoc implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7309a;

    public zzeoc(String str) {
        this.f7309a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f7309a;
        if (str != null) {
            bundle.putString("arek", str);
        }
    }
}
