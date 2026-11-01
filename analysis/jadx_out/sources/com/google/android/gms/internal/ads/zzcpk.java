package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;

/* loaded from: classes3.dex */
public class zzcpk {

    /* renamed from: a, reason: collision with root package name */
    public final zzcfk f5484a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcro f5485b;

    /* renamed from: c, reason: collision with root package name */
    public final View f5486c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfeu f5487d;

    public zzcpk(View view, zzcfk zzcfkVar, zzcro zzcroVar, zzfeu zzfeuVar) {
        this.f5486c = view;
        this.f5484a = zzcfkVar;
        this.f5485b = zzcroVar;
        this.f5487d = zzfeuVar;
    }

    public final View zza() {
        return this.f5486c;
    }

    public final zzcfk zzb() {
        return this.f5484a;
    }

    public final zzcro zzc() {
        return this.f5485b;
    }

    public zzcxy zzd(Set set) {
        return new zzcxy(set);
    }

    public final zzfeu zze() {
        return this.f5487d;
    }
}
