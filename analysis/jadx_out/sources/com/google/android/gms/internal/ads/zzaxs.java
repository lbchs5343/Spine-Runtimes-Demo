package com.google.android.gms.internal.ads;

import g.dyn;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzaxs {

    /* renamed from: b, reason: collision with root package name */
    public final Class[] f4595b;

    /* renamed from: c, reason: collision with root package name */
    public final zzawf f4596c;

    /* renamed from: e, reason: collision with root package name */
    public final String f4598e;

    /* renamed from: f, reason: collision with root package name */
    public final String f4599f;

    /* renamed from: a, reason: collision with root package name */
    public volatile Method f4594a = null;

    /* renamed from: d, reason: collision with root package name */
    public final CountDownLatch f4597d = new CountDownLatch(1);

    public zzaxs(zzawf zzawfVar, String str, String str2, Class... clsArr) {
        this.f4596c = zzawfVar;
        this.f4598e = str;
        this.f4599f = str2;
        this.f4595b = clsArr;
        zzawfVar.zzk().submit(new dyn(26, this));
    }

    public final Method zza() {
        if (this.f4594a != null) {
            return this.f4594a;
        }
        try {
            if (this.f4597d.await(2L, TimeUnit.SECONDS)) {
                return this.f4594a;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
