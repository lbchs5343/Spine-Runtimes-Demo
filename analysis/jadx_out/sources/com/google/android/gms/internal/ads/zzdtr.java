package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.agd;
import g.daw;

/* loaded from: classes3.dex */
public final class zzdtr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbkq f6504a;

    public zzdtr(zzbkq zzbkqVar) {
        this.f6504a = zzbkqVar;
    }

    public final void b(daw dawVar) {
        String i = daw.i(dawVar);
        agd.k("Dispatching AFMA event on publisher webview: ".concat(i));
        this.f6504a.zzb(i);
    }

    public final void zza() throws RemoteException {
        b(new daw("initialize"));
    }

    public final void zzb(long j) throws RemoteException {
        daw dawVar = new daw(MediationConstant.RIT_TYPE_INTERSTITIAL);
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdClicked";
        this.f6504a.zzb(daw.i(dawVar));
    }

    public final void zzc(long j) throws RemoteException {
        daw dawVar = new daw(MediationConstant.RIT_TYPE_INTERSTITIAL);
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdClosed";
        b(dawVar);
    }

    public final void zzd(long j, int i) throws RemoteException {
        daw dawVar = new daw(MediationConstant.RIT_TYPE_INTERSTITIAL);
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdFailedToLoad";
        dawVar.f13883b = Integer.valueOf(i);
        b(dawVar);
    }

    public final void zze(long j) throws RemoteException {
        daw dawVar = new daw(MediationConstant.RIT_TYPE_INTERSTITIAL);
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdLoaded";
        b(dawVar);
    }

    public final void zzf(long j) throws RemoteException {
        daw dawVar = new daw(MediationConstant.RIT_TYPE_INTERSTITIAL);
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onNativeAdObjectNotAvailable";
        b(dawVar);
    }

    public final void zzg(long j) throws RemoteException {
        daw dawVar = new daw(MediationConstant.RIT_TYPE_INTERSTITIAL);
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdOpened";
        b(dawVar);
    }

    public final void zzh(long j) throws RemoteException {
        daw dawVar = new daw("creation");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "nativeObjectCreated";
        b(dawVar);
    }

    public final void zzi(long j) throws RemoteException {
        daw dawVar = new daw("creation");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "nativeObjectNotCreated";
        b(dawVar);
    }

    public final void zzj(long j) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdClicked";
        b(dawVar);
    }

    public final void zzk(long j) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onRewardedAdClosed";
        b(dawVar);
    }

    public final void zzl(long j, zzbwz zzbwzVar) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onUserEarnedReward";
        dawVar.f13885d = zzbwzVar.zzf();
        dawVar.f13888g = Integer.valueOf(zzbwzVar.zze());
        b(dawVar);
    }

    public final void zzm(long j, int i) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onRewardedAdFailedToLoad";
        dawVar.f13883b = Integer.valueOf(i);
        b(dawVar);
    }

    public final void zzn(long j, int i) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onRewardedAdFailedToShow";
        dawVar.f13883b = Integer.valueOf(i);
        b(dawVar);
    }

    public final void zzo(long j) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onAdImpression";
        b(dawVar);
    }

    public final void zzp(long j) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onRewardedAdLoaded";
        b(dawVar);
    }

    public final void zzq(long j) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onNativeAdObjectNotAvailable";
        b(dawVar);
    }

    public final void zzr(long j) throws RemoteException {
        daw dawVar = new daw("rewarded");
        dawVar.f13886e = Long.valueOf(j);
        dawVar.f13882a = "onRewardedAdOpened";
        b(dawVar);
    }
}
