package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbtx;
import com.google.android.gms.internal.ads.zzbzh;
import g.aeh;
import g.agd;
import g.aiz;
import g.ao;
import g.awf;
import g.axk;
import g.bah;
import g.bjj;
import g.bme;
import g.bpp;
import g.bpr;
import g.bza;
import g.cbl;
import g.cbv;
import g.cdr;
import g.ckd;
import g.cve;
import g.eab;
import g.edt;
import g.fbc;
import g.ghd;
import g.gkj;
import g.gwy;
import g.gzw;
import g.mp;
import j$.util.Map;
import j$.util.Objects;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public class MobileAds {
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    public static void disableMediationAdapterInitialization(Context context) {
        bza l = bza.l();
        synchronized (l.k) {
            l.q(context);
            try {
                l.f12482c.zzi();
            } catch (RemoteException unused) {
                agd.d("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public static gkj getInitializationStatus() {
        gkj fbcVar;
        bza l = bza.l();
        synchronized (l.k) {
            try {
                ckd.an("MobileAds.initialize() must be called prior to getting initialization status.", l.f12482c != null);
                try {
                    fbcVar = bza.n(l.f12482c.zzg());
                } catch (RemoteException unused) {
                    agd.d("Unable to get Initialization status.");
                    fbcVar = new fbc(21);
                }
            } finally {
            }
        }
        return fbcVar;
    }

    public static bah getRequestConfiguration() {
        return bza.l().h;
    }

    public static axk getVersion() {
        bza.l();
        String[] split = TextUtils.split("23.5.0", "\\.");
        if (split.length != 3) {
            return new axk(0, 0, 0);
        }
        try {
            return new axk(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        } catch (NumberFormatException unused) {
            return new axk(0, 0, 0);
        }
    }

    public static void initialize(Context context) {
        bza.l().o(context);
    }

    public static void initialize(Context context, gzw gzwVar) {
        bza.l().o(context);
    }

    public static void openAdInspector(Context context, bjj bjjVar) {
        bza l = bza.l();
        synchronized (l.k) {
            l.q(context);
            try {
                l.f12482c.zzm(new aiz(2));
            } catch (RemoteException unused) {
                agd.d("Unable to open the ad inspector.");
                if (bjjVar != null) {
                    bjjVar.a();
                }
            }
        }
    }

    public static void openDebugMenu(Context context, String str) {
        bza l = bza.l();
        synchronized (l.k) {
            ckd.an("MobileAds.initialize() must be called prior to opening debug menu.", l.f12482c != null);
            try {
                l.f12482c.zzn(new bpp(context), str);
            } catch (RemoteException e2) {
                agd.f("Unable to open debug menu.", e2);
            }
        }
    }

    public static boolean putPublisherFirstPartyIdEnabled(boolean z) {
        bza l = bza.l();
        synchronized (l.k) {
            try {
                ckd.an("MobileAds.initialize() must be called prior to enable/disable the publisher first-party ID.", l.f12482c != null);
                try {
                    l.f12482c.zzj(z);
                } catch (RemoteException e2) {
                    agd.f("Unable to " + (z ? "enable" : "disable") + " the publisher first-party ID.", e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public static bpr registerCustomTabsSession(Context context, eab eabVar, String str, gwy gwyVar) {
        bza.l();
        ckd.aj("#008 Must be called on the main UI thread.");
        zzbzh zza = zzbtx.zza(context);
        if (zza == null) {
            agd.d("Internal error, query info generator is null.");
            return null;
        }
        try {
            return (bpr) bpp.b(zza.zze(new bpp(context), new bpp(eabVar), str, new bpp(gwyVar)));
        } catch (RemoteException | IllegalArgumentException e2) {
            agd.f("Unable to register custom tabs session. Error: ", e2);
            return null;
        }
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        bza l = bza.l();
        synchronized (l.k) {
            try {
                l.f12482c.zzh(cls.getCanonicalName());
            } catch (RemoteException e2) {
                agd.f("Unable to register RtbAdapter", e2);
            }
        }
    }

    public static void registerWebView(WebView webView) {
        bza.l();
        ckd.aj("#008 Must be called on the main UI thread.");
        if (webView == null) {
            agd.d("The webview to be registered cannot be null.");
            return;
        }
        zzbzh zza = zzbtx.zza(webView.getContext());
        if (zza == null) {
            agd.d("Internal error, query info generator is null.");
            return;
        }
        try {
            zza.zzj(new bpp(webView));
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public static void setAppMuted(boolean z) {
        bza l = bza.l();
        synchronized (l.k) {
            ckd.an("MobileAds.initialize() must be called prior to setting app muted state.", l.f12482c != null);
            try {
                l.f12482c.zzp(z);
            } catch (RemoteException e2) {
                agd.f("Unable to set app mute state.", e2);
            }
        }
    }

    public static void setAppVolume(float f2) {
        bza l = bza.l();
        l.getClass();
        boolean z = true;
        ckd.ar("The app volume must be a value between 0 and 1 inclusive.", f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f2 <= 1.0f);
        synchronized (l.k) {
            if (l.f12482c == null) {
                z = false;
            }
            ckd.an("MobileAds.initialize() must be called prior to setting the app volume.", z);
            try {
                l.f12482c.zzq(f2);
            } catch (RemoteException e2) {
                agd.f("Unable to set app volume.", e2);
            }
        }
    }

    private static void setPlugin(String str) {
        bza l = bza.l();
        synchronized (l.k) {
            ckd.an("MobileAds.initialize() must be called prior to setting the plugin.", l.f12482c != null);
            try {
                l.f12482c.zzt(str);
            } catch (RemoteException e2) {
                agd.f("Unable to set plugin.", e2);
            }
        }
    }

    public static void setRequestConfiguration(bah bahVar) {
        bza l = bza.l();
        l.getClass();
        ckd.ar("Null passed to setRequestConfiguration.", bahVar != null);
        synchronized (l.k) {
            try {
                bah bahVar2 = l.h;
                l.h = bahVar;
                if (l.f12482c == null) {
                    return;
                }
                bahVar2.getClass();
                bahVar.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void startPreload(Context context, List<cdr> list, mp mpVar) {
        boolean z;
        Status status;
        bza l = bza.l();
        l.getClass();
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (cdr cdrVar : list) {
            String i = awf.i(String.valueOf(cdrVar.f12708c), "#", cdrVar.f12707b);
            hashMap.put(i, Integer.valueOf(((Integer) Map.b.getOrDefault(hashMap, i, 0)).intValue() + 1));
        }
        Iterator it = hashMap.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                if (((Integer) ((Map.Entry) it.next()).getValue()).intValue() > 1) {
                    hashSet.add("Preload configurations include duplicated ad unit IDs and ad format combinations");
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        HashMap hashMap2 = new HashMap();
        for (cdr cdrVar2 : list) {
            bme bmeVar = cdrVar2.f12708c;
            if (bza.f12481b.contains(bmeVar)) {
                Map.b.compute(hashMap2, bmeVar, new cve());
                int i2 = cdrVar2.f12706a;
                if (i2 > 15) {
                    Locale locale = Locale.US;
                    hashSet.add("Preload configurations' buffer size exceeds the maximum limit 15 for " + bmeVar.name());
                } else if (i2 < 0) {
                    Locale locale2 = Locale.US;
                    hashSet.add("Preload configurations' buffer size less than 0 for " + bmeVar.name());
                }
            } else {
                hashSet.add("PreloadConfiguration ad format is not supported:".concat(String.valueOf(cdrVar2.f12708c)));
            }
            z = true;
        }
        bme bmeVar2 = bme.APP_OPEN_AD;
        zzbce zzbceVar = zzbcn.zzeA;
        edt edtVar = edt.f15376a;
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry(bmeVar2, (Integer) edtVar.f15379d.zza(zzbceVar)), new AbstractMap.SimpleEntry(bme.INTERSTITIAL, (Integer) edtVar.f15379d.zza(zzbcn.zzey)), new AbstractMap.SimpleEntry(bme.REWARDED, (Integer) edtVar.f15379d.zza(zzbcn.zzez))};
        HashMap hashMap3 = new HashMap(3);
        for (int i3 = 0; i3 < 3; i3++) {
            Map.Entry entry = entryArr[i3];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap3.put(key, value) != null) {
                key.toString();
                throw new IllegalArgumentException("duplicate key: ".concat(String.valueOf(key)));
            }
        }
        java.util.Map unmodifiableMap = Collections.unmodifiableMap(hashMap3);
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            bme bmeVar3 = (bme) entry2.getKey();
            int intValue = ((Integer) entry2.getValue()).intValue();
            Integer num = (Integer) Map.b.getOrDefault(unmodifiableMap, bmeVar3, 0);
            if (intValue > num.intValue()) {
                Locale locale3 = Locale.US;
                hashSet.add("Preload configurations' size exceeds the maximum limit " + num + " for " + bmeVar3.name());
                z = true;
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                sb.append((String) it2.next());
                if (it2.hasNext()) {
                    sb.append(", ");
                }
            }
            String sb2 = sb.toString();
            agd.d(sb2);
            status = new Status(13, sb2);
        } else {
            status = Status.RESULT_SUCCESS;
        }
        String statusMessage = status.getStatusMessage();
        if (statusMessage == null) {
            statusMessage = "";
        }
        ckd.ar(statusMessage, status.isSuccess());
        zzbcn.zza(context);
        synchronized (l.i) {
            try {
                if (l.j == null) {
                    l.j = cbv.f12612a.f12616e.k(context, new zzbpc());
                }
                ArrayList arrayList = new ArrayList();
                for (cdr cdrVar3 : list) {
                    aeh ai = ao.ai(context, cdrVar3.f12709d.f10978a);
                    ai.zzc.putBoolean("is_sdk_preload", true);
                    int i4 = cdrVar3.f12706a;
                    if (i4 <= 0) {
                        int ordinal = cdrVar3.f12708c.ordinal();
                        i4 = ordinal != 1 ? ordinal != 2 ? ordinal != 5 ? 1 : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzB)).intValue() : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzD)).intValue() : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzC)).intValue();
                    }
                    int ordinal2 = cdrVar3.f12708c.ordinal();
                    int max = Math.max(Math.min(ordinal2 != 1 ? ordinal2 != 2 ? ordinal2 != 5 ? 1 : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzy)).intValue() : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzA)).intValue() : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzz)).intValue(), 15), 1);
                    int ordinal3 = cdrVar3.f12708c.ordinal();
                    arrayList.add(new ghd(cdrVar3.f12707b, cdrVar3.f12708c.c(), ai, Math.max(Math.min(i4, max), Math.min(ordinal3 != 1 ? ordinal3 != 2 ? ordinal3 != 5 ? 1 : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzE)).intValue() : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzG)).intValue() : ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzF)).intValue(), max))));
                }
                try {
                    l.j.zzi(arrayList, new cbl("com.google.android.gms.ads.internal.client.IAdPreloadCallback"));
                } catch (RemoteException e2) {
                    agd.f("Unable to start preload.", e2);
                    Status status2 = Status.RESULT_SUCCESS_CACHE;
                    return;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Status status3 = Status.RESULT_SUCCESS_CACHE;
    }
}
