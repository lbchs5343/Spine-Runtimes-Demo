package com.google.android.gms.internal.ads;

import g.aku;
import g.bgf;
import g.dcy;
import g.edt;
import g.esy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzcdj extends bgf {
    public final String[] _d;

    /* renamed from: a, reason: collision with root package name */
    public final zzccf f5205a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcdr f5206b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5207c;

    public zzcdj(zzccf zzccfVar, zzcdr zzcdrVar, String str, String[] strArr) {
        super(7);
        this.f5205a = zzccfVar;
        this.f5206b = zzcdrVar;
        this.f5207c = str;
        this._d = strArr;
        ti.f20033a.x.zzb(this);
    }

    @Override // g.bgf
    public final void zza() {
        try {
            this.f5206b.zzu(this.f5207c, this._d);
        } finally {
            esy.f16117a.post(new aku(1, this));
        }
    }

    @Override // g.bgf
    public final dcy zzb() {
        return (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcc)).booleanValue() && (this.f5206b instanceof zzcea)) ? zzcaj.zze.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcdh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcdj zzcdjVar = zzcdj.this;
                return Boolean.valueOf(zzcdjVar.f5206b.zzw(zzcdjVar.f5207c, zzcdjVar._d, zzcdjVar));
            }
        }) : super.zzb();
    }

    public final String zze() {
        return this.f5207c;
    }
}
