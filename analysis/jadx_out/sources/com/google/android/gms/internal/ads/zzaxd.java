package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxd extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final zzavx f4579a;

    public zzaxd(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, zzavx zzavxVar) {
        super(zzawfVar, "InzZioUCViOMoBpQHwvu/pIx3gXrXGOaM2JpzEjvxDIhnjzi/kaCZRYG9Kg1JwVe", "n5HdSerkTAgTJwRh00NQA14abEqPXtGNhLU/oVUfpWQ=", zzasfVar, i, 94);
        this.f4579a = zzavxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        int intValue = ((Integer) this.j.invoke(null, this.f4579a.zza())).intValue();
        synchronized (this.i) {
            this.i.zzae(zzasr.zza(intValue));
        }
    }
}
