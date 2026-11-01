package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import g.edt;
import g.esy;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcbz {

    /* renamed from: b, reason: collision with root package name */
    public long f5160b;

    /* renamed from: a, reason: collision with root package name */
    public final long f5159a = TimeUnit.MILLISECONDS.toNanos(((Long) edt.f15376a.f15379d.zza(zzbcn.zzN)).longValue());

    /* renamed from: c, reason: collision with root package name */
    public boolean f5161c = true;

    public final void zza(SurfaceTexture surfaceTexture, final zzcbk zzcbkVar) {
        if (zzcbkVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f5161c) {
            long j = timestamp - this.f5160b;
            if (Math.abs(j) < this.f5159a) {
                return;
            }
        }
        this.f5161c = false;
        this.f5160b = timestamp;
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcby
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk.this.zzk();
            }
        });
    }

    public final void zzb() {
        this.f5161c = true;
    }
}
