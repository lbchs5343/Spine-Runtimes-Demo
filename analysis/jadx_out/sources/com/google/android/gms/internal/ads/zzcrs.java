package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcrs implements zzcrt {

    /* renamed from: a, reason: collision with root package name */
    public final Map f5594a;

    public zzcrs(Map map) {
        this.f5594a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcrt
    public final zzefb zza(int i, String str) {
        return (zzefb) this.f5594a.get(str);
    }
}
