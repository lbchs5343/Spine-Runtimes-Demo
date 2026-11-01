package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import g.aeh;
import g.agd;
import g.akj;
import g.alk;
import g.aoy;
import g.bjq;
import g.bli;
import g.cbv;
import g.cbz;
import g.cdw;
import g.clx;
import g.dpg;
import g.edt;
import g.eno;
import g.fdy;
import g.ffr;
import g.gin;
import g.giv;
import g.gtb;
import g.gtn;
import g.jy;
import g.mx;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbrs extends zzbre {

    /* renamed from: a, reason: collision with root package name */
    public final RtbAdapter f4941a;

    public zzbrs(RtbAdapter rtbAdapter) {
        this.f4941a = rtbAdapter;
    }

    public static final void b(aeh aehVar, String str) {
        try {
            new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
        }
    }

    public static final void c(aeh aehVar) {
        if (aehVar.zzf) {
            return;
        }
        mx mxVar = cbv.f12612a.f12615d;
        mx.l();
    }

    public static final void d(String str) {
        agd.b("Server parameters: ".concat(String.valueOf(str)));
        try {
            new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            }
        } catch (JSONException e2) {
            agd.f("", e2);
            throw new RemoteException();
        }
    }

    public final void e(aeh aehVar) {
        Bundle bundle = aehVar.zzm;
        if (bundle == null || bundle.getBundle(this.f4941a.getClass().getName()) == null) {
            new Bundle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final cbz zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final zzbru zzf() throws RemoteException {
        return zzbru.zza(this.f4941a.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final zzbru zzg() throws RemoteException {
        return zzbru.zza(this.f4941a.getSDKVersionInfo());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzh(bjq bjqVar, String str, Bundle bundle, Bundle bundle2, eno enoVar, zzbri zzbriVar) throws RemoteException {
        char c2;
        try {
            aoy aoyVar = new aoy(zzbriVar);
            RtbAdapter rtbAdapter = this.f4941a;
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
            switch (c2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    new ArrayList().add(new bli(7));
                    new gin(enoVar.zze, enoVar.zzb, enoVar.zza);
                    rtbAdapter.collectSignals(new alk(), aoyVar);
                    return;
                case 6:
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlz)).booleanValue()) {
                        new ArrayList().add(new bli(7));
                        new gin(enoVar.zze, enoVar.zzb, enoVar.zza);
                        rtbAdapter.collectSignals(new alk(), aoyVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                default:
                    throw new IllegalArgumentException("Internal Error");
            }
        } catch (Throwable th) {
            agd.f("Error generating signals for RTB", th);
            zzbpd.zza(bjqVar, th, "adapter.collectSignals");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzi(String str, String str2, aeh aehVar, bjq bjqVar, zzbqq zzbqqVar, zzbpm zzbpmVar) throws RemoteException {
        try {
            akj akjVar = new akj(zzbqqVar, 26, zzbpmVar);
            RtbAdapter rtbAdapter = this.f4941a;
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            rtbAdapter.loadRtbAppOpenAd(new gtn(), akjVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render app open ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbAppOpenAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzj(String str, String str2, aeh aehVar, bjq bjqVar, zzbqt zzbqtVar, zzbpm zzbpmVar, eno enoVar) throws RemoteException {
        try {
            gtb gtbVar = new gtb(zzbqtVar, 17, zzbpmVar);
            RtbAdapter rtbAdapter = this.f4941a;
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            new gin(enoVar.zze, enoVar.zzb, enoVar.zza);
            rtbAdapter.loadRtbBannerAd(new cdw(), gtbVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render banner ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbBannerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzk(String str, String str2, aeh aehVar, bjq bjqVar, zzbqt zzbqtVar, zzbpm zzbpmVar, eno enoVar) throws RemoteException {
        try {
            akj akjVar = new akj(zzbqtVar, 25, zzbpmVar);
            RtbAdapter rtbAdapter = this.f4941a;
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            new gin(enoVar.zze, enoVar.zzb, enoVar.zza);
            rtbAdapter.loadRtbInterscrollerAd(new cdw(), akjVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render interscroller ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbInterscrollerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzl(String str, String str2, aeh aehVar, bjq bjqVar, zzbqw zzbqwVar, zzbpm zzbpmVar) throws RemoteException {
        try {
            ffr ffrVar = new ffr(zzbqwVar, 16, zzbpmVar);
            RtbAdapter rtbAdapter = this.f4941a;
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            rtbAdapter.loadRtbInterstitialAd(new jy(), ffrVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render interstitial ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzm(String str, String str2, aeh aehVar, bjq bjqVar, zzbqz zzbqzVar, zzbpm zzbpmVar) throws RemoteException {
        zzn(str, str2, aehVar, bjqVar, zzbqzVar, zzbpmVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzn(String str, String str2, aeh aehVar, bjq bjqVar, zzbqz zzbqzVar, zzbpm zzbpmVar, zzbfn zzbfnVar) throws RemoteException {
        RtbAdapter rtbAdapter = this.f4941a;
        try {
            fdy fdyVar = new fdy(zzbqzVar, 24, zzbpmVar);
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            rtbAdapter.loadRtbNativeAdMapper(new giv(), fdyVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render native ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbNativeAdMapper");
            String message = th.getMessage();
            if (TextUtils.isEmpty(message) || !message.equals("Method is not found")) {
                throw new RemoteException();
            }
            try {
                clx clxVar = new clx(17, zzbqzVar, zzbpmVar, false);
                d(str2);
                e(aehVar);
                c(aehVar);
                b(aehVar, str2);
                rtbAdapter.loadRtbNativeAd(new giv(), clxVar);
            } catch (Throwable th2) {
                agd.f("Adapter failed to render native ad.", th2);
                zzbpd.zza(bjqVar, th2, "adapter.loadRtbNativeAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzo(String str, String str2, aeh aehVar, bjq bjqVar, zzbrc zzbrcVar, zzbpm zzbpmVar) throws RemoteException {
        try {
            gtb gtbVar = new gtb(zzbrcVar, 18, zzbpmVar);
            RtbAdapter rtbAdapter = this.f4941a;
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            rtbAdapter.loadRtbRewardedInterstitialAd(new dpg(), gtbVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render rewarded interstitial ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbRewardedInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzp(String str, String str2, aeh aehVar, bjq bjqVar, zzbrc zzbrcVar, zzbpm zzbpmVar) throws RemoteException {
        try {
            gtb gtbVar = new gtb(zzbrcVar, 18, zzbpmVar);
            RtbAdapter rtbAdapter = this.f4941a;
            d(str2);
            e(aehVar);
            c(aehVar);
            b(aehVar, str2);
            rtbAdapter.loadRtbRewardedAd(new dpg(), gtbVar);
        } catch (Throwable th) {
            agd.f("Adapter failed to render rewarded ad.", th);
            zzbpd.zza(bjqVar, th, "adapter.loadRtbRewardedAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final void zzq(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final boolean zzr(bjq bjqVar) throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final boolean zzs(bjq bjqVar) throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final boolean zzt(bjq bjqVar) throws RemoteException {
        return false;
    }
}
