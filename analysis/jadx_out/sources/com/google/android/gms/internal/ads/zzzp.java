package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dxt;
import g.pn;

/* loaded from: classes3.dex */
public final class zzzp {

    /* renamed from: a, reason: collision with root package name */
    public pn f8981a;

    /* renamed from: b, reason: collision with root package name */
    public zzdc f8982b = zzdc.zza;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8983c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8984d;

    /* renamed from: e, reason: collision with root package name */
    public final zzaap f8985e;

    /* renamed from: f, reason: collision with root package name */
    public dxt f8986f;

    public zzzp(Context context, zzaap zzaapVar) {
        this.f8983c = context.getApplicationContext();
        this.f8985e = zzaapVar;
    }

    public final zzzp zzd(zzdc zzdcVar) {
        this.f8982b = zzdcVar;
        return this;
    }

    public final zzaaa zze() {
        zzdb.zzf(!this.f8984d);
        if (this.f8981a == null) {
            if (this.f8986f == null) {
                this.f8986f = new dxt();
            }
            this.f8981a = new pn(this.f8986f);
        }
        zzaaa zzaaaVar = new zzaaa(this);
        this.f8984d = true;
        return zzaaaVar;
    }
}
