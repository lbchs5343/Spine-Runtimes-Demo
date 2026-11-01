package com.google.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbic;
import com.google.android.gms.internal.ads.zzbif;
import com.google.android.gms.internal.ads.zzfxd;
import g.afs;
import g.agd;
import g.ags;
import g.aia;
import g.awn;
import g.axd;
import g.bmi;
import g.bya;
import g.cbv;
import g.cbz;
import g.cca;
import g.ccj;
import g.clz;
import g.cpm;
import g.ctl;
import g.cxt;
import g.cyj;
import g.dcq;
import g.deq;
import g.edt;
import g.eey;
import g.eti;
import g.fcj;
import g.fnu;
import g.ga;
import g.gin;
import g.gkf;
import g.gxk;
import g.hav;
import g.hl;
import g.mx;
import g.ov;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private bya adLoader;
    protected aia mAdView;
    protected eti mInterstitialAd;

    public awn buildAdRequest(Context context, clz clzVar, Bundle bundle, Bundle bundle2) {
        dcq dcqVar = new dcq(3);
        gxk gxkVar = (gxk) dcqVar.f13976f;
        Set keywords = clzVar.getKeywords();
        if (keywords != null) {
            Iterator it = keywords.iterator();
            while (it.hasNext()) {
                gxkVar.f18949f.add((String) it.next());
            }
        }
        if (clzVar.isTesting()) {
            mx mxVar = cbv.f12612a.f12615d;
            gxkVar.f18946c.add(mx.j(context));
        }
        if (clzVar.taggedForChildDirectedTreatment() != -1) {
            gxkVar.k = clzVar.taggedForChildDirectedTreatment() != 1 ? 0 : 1;
        }
        gxkVar.f18945b = clzVar.isDesignedForFamilies();
        dcqVar.h(buildExtrasBundle(bundle, bundle2));
        return new awn(dcqVar);
    }

    public abstract Bundle buildExtrasBundle(Bundle bundle, Bundle bundle2);

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.mAdView;
    }

    public eti getInterstitialAd() {
        return this.mInterstitialAd;
    }

    public cbz getVideoController() {
        cbz cbzVar;
        aia aiaVar = this.mAdView;
        if (aiaVar == null) {
            return null;
        }
        hl hlVar = (hl) aiaVar.f12849a.f13468c;
        synchronized (hlVar.f19377a) {
            cbzVar = hlVar.f19378b;
        }
        return cbzVar;
    }

    public cyj newAdLoader(Context context, String str) {
        return new cyj(context, str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:3|(2:5|(2:7|8))|9|10|11|(1:13)|8) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
    
        g.agd.g("#007 Could not call remote method.", r0);
     */
    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDestroy() {
        aia aiaVar = this.mAdView;
        if (aiaVar != null) {
            zzbcn.zza(aiaVar.getContext());
            if (((Boolean) zzbel.zze.zze()).booleanValue()) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkM)).booleanValue()) {
                    ga.f17769b.execute(new axd(aiaVar, 1));
                    this.mAdView = null;
                }
            }
            ctl ctlVar = aiaVar.f12849a;
            ctlVar.getClass();
            deq deqVar = (deq) ctlVar.k;
            if (deqVar != null) {
                deqVar.zzx();
            }
            this.mAdView = null;
        }
        if (this.mInterstitialAd != null) {
            this.mInterstitialAd = null;
        }
        if (this.adLoader != null) {
            this.adLoader = null;
        }
    }

    public void onImmersiveModeUpdated(boolean z) {
        eti etiVar = this.mInterstitialAd;
        if (etiVar != null) {
            etiVar.setImmersiveMode(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onPause() {
        aia aiaVar = this.mAdView;
        if (aiaVar != null) {
            zzbcn.zza(aiaVar.getContext());
            if (((Boolean) zzbel.zzg.zze()).booleanValue()) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkN)).booleanValue()) {
                    ga.f17769b.execute(new axd(aiaVar, 2));
                    return;
                }
            }
            ctl ctlVar = aiaVar.f12849a;
            ctlVar.getClass();
            try {
                deq deqVar = (deq) ctlVar.k;
                if (deqVar != null) {
                    deqVar.zzz();
                }
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, g.xm, com.google.android.gms.ads.mediation.MediationInterstitialAdapter, com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void onResume() {
        aia aiaVar = this.mAdView;
        if (aiaVar != null) {
            zzbcn.zza(aiaVar.getContext());
            if (((Boolean) zzbel.zzh.zze()).booleanValue()) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkL)).booleanValue()) {
                    ga.f17769b.execute(new axd(aiaVar, 0));
                    return;
                }
            }
            ctl ctlVar = aiaVar.f12849a;
            ctlVar.getClass();
            try {
                deq deqVar = (deq) ctlVar.k;
                if (deqVar != null) {
                    deqVar.zzB();
                }
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, bmi bmiVar, Bundle bundle, gin ginVar, clz clzVar, Bundle bundle2) {
        aia aiaVar = new aia(context);
        this.mAdView = aiaVar;
        aiaVar.setAdSize(new gin(ginVar.f18204f, ginVar.h));
        this.mAdView.setAdUnitId(getAdUnitId(bundle));
        this.mAdView.setAdListener(new fcj(this, bmiVar));
        this.mAdView.b(buildAdRequest(context, clzVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, eey eeyVar, Bundle bundle, clz clzVar, Bundle bundle2) {
        eti.load(context, getAdUnitId(bundle), buildAdRequest(context, clzVar, bundle2, bundle), new a(this, eeyVar));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, ccj ccjVar, Bundle bundle, ags agsVar, Bundle bundle2) {
        bya byaVar;
        cca ccaVar = new cca(this, ccjVar);
        cyj newAdLoader = newAdLoader(context, bundle.getString(AD_UNIT_ID_PARAMETER));
        newAdLoader.getClass();
        hav havVar = newAdLoader.f13758b;
        try {
            havVar.zzl(new fnu(ccaVar));
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
        try {
            havVar.zzo(new zzbfn(agsVar.getNativeAdOptions()));
        } catch (RemoteException unused2) {
            zzfxd zzfxdVar2 = agd.f10175a;
        }
        ov nativeAdRequestOptions = agsVar.getNativeAdRequestOptions();
        try {
            boolean z = nativeAdRequestOptions.f19778d;
            boolean z2 = nativeAdRequestOptions.h;
            int i = nativeAdRequestOptions.f19776b;
            cxt cxtVar = nativeAdRequestOptions.f19777c;
            havVar.zzo(new zzbfn(4, z, -1, z2, i, cxtVar != null ? new cpm(cxtVar) : null, nativeAdRequestOptions.f19779e, nativeAdRequestOptions.f19781g, nativeAdRequestOptions.f19775a, nativeAdRequestOptions.i, nativeAdRequestOptions.f19780f - 1));
        } catch (RemoteException unused3) {
            zzfxd zzfxdVar3 = agd.f10175a;
        }
        if (agsVar.isUnifiedNativeAdRequested()) {
            try {
                havVar.zzk(new zzbif(ccaVar));
            } catch (RemoteException unused4) {
                zzfxd zzfxdVar4 = agd.f10175a;
            }
        }
        if (agsVar.zzb()) {
            for (String str : agsVar.zza().keySet()) {
                zzbic zzbicVar = new zzbic(ccaVar, true != ((Boolean) agsVar.zza().get(str)).booleanValue() ? null : ccaVar);
                try {
                    havVar.zzh(str, zzbicVar.zzd(), zzbicVar.zzc());
                } catch (RemoteException unused5) {
                    zzfxd zzfxdVar5 = agd.f10175a;
                }
            }
        }
        Context context2 = newAdLoader.f13757a;
        try {
            byaVar = new bya(context2, havVar.zze());
        } catch (RemoteException e2) {
            agd.f("Failed to build AdLoader.", e2);
            byaVar = new bya(context2, new afs(new gkf()));
        }
        this.adLoader = byaVar;
        byaVar.c(buildAdRequest(context, agsVar, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        eti etiVar = this.mInterstitialAd;
        if (etiVar != null) {
            etiVar.show(null);
        }
    }
}
