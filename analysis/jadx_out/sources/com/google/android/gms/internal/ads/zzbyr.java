package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import g.ti;

/* loaded from: classes3.dex */
public final class zzbyr implements zzaym {

    /* renamed from: a, reason: collision with root package name */
    public final String f5077a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5078b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f5079c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5080d;

    public zzbyr(Context context, String str) {
        this.f5079c = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f5077a = str;
        this.f5078b = false;
        this.f5080d = new Object();
    }

    public final String zza() {
        return this.f5077a;
    }

    public final void zzb(boolean z) {
        ti tiVar = ti.f20033a;
        if (tiVar.f20039f.zzp(this.f5079c)) {
            synchronized (this.f5080d) {
                try {
                    if (this.f5078b == z) {
                        return;
                    }
                    this.f5078b = z;
                    if (TextUtils.isEmpty(this.f5077a)) {
                        return;
                    }
                    if (this.f5078b) {
                        tiVar.f20039f.zzf(this.f5079c, this.f5077a);
                    } else {
                        tiVar.f20039f.zzg(this.f5079c, this.f5077a);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        zzb(zzaylVar.zzj);
    }
}
