package com.google.android.gms.internal.ads;

import g.ffb;

/* loaded from: classes3.dex */
public final class zzbwg extends zzbwi {

    /* renamed from: a, reason: collision with root package name */
    public final String f5030a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5031b;

    public zzbwg(String str, int i) {
        this.f5030a = str;
        this.f5031b = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbwg)) {
            zzbwg zzbwgVar = (zzbwg) obj;
            if (ffb.w(this.f5030a, zzbwgVar.f5030a)) {
                if (ffb.w(Integer.valueOf(this.f5031b), Integer.valueOf(zzbwgVar.f5031b))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwj
    public final int zzb() {
        return this.f5031b;
    }

    @Override // com.google.android.gms.internal.ads.zzbwj
    public final String zzc() {
        return this.f5030a;
    }
}
