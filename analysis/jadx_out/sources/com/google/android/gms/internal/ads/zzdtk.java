package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import g.abz;
import g.agd;
import g.eus;
import g.evo;
import g.ti;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdtk implements eus, zzczj, evo, zzcwm, zzcxg, zzcxh, zzcya, zzcwp, zzfjs {

    /* renamed from: a, reason: collision with root package name */
    public long f6499a;

    /* renamed from: b, reason: collision with root package name */
    public final List f6500b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdsy f6501c;

    public zzdtk(zzdsy zzdsyVar, zzchk zzchkVar) {
        this.f6501c = zzdsyVar;
        this.f6500b = Collections.singletonList(zzchkVar);
    }

    public final void d(Class cls, String str, Object... objArr) {
        String simpleName = cls.getSimpleName();
        this.f6501c.zza(this.f6500b, "Event-".concat(simpleName), str, objArr);
    }

    @Override // g.evo
    public final void onAdClicked() {
        d(evo.class, "onAdClicked", new Object[0]);
    }

    @Override // g.eus
    public final void onAppEvent(String str, String str2) {
        d(eus.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
        d(zzcwm.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
        d(zzcwm.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
        d(zzcwm.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzd(zzfjl zzfjlVar, String str) {
        d(zzfjk.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzcwp
    public final void zzdB(abz abzVar) {
        d(zzcwp.class, "onAdFailedToLoad", Integer.valueOf(abzVar.zza), abzVar.zzb, abzVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdC(zzfjl zzfjlVar, String str) {
        d(zzfjk.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdD(zzfjl zzfjlVar, String str, Throwable th) {
        d(zzfjk.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdE(zzfjl zzfjlVar, String str) {
        d(zzfjk.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdj(Context context) {
        d(zzcxh.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdl(Context context) {
        d(zzcxh.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdm(Context context) {
        d(zzcxh.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
        ti.f20033a.v.getClass();
        this.f6499a = SystemClock.elapsedRealtime();
        d(zzczj.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(zzbwj zzbwjVar, String str, String str2) {
        d(zzcwm.class, "onRewarded", zzbwjVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
        d(zzcwm.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
        d(zzcwm.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        d(zzcxg.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        ti.f20033a.v.getClass();
        agd.e("Ad Request Latency : " + (SystemClock.elapsedRealtime() - this.f6499a));
        d(zzcya.class, "onAdLoaded", new Object[0]);
    }
}
