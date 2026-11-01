package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzqk {

    /* renamed from: a, reason: collision with root package name */
    public final zzqj f8842a;

    /* renamed from: b, reason: collision with root package name */
    public zzqm f8843b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8844c;

    /* renamed from: d, reason: collision with root package name */
    public zzqc f8845d;

    /* renamed from: e, reason: collision with root package name */
    public final zzop f8846e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8847f;

    @Deprecated
    public zzqk() {
        this.f8844c = null;
        this.f8846e = zzop.zza;
        this.f8842a = zzqj.zza;
    }

    public zzqk(Context context) {
        this.f8844c = context;
        this.f8846e = zzop.zza;
        this.f8842a = zzqj.zza;
    }

    public final zzqw zzc() {
        zzdb.zzf(!this.f8847f);
        this.f8847f = true;
        if (this.f8843b == null) {
            this.f8843b = new zzqm(new zzcm[0]);
        }
        if (this.f8845d == null) {
            this.f8845d = new zzqc(this.f8844c);
        }
        return new zzqw(this);
    }
}
