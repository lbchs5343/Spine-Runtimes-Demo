package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import g.aeh;
import g.agd;
import g.akj;
import g.baz;
import g.bjq;
import g.bli;
import g.bme;
import g.bpp;
import g.cbv;
import g.cbz;
import g.cdw;
import g.clx;
import g.dn;
import g.dpg;
import g.edt;
import g.efo;
import g.eno;
import g.ffr;
import g.fnq;
import g.gin;
import g.giv;
import g.gtb;
import g.gtn;
import g.jy;
import g.mx;
import g.xm;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbqh extends zzbpi {

    /* renamed from: a, reason: collision with root package name */
    public zzbwu f4924a;

    /* renamed from: b, reason: collision with root package name */
    public bjq f4925b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4926c;

    /* renamed from: d, reason: collision with root package name */
    public zzbqj f4927d;

    public zzbqh(dn dnVar) {
        this.f4926c = dnVar;
    }

    public zzbqh(xm xmVar) {
        this.f4926c = xmVar;
    }

    public static final String e(aeh aehVar, String str) {
        String str2 = aehVar.zzu;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    public static final boolean f(aeh aehVar) {
        if (aehVar.zzf) {
            return true;
        }
        mx mxVar = cbv.f12612a.f12615d;
        return mx.l();
    }

    public final void g(aeh aehVar) {
        Bundle bundle = aehVar.zzm;
        if (bundle == null || bundle.getBundle(this.f4926c.getClass().getName()) == null) {
            new Bundle();
        }
    }

    public final Bundle h(aeh aehVar, String str, String str2) {
        agd.c("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.f4926c instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (aehVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", aehVar.zzg);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            agd.f("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzA(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        Object obj = this.f4926c;
        if (!(obj instanceof dn)) {
            agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting rewarded ad from adapter.");
        try {
            clx clxVar = new clx(this, 16, zzbpmVar);
            h(aehVar, str, null);
            g(aehVar);
            f(aehVar);
            e(aehVar, str);
            ((dn) obj).loadRewardedAd(new dpg(), clxVar);
        } catch (Exception e2) {
            agd.f("", e2);
            zzbpd.zza(bjqVar, e2, "adapter.loadRewardedAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzB(aeh aehVar, String str, String str2) throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof dn) {
            zzA(this.f4925b, aehVar, str, new zzbqk((dn) obj, this.f4924a));
            return;
        }
        agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzC(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        Object obj = this.f4926c;
        if (!(obj instanceof dn)) {
            agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting rewarded interstitial ad from adapter.");
        try {
            clx clxVar = new clx(this, 16, zzbpmVar);
            h(aehVar, str, null);
            g(aehVar);
            f(aehVar);
            e(aehVar, str);
            ((dn) obj).loadRewardedInterstitialAd(new dpg(), clxVar);
        } catch (Exception e2) {
            zzbpd.zza(bjqVar, e2, "adapter.loadRewardedInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzD(bjq bjqVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzE() throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof xm) {
            try {
                ((xm) obj).onPause();
            } catch (Throwable th) {
                agd.f("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzF() throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof xm) {
            try {
                ((xm) obj).onResume();
            } catch (Throwable th) {
                agd.f("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzG(boolean z) throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof AbstractAdViewAdapter) {
            try {
                ((AbstractAdViewAdapter) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                agd.f("", th);
                return;
            }
        }
        agd.c(AbstractAdViewAdapter.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzH(bjq bjqVar) throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof dn) {
            agd.c("Show app open ad from adapter.");
            agd.d("Can not show null mediation app open ad.");
            throw new RemoteException();
        }
        agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzI() throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof MediationInterstitialAdapter) {
            agd.c("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) obj).showInterstitial();
                return;
            } catch (Throwable th) {
                agd.f("", th);
                throw new RemoteException();
            }
        }
        agd.b(MediationInterstitialAdapter.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzJ(bjq bjqVar) throws RemoteException {
        Object obj = this.f4926c;
        if ((obj instanceof dn) || (obj instanceof MediationInterstitialAdapter)) {
            if (obj instanceof MediationInterstitialAdapter) {
                zzI();
                return;
            } else {
                agd.c("Show interstitial ad from adapter.");
                agd.d("Can not show null mediation interstitial ad.");
                throw new RemoteException();
            }
        }
        agd.b(MediationInterstitialAdapter.class.getCanonicalName() + " or " + dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzK(bjq bjqVar) throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof dn) {
            agd.c("Show rewarded ad from adapter.");
            agd.d("Can not show null mediation rewarded ad.");
            throw new RemoteException();
        }
        agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzL() throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof dn) {
            agd.d("Can not show null mediated rewarded ad.");
            throw new RemoteException();
        }
        agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final boolean zzM() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final boolean zzN() throws RemoteException {
        Object obj = this.f4926c;
        if ((obj instanceof dn) || Objects.equals(obj.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            return this.f4924a != null;
        }
        agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbpr zzO() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbps zzP() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final Bundle zze() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final Bundle zzf() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final Bundle zzg() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final cbz zzh() {
        Object obj = this.f4926c;
        if (obj instanceof AbstractAdViewAdapter) {
            try {
                return ((AbstractAdViewAdapter) obj).getVideoController();
            } catch (Throwable th) {
                agd.f("", th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbgs zzi() {
        zzbgt zzc;
        zzbqj zzbqjVar = this.f4927d;
        if (zzbqjVar == null || (zzc = zzbqjVar.zzc()) == null) {
            return null;
        }
        return zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbpp zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbpv zzk() {
        zzbqj zzbqjVar;
        efo zza;
        if (!(this.f4926c instanceof MediationNativeAdapter) || (zzbqjVar = this.f4927d) == null || (zza = zzbqjVar.zza()) == null) {
            return null;
        }
        return new zzbqn(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbru zzl() {
        Object obj = this.f4926c;
        if (obj instanceof dn) {
            return zzbru.zza(((dn) obj).getVersionInfo());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final zzbru zzm() {
        Object obj = this.f4926c;
        if (obj instanceof dn) {
            return zzbru.zza(((dn) obj).getSDKVersionInfo());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final bjq zzn() throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return new bpp(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                agd.f("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof dn) {
            return new bpp(null);
        }
        agd.b(MediationBannerAdapter.class.getCanonicalName() + " or " + dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzo() throws RemoteException {
        Object obj = this.f4926c;
        if (obj instanceof xm) {
            try {
                ((xm) obj).onDestroy();
            } catch (Throwable th) {
                agd.f("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzp(bjq bjqVar, aeh aehVar, String str, zzbwu zzbwuVar, String str2) throws RemoteException {
        Object obj = this.f4926c;
        if ((obj instanceof dn) || Objects.equals(obj.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            this.f4925b = bjqVar;
            this.f4924a = zzbwuVar;
            zzbwuVar.zzl(new bpp(obj));
            return;
        }
        agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
        throw new RemoteException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzq(bjq bjqVar, zzblt zzbltVar, List list) throws RemoteException {
        char c2;
        Object obj = this.f4926c;
        if (!(obj instanceof dn)) {
            throw new RemoteException();
        }
        fnq fnqVar = new fnq(24, zzbltVar);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((zzblz) it.next()).zza;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals(MediationConstant.RIT_TYPE_BANNER)) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 604727084:
                    if (str.equals(MediationConstant.RIT_TYPE_INTERSTITIAL)) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1167692200:
                    if (str.equals("app_open")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1778294298:
                    if (str.equals("app_open_ad")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            bme bmeVar = null;
            switch (c2) {
                case 0:
                    bmeVar = bme.BANNER;
                    break;
                case 1:
                    bmeVar = bme.INTERSTITIAL;
                    break;
                case 2:
                    bmeVar = bme.REWARDED;
                    break;
                case 3:
                    bmeVar = bme.REWARDED_INTERSTITIAL;
                    break;
                case 4:
                    bmeVar = bme.NATIVE;
                    break;
                case 5:
                    bmeVar = bme.APP_OPEN_AD;
                    break;
                case 6:
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlz)).booleanValue()) {
                        bmeVar = bme.APP_OPEN_AD;
                        break;
                    }
                    break;
            }
            if (bmeVar != null) {
                arrayList.add(new bli(7));
            }
        }
        ((dn) obj).initialize((Context) bpp.b(bjqVar), fnqVar, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzr(bjq bjqVar, zzbwu zzbwuVar, List list) throws RemoteException {
        agd.b("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzs(aeh aehVar, String str) throws RemoteException {
        zzB(aehVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzt(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        Object obj = this.f4926c;
        if (!(obj instanceof dn)) {
            agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting app open ad from adapter.");
        try {
            baz bazVar = new baz(this, zzbpmVar, 1);
            h(aehVar, str, null);
            g(aehVar);
            f(aehVar);
            e(aehVar, str);
            ((dn) obj).loadAppOpenAd(new gtn(), bazVar);
        } catch (Exception e2) {
            agd.f("", e2);
            zzbpd.zza(bjqVar, e2, "adapter.loadAppOpenAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzu(bjq bjqVar, eno enoVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        zzv(bjqVar, enoVar, aehVar, str, null, zzbpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzv(bjq bjqVar, eno enoVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar) throws RemoteException {
        gin ginVar;
        Object obj = this.f4926c;
        boolean z = obj instanceof MediationBannerAdapter;
        if (!z && !(obj instanceof dn)) {
            agd.b(MediationBannerAdapter.class.getCanonicalName() + " or " + dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting banner ad from adapter.");
        if (enoVar.zzn) {
            int i = enoVar.zze;
            int i2 = enoVar.zzb;
            gin ginVar2 = new gin(i, i2);
            ginVar2.f18202d = true;
            ginVar2.f18203e = i2;
            ginVar = ginVar2;
        } else {
            ginVar = new gin(enoVar.zze, enoVar.zzb, enoVar.zza);
        }
        if (z) {
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj;
                List list = aehVar.zze;
                HashSet hashSet = list != null ? new HashSet(list) : null;
                long j = aehVar.zzb;
                zzbpy zzbpyVar = new zzbpy(j == -1 ? null : new Date(j), aehVar.zzd, hashSet, aehVar.zzk, f(aehVar), aehVar.zzg, aehVar.zzr, aehVar.zzt, e(aehVar, str));
                Bundle bundle = aehVar.zzm;
                mediationBannerAdapter.requestBannerAd((Context) bpp.b(bjqVar), new zzbqj(zzbpmVar), h(aehVar, str, str2), ginVar, zzbpyVar, bundle != null ? bundle.getBundle(mediationBannerAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                agd.f("", th);
                zzbpd.zza(bjqVar, th, "adapter.requestBannerAd");
                throw new RemoteException();
            }
        }
        if (obj instanceof dn) {
            try {
                gtb gtbVar = new gtb(16, this, zzbpmVar, false);
                h(aehVar, str, str2);
                g(aehVar);
                f(aehVar);
                e(aehVar, str);
                ((dn) obj).loadBannerAd(new cdw(), gtbVar);
            } catch (Throwable th2) {
                agd.f("", th2);
                zzbpd.zza(bjqVar, th2, "adapter.loadBannerAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzw(bjq bjqVar, eno enoVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar) throws RemoteException {
        Object obj = this.f4926c;
        if (!(obj instanceof dn)) {
            agd.b(dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting interscroller ad from adapter.");
        try {
            dn dnVar = (dn) obj;
            akj akjVar = new akj(zzbpmVar, 23, dnVar);
            h(aehVar, str, str2);
            g(aehVar);
            f(aehVar);
            e(aehVar, str);
            int i = enoVar.zze;
            int i2 = enoVar.zzb;
            gin ginVar = new gin(i, i2);
            ginVar.f18205g = true;
            ginVar.j = i2;
            dnVar.loadInterscrollerAd(new cdw(), akjVar);
        } catch (Exception e2) {
            agd.f("", e2);
            zzbpd.zza(bjqVar, e2, "adapter.loadInterscrollerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzx(bjq bjqVar, aeh aehVar, String str, zzbpm zzbpmVar) throws RemoteException {
        zzy(bjqVar, aehVar, str, null, zzbpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzy(bjq bjqVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar) throws RemoteException {
        Object obj = this.f4926c;
        boolean z = obj instanceof MediationInterstitialAdapter;
        if (!z && !(obj instanceof dn)) {
            agd.b(MediationInterstitialAdapter.class.getCanonicalName() + " or " + dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting interstitial ad from adapter.");
        if (z) {
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj;
                List list = aehVar.zze;
                HashSet hashSet = list != null ? new HashSet(list) : null;
                long j = aehVar.zzb;
                zzbpy zzbpyVar = new zzbpy(j == -1 ? null : new Date(j), aehVar.zzd, hashSet, aehVar.zzk, f(aehVar), aehVar.zzg, aehVar.zzr, aehVar.zzt, e(aehVar, str));
                Bundle bundle = aehVar.zzm;
                mediationInterstitialAdapter.requestInterstitialAd((Context) bpp.b(bjqVar), new zzbqj(zzbpmVar), h(aehVar, str, str2), zzbpyVar, bundle != null ? bundle.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                agd.f("", th);
                zzbpd.zza(bjqVar, th, "adapter.requestInterstitialAd");
                throw new RemoteException();
            }
        }
        if (obj instanceof dn) {
            try {
                baz bazVar = new baz(this, zzbpmVar, 0);
                h(aehVar, str, str2);
                g(aehVar);
                f(aehVar);
                e(aehVar, str);
                ((dn) obj).loadInterstitialAd(new jy(), bazVar);
            } catch (Throwable th2) {
                agd.f("", th2);
                zzbpd.zza(bjqVar, th2, "adapter.loadInterstitialAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zzz(bjq bjqVar, aeh aehVar, String str, String str2, zzbpm zzbpmVar, zzbfn zzbfnVar, List list) throws RemoteException {
        Object obj = this.f4926c;
        boolean z = obj instanceof MediationNativeAdapter;
        if (!z && !(obj instanceof dn)) {
            agd.b(MediationNativeAdapter.class.getCanonicalName() + " or " + dn.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        agd.c("Requesting native ad from adapter.");
        if (z) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                List list2 = aehVar.zze;
                HashSet hashSet = list2 != null ? new HashSet(list2) : null;
                long j = aehVar.zzb;
                zzbqm zzbqmVar = new zzbqm(j == -1 ? null : new Date(j), aehVar.zzd, hashSet, aehVar.zzk, f(aehVar), aehVar.zzg, zzbfnVar, list, aehVar.zzr, aehVar.zzt, e(aehVar, str));
                Bundle bundle = aehVar.zzm;
                Bundle bundle2 = bundle != null ? bundle.getBundle(mediationNativeAdapter.getClass().getName()) : null;
                this.f4927d = new zzbqj(zzbpmVar);
                mediationNativeAdapter.requestNativeAd((Context) bpp.b(bjqVar), this.f4927d, h(aehVar, str, str2), zzbqmVar, bundle2);
                return;
            } catch (Throwable th) {
                agd.f("", th);
                zzbpd.zza(bjqVar, th, "adapter.requestNativeAd");
                throw new RemoteException();
            }
        }
        if (obj instanceof dn) {
            try {
                akj akjVar = new akj(24, this, zzbpmVar, false);
                h(aehVar, str, str2);
                g(aehVar);
                f(aehVar);
                e(aehVar, str);
                ((dn) obj).loadNativeAdMapper(new giv(), akjVar);
            } catch (Throwable th2) {
                agd.f("", th2);
                zzbpd.zza(bjqVar, th2, "adapter.loadNativeAdMapper");
                String message = th2.getMessage();
                if (TextUtils.isEmpty(message) || !message.equals("Method is not found")) {
                    throw new RemoteException();
                }
                try {
                    ffr ffrVar = new ffr(15, this, zzbpmVar, false);
                    h(aehVar, str, str2);
                    g(aehVar);
                    f(aehVar);
                    e(aehVar, str);
                    ((dn) obj).loadNativeAd(new giv(), ffrVar);
                } catch (Throwable th3) {
                    agd.f("", th3);
                    zzbpd.zza(bjqVar, th3, "adapter.loadNativeAd");
                    throw new RemoteException();
                }
            }
        }
    }
}
