package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import g.agd;
import g.bij;
import g.bpp;
import g.cbv;
import g.cui;
import g.dfu;
import g.dpa;
import g.dvw;
import g.dyy;
import g.edt;
import g.esy;
import g.etg;
import g.evo;
import g.fre;
import g.ti;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbkd implements zzbjr {

    /* renamed from: b, reason: collision with root package name */
    public final zzbse f4847b;

    /* renamed from: c, reason: collision with root package name */
    public final zzedp f4848c;

    /* renamed from: d, reason: collision with root package name */
    public final cui f4849d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcnb f4850e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdsm f4851f;
    public fre h = null;

    /* renamed from: a, reason: collision with root package name */
    public final zzges f4846a = zzcaj.zzf;

    /* renamed from: g, reason: collision with root package name */
    public final dfu f4852g = new dfu(null);

    public zzbkd(cui cuiVar, zzbse zzbseVar, zzedp zzedpVar, zzdsm zzdsmVar, zzcnb zzcnbVar) {
        this.f4849d = cuiVar;
        this.f4847b = zzbseVar;
        this.f4848c = zzedpVar;
        this.f4851f = zzdsmVar;
        this.f4850e = zzcnbVar;
    }

    public static Uri i(Context context, zzavc zzavcVar, Uri uri, View view, Activity activity, zzffs zzffsVar) {
        if (zzavcVar != null) {
            try {
                if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlI)).booleanValue() || zzffsVar == null) {
                    if (zzavcVar.zze(uri)) {
                        return zzavcVar.zza(uri, context, view, activity);
                    }
                } else if (zzavcVar.zze(uri)) {
                    return zzffsVar.zza(uri, context, view, activity);
                }
            } catch (zzavd unused) {
            } catch (Exception e2) {
                ti.f20033a.f20034ab.zzw(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            }
        }
        return uri;
    }

    public static Uri j(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") == null) {
                return uri;
            }
            return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
        } catch (UnsupportedOperationException e2) {
            agd.f("Error adding click uptime parameter to url: ".concat(String.valueOf(uri.toString())), e2);
            return uri;
        }
    }

    public static int zzb(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    public static boolean zzf(Map map) {
        return "1".equals(map.get("custom_close"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f4, code lost:
    
        if (com.google.android.gms.internal.ads.zzbkc.zzc(r12, r7, r8, r9, r10) == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013e, code lost:
    
        r12 = r17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(evo evoVar, Map map, boolean z, String str, boolean z2, boolean z3) {
        Intent intent;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ResolveInfo zzc;
        boolean z4 = true;
        l(true);
        zzcfk zzcfkVar = (zzcfk) evoVar;
        Context context = zzcfkVar.getContext();
        zzavc zzI = zzcfkVar.zzI();
        View zzF = zzcfkVar.zzF();
        zzffs zzS = zzcfkVar.zzS();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        String str2 = (String) map.get("u");
        if (TextUtils.isEmpty(str2)) {
            intent = null;
        } else {
            Uri j = j(i(context, zzI, Uri.parse(str2), zzF, null, zzS));
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("use_first_package"));
            boolean parseBoolean2 = Boolean.parseBoolean((String) map.get("use_running_process"));
            if (!Boolean.parseBoolean((String) map.get("use_custom_tabs"))) {
                if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeB)).booleanValue()) {
                    z4 = false;
                }
            }
            Uri build = "http".equalsIgnoreCase(j.getScheme()) ? j.buildUpon().scheme("https").build() : "https".equalsIgnoreCase(j.getScheme()) ? j.buildUpon().scheme("http").build() : null;
            ArrayList arrayList = new ArrayList();
            Intent zza = zzbkc.zza(j, context, zzI, zzF, zzS);
            Intent zza2 = zzbkc.zza(build, context, zzI, zzF, zzS);
            if (z4) {
                esy esyVar = ti.f20033a.z;
                esy.z(context, zza);
                esy.z(context, zza2);
            }
            ResolveInfo zzd = zzbkc.zzd(zza, arrayList, context, zzI, zzF, zzS);
            if (zzd != null) {
                intent = zzbkc.zzb(zza, zzd, context, zzI, zzF, zzS);
            } else {
                if (zza2 != null && (zzc = zzbkc.zzc(zza2, context, zzI, zzF, zzS)) != null) {
                    intent = zzbkc.zzb(zza, zzc, context, zzI, zzF, zzS);
                }
                if (!arrayList.isEmpty()) {
                    if (parseBoolean2 && activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                        int size = arrayList.size();
                        int i = 0;
                        loop0: while (i < size) {
                            ResolveInfo resolveInfo = (ResolveInfo) arrayList.get(i);
                            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                            while (true) {
                                int i2 = i + 1;
                                if (it.hasNext()) {
                                    List<ActivityManager.RunningAppProcessInfo> list = runningAppProcesses;
                                    if (it.next().processName.equals(resolveInfo.activityInfo.packageName)) {
                                        intent = zzbkc.zzb(zza, resolveInfo, context, zzI, zzF, zzS);
                                        break loop0;
                                    }
                                    runningAppProcesses = list;
                                }
                            }
                        }
                    }
                    if (parseBoolean) {
                        intent = zzbkc.zzb(zza, (ResolveInfo) arrayList.get(0), context, zzI, zzF, zzS);
                    }
                }
                intent = zza;
            }
        }
        if (!z || this.f4848c == null || intent == null || !m(evoVar, zzcfkVar.getContext(), intent.getData().toString(), str)) {
            try {
                ((zzcgu) evoVar).zzaJ(new etg(intent, this.h), z2, z3);
            } catch (ActivityNotFoundException e2) {
                agd.b(e2.getMessage());
            }
        }
    }

    public final void l(boolean z) {
        zzbse zzbseVar = this.f4847b;
        if (zzbseVar != null) {
            zzbseVar.zza(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00aa, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) r8.zza(com.google.android.gms.internal.ads.zzbcn.zzid)).booleanValue() : ((java.lang.Boolean) r8.zza(com.google.android.gms.internal.ads.zzbcn.zzic)).booleanValue()) != false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m(evo evoVar, Context context, String str, String str2) {
        zzbsz zzbszVar;
        zzbtm zzbtmVar;
        zzedp zzedpVar = this.f4848c;
        zzdsm zzdsmVar = this.f4851f;
        if (zzdsmVar != null) {
            zzeea.zzc(context, zzdsmVar, zzedpVar, str2, "offline_open");
        }
        ti tiVar = ti.f20033a;
        if (tiVar.f20034ab.zzA(context)) {
            zzedpVar.zzh(this.f4852g, str2);
            return false;
        }
        zzcfk zzcfkVar = (zzcfk) evoVar;
        zzfet zzD = zzcfkVar.zzD();
        boolean z = (zzD == null || (zzbtmVar = zzD.zzad) == null || !zzbtmVar.zza || zzbtmVar.zzb == null || !zzbtmVar.zzc) ? false : true;
        zzbce zzbceVar = zzbcn.zzii;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() && z) {
            if (zzdsmVar != null) {
                zzeea.zzc(context, zzdsmVar, zzedpVar, str2, "onfs");
            }
            return false;
        }
        dvw an = esy.an(context);
        boolean h = new dyy(context).h();
        boolean c2 = tiVar.k.c(context);
        boolean z2 = zzcfkVar.zzO().zzi() && zzcfkVar.zzi() == null;
        if (!h) {
            if (!new dyy(context).h()) {
            }
            n(context, str2, "notifications_disabled");
            return false;
        }
        if (c2) {
            n(context, str2, "notification_channel_disabled");
            return false;
        }
        if (an == null) {
            n(context, str2, "work_manager_unavailable");
            return false;
        }
        if (z2) {
            n(context, str2, "ad_no_activity");
            return false;
        }
        if (!((Boolean) zzbclVar2.zza(zzbcn.zzia)).booleanValue()) {
            n(context, str2, "notification_flow_disabled");
            return false;
        }
        if (zzcfkVar.zzL() == null || zzcfkVar.zzi() == null) {
            ((zzcgu) evoVar).zzaK(str2, str, 14);
        } else {
            zzeeb zze = zzeec.zze();
            zze.zza(zzcfkVar.zzi());
            zze.zzb(null);
            zze.zzc(str2);
            zze.zzd(str);
            zzeec zze2 = zze.zze();
            try {
                AdOverlayInfoParcel adOverlayInfoParcel = zzcfkVar.zzL().u;
                if (adOverlayInfoParcel == null || (zzbszVar = adOverlayInfoParcel.zzv) == null) {
                    throw new bij("noioou");
                }
                zzbszVar.zzg(new bpp(zze2));
            } catch (Exception e2) {
                n(context, str2, e2.getMessage());
                return false;
            }
        }
        evoVar.onAdClicked();
        return true;
    }

    public final void n(Context context, String str, String str2) {
        this.f4848c.zzc(str);
        zzdsm zzdsmVar = this.f4851f;
        if (zzdsmVar != null) {
            zzeea.zzd(context, zzdsmVar, this.f4848c, str, "dialog_not_shown", zzfzr.zze("dialog_not_shown_reason", str2));
        }
    }

    public final void o(int i) {
        zzdsm zzdsmVar;
        String str;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeE)).booleanValue() || (zzdsmVar = this.f4851f) == null) {
            return;
        }
        zzdsl zza = zzdsmVar.zza();
        zza.zzb("action", "cct_action");
        switch (i) {
            case 2:
                str = "CONTEXT_NOT_AN_ACTIVITY";
                break;
            case 3:
                str = "CONTEXT_NULL";
                break;
            case 4:
                str = "CCT_NOT_SUPPORTED";
                break;
            case 5:
                str = "CCT_READY_TO_OPEN";
                break;
            case 6:
                str = "ACTIVITY_NOT_FOUND";
                break;
            case 7:
                str = "EMPTY_URL";
                break;
            case 8:
                str = "UNKNOWN";
                break;
            case 9:
                str = "WRONG_EXP_SETUP";
                break;
            default:
                str = "OPT_OUT";
                break;
        }
        zza.zzb("cct_open_status", str);
        zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        zzcnb zzcnbVar;
        evo evoVar = (evo) obj;
        String str = (String) map.get("u");
        Map hashMap = new HashMap();
        zzcfk zzcfkVar = (zzcfk) evoVar;
        if (zzcfkVar.zzD() != null) {
            hashMap = zzcfkVar.zzD().zzaw;
        }
        String zzc = zzbyx.zzc(str, zzcfkVar.getContext(), true, hashMap);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            agd.b("Action missing from an open GMSG.");
            return;
        }
        cui cuiVar = this.f4849d;
        if (cuiVar == null || cuiVar.f()) {
            zzgei.zzr((((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjI)).booleanValue() && (zzcnbVar = this.f4850e) != null && zzcnb.zzj(zzc)) ? zzcnbVar.zzb(zzc, cbv.f12612a.f12614c) : zzgei.zzh(zzc), new dpa(this, map, evoVar, str2), this.f4846a);
        } else {
            cuiVar.e(zzc);
        }
    }
}
