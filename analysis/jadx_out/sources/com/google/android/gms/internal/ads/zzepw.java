package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzepw implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f7378a;

    public zzepw(Integer num) {
        this.f7378a = num;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        Integer num = this.f7378a;
        if (num != null) {
            bundle.putInt("aos", num.intValue());
        }
    }
}
