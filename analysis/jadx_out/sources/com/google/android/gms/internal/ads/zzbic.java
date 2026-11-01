package com.google.android.gms.internal.ads;

import g.cnk;
import g.edz;
import g.ehx;
import g.ete;

/* loaded from: classes3.dex */
public final class zzbic {

    /* renamed from: a, reason: collision with root package name */
    public final edz f4825a;

    /* renamed from: b, reason: collision with root package name */
    public final ehx f4826b;

    /* renamed from: c, reason: collision with root package name */
    public zzbgt f4827c;

    public zzbic(edz edzVar, ehx ehxVar) {
        this.f4825a = edzVar;
        this.f4826b = ehxVar;
    }

    public final zzbhc zzc() {
        if (this.f4826b == null) {
            return null;
        }
        return new ete(this);
    }

    public final zzbhf zzd() {
        return new cnk(0, this);
    }
}
