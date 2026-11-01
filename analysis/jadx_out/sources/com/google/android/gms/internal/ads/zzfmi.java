package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import g.cvb;
import g.czz;
import g.edt;

/* loaded from: classes3.dex */
public final class zzfmi {

    /* renamed from: a, reason: collision with root package name */
    public final long f8009a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8010b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8011c;

    /* renamed from: d, reason: collision with root package name */
    public final cvb f8012d;

    public zzfmi(Object obj, cvb cvbVar) {
        this.f8010b = obj;
        this.f8012d = cvbVar;
        ((czz) cvbVar).getClass();
        this.f8011c = System.currentTimeMillis();
        this.f8009a = ((Long) edt.f15376a.f15379d.zza(zzbcn.zzx)).longValue() * 1000;
    }

    public final long zza() {
        long min = this.f8009a + Math.min(Math.max(((Long) edt.f15376a.f15379d.zza(zzbcn.zzt)).longValue(), -900000L), ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        ((czz) this.f8012d).getClass();
        return min - (System.currentTimeMillis() - this.f8011c);
    }

    public final Object zzb() {
        return this.f8010b;
    }

    public final boolean zzc() {
        ((czz) this.f8012d).getClass();
        return System.currentTimeMillis() >= this.f8011c + this.f8009a;
    }
}
