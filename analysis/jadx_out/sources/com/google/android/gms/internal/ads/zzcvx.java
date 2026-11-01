package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzcvx implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcvw f5778a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5779b;

    public zzcvx(zzcvw zzcvwVar, zzhgp zzhgpVar) {
        this.f5778a = zzcvwVar;
        this.f5779b = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        String str = (String) this.f5779b.zzb();
        zzefg zzefgVar = this.f5778a.f5775d;
        return zzefgVar != null ? zzefgVar : new zzefg(str);
    }
}
