package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzepj implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7350a;

    public zzepj(ArrayList arrayList) {
        this.f7350a = arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        ((Bundle) obj).putStringArrayList("android_permissions", this.f7350a);
    }
}
