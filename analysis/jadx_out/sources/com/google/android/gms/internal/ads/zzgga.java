package com.google.android.gms.internal.ads;

import g.bfy;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzgga {

    /* renamed from: c, reason: collision with root package name */
    public boolean f8266c;

    /* renamed from: e, reason: collision with root package name */
    public final zzggj f8268e;

    /* renamed from: d, reason: collision with root package name */
    public final zzgfy f8267d = zzgfy.zza;

    /* renamed from: a, reason: collision with root package name */
    public bfy f8264a = null;

    /* renamed from: b, reason: collision with root package name */
    public zzggc f8265b = null;

    public /* synthetic */ zzgga(zzggj zzggjVar) {
        this.f8268e = zzggjVar;
    }

    public final zzgga zzc() {
        zzggc zzggcVar = this.f8265b;
        if (zzggcVar != null) {
            Iterator it = zzggcVar.f8269a.iterator();
            while (it.hasNext()) {
                ((zzgga) it.next()).f8266c = false;
            }
        }
        this.f8266c = true;
        return this;
    }

    public final zzgga zzd() {
        this.f8264a = bfy.h;
        return this;
    }
}
