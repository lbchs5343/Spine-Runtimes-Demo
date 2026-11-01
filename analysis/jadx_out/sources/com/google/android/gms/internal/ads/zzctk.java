package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzbbs;
import g.aeh;
import g.cvb;
import g.czz;
import g.evo;

/* loaded from: classes3.dex */
public final class zzctk implements zzcya, evo, zzczj, zzcxg, zzcwm, zzdbv {

    /* renamed from: a, reason: collision with root package name */
    public final cvb f5645a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbzs f5646b;

    public zzctk(cvb cvbVar, zzbzs zzbzsVar) {
        this.f5645a = cvbVar;
        this.f5646b = zzbzsVar;
    }

    @Override // g.evo
    public final void onAdClicked() {
        this.f5646b.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zza() {
        this.f5646b.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
        ((czz) this.f5645a).getClass();
        this.f5646b.zzk(SystemClock.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzds(zzbwj zzbwjVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcwm
    public final void zzf() {
    }

    public final String zzg() {
        return this.f5646b.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzi(zzbbs.zzb zzbVar) {
        this.f5646b.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzj(zzbbs.zzb zzbVar) {
    }

    public final void zzk(aeh aehVar) {
        this.f5646b.zzj(aehVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzl(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzm(zzbbs.zzb zzbVar) {
        this.f5646b.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbv
    public final void zzn(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        this.f5646b.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        this.f5646b.zzh(true);
    }
}
