package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import g.agd;
import g.bmi;
import g.ccj;
import g.ckd;
import g.eey;
import g.efo;
import g.ezz;

/* loaded from: classes3.dex */
public final class zzbqj implements bmi, eey, ccj {

    /* renamed from: a, reason: collision with root package name */
    public final zzbpm f4928a;

    /* renamed from: b, reason: collision with root package name */
    public efo f4929b;

    /* renamed from: c, reason: collision with root package name */
    public zzbgt f4930c;

    public zzbqj(zzbpm zzbpmVar) {
        this.f4928a = zzbpmVar;
    }

    @Override // g.bmi
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdClicked.");
        try {
            this.f4928a.zze();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdClicked.");
        try {
            this.f4928a.zze();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        efo efoVar = this.f4929b;
        if (this.f4930c == null) {
            if (efoVar == null) {
                agd.g("#007 Could not call remote method.", null);
                return;
            } else if (!efoVar.f15446c) {
                agd.c("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        agd.c("Adapter called onAdClicked.");
        try {
            this.f4928a.zze();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.bmi
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdClosed.");
        try {
            this.f4928a.zzf();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eey
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdClosed.");
        try {
            this.f4928a.zzf();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdClosed.");
        try {
            this.f4928a.zzf();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToLoad with error. " + i);
        try {
            this.f4928a.zzg(i);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.bmi
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, ezz ezzVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToLoad with error. ErrorCode: " + ezzVar.g() + ". ErrorMessage: " + ezzVar.f16448e + ". ErrorDomain: " + ezzVar.f16449f);
        try {
            this.f4928a.zzh(ezzVar.h());
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eey
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.f4928a.zzg(i);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eey
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, ezz ezzVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToLoad with error. ErrorCode: " + ezzVar.g() + ". ErrorMessage: " + ezzVar.f16448e + ". ErrorDomain: " + ezzVar.f16449f);
        try {
            this.f4928a.zzh(ezzVar.h());
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.f4928a.zzg(i);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, ezz ezzVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdFailedToLoad with error. ErrorCode: " + ezzVar.g() + ". ErrorMessage: " + ezzVar.f16448e + ". ErrorDomain: " + ezzVar.f16449f);
        try {
            this.f4928a.zzh(ezzVar.h());
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        efo efoVar = this.f4929b;
        if (this.f4930c == null) {
            if (efoVar == null) {
                agd.g("#007 Could not call remote method.", null);
                return;
            } else if (!efoVar.i) {
                agd.c("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        agd.c("Adapter called onAdImpression.");
        try {
            this.f4928a.zzm();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLeftApplication.");
        try {
            this.f4928a.zzn();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLeftApplication.");
        try {
            this.f4928a.zzn();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLeftApplication.");
        try {
            this.f4928a.zzn();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.bmi
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLoaded.");
        try {
            this.f4928a.zzo();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eey
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLoaded.");
        try {
            this.f4928a.zzo();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, efo efoVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLoaded.");
        this.f4929b = efoVar;
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            Object obj = new Object();
            new zzbpw();
            synchronized (obj) {
            }
        }
        try {
            this.f4928a.zzo();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.bmi
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdOpened.");
        try {
            this.f4928a.zzp();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.eey
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdOpened.");
        try {
            this.f4928a.zzp();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdOpened.");
        try {
            this.f4928a.zzp();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onVideoEnd.");
        try {
            this.f4928a.zzv();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final efo zza() {
        return this.f4929b;
    }

    @Override // g.bmi
    public final void zzb(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAppEvent.");
        try {
            this.f4928a.zzq(str, str2);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    public final zzbgt zzc() {
        return this.f4930c;
    }

    @Override // g.ccj
    public final void zzd(MediationNativeAdapter mediationNativeAdapter, zzbgt zzbgtVar) {
        ckd.aj("#008 Must be called on the main UI thread.");
        agd.c("Adapter called onAdLoaded with template id ".concat(String.valueOf(zzbgtVar.zzb())));
        this.f4930c = zzbgtVar;
        try {
            this.f4928a.zzo();
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }

    @Override // g.ccj
    public final void zze(MediationNativeAdapter mediationNativeAdapter, zzbgt zzbgtVar, String str) {
        try {
            this.f4928a.zzr(zzbgtVar.zza(), str);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        }
    }
}
