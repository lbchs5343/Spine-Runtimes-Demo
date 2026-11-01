package com.google.android.gms.internal.ads;

import android.content.Context;
import g.akx;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzchl {

    /* renamed from: a, reason: collision with root package name */
    public WeakReference f5274a;

    /* renamed from: b, reason: collision with root package name */
    public akx f5275b;

    /* renamed from: c, reason: collision with root package name */
    public Context f5276c;

    /* renamed from: d, reason: collision with root package name */
    public long f5277d;

    public final zzchl zzd(long j) {
        this.f5277d = j;
        return this;
    }

    public final zzchl zze(Context context) {
        this.f5274a = new WeakReference(context);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.f5276c = context;
        return this;
    }

    public final zzchl zzf(akx akxVar) {
        this.f5275b = akxVar;
        return this;
    }
}
