package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.dcy;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzbdu {

    /* renamed from: a, reason: collision with root package name */
    public MotionEvent f4782a = MotionEvent.obtain(0, 0, 1, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);

    /* renamed from: b, reason: collision with root package name */
    public MotionEvent f4783b = MotionEvent.obtain(0, 0, 0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f4784c;

    public zzbdu(Context context, ScheduledExecutorService scheduledExecutorService, zzbdw zzbdwVar, zzfkl zzfklVar) {
        this.f4784c = scheduledExecutorService;
    }

    public final dcy zza() {
        return (zzgdz) zzgei.zzo(zzgdz.zzu(zzgei.zzh(null)), ((Long) zzbem.zzc.zze()).longValue(), TimeUnit.MILLISECONDS, this.f4784c);
    }

    public final void zzb(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.f4782a.getEventTime()) {
            this.f4782a = MotionEvent.obtain(motionEvent);
        } else {
            if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.f4783b.getEventTime()) {
                return;
            }
            this.f4783b = MotionEvent.obtain(motionEvent);
        }
    }
}
