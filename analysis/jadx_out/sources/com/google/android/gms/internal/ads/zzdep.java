package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes3.dex */
public final class zzdep {

    /* renamed from: a, reason: collision with root package name */
    public final List f5903a;

    /* renamed from: b, reason: collision with root package name */
    public final zzflr f5904b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5905c;

    public zzdep(zzfet zzfetVar, zzflr zzflrVar) {
        this.f5903a = zzfetVar.zzp;
        this.f5904b = zzflrVar;
    }

    public final void zza() {
        if (this.f5905c) {
            return;
        }
        this.f5904b.zzd(this.f5903a);
        this.f5905c = true;
    }
}
