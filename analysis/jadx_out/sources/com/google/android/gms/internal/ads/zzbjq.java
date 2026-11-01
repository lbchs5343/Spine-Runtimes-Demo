package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.agd;
import g.bfn;
import g.dcy;
import g.edt;
import g.gcj;
import g.ti;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbjq {
    public static final zzbjr zza = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzbio
        @Override // com.google.android.gms.internal.ads.zzbjr
        public final void zza(Object obj, Map map) {
            zzcgr zzcgrVar = (zzcgr) obj;
            zzbjr zzbjrVar = zzbjq.zza;
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                agd.b("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] split = str.split(",");
            HashMap hashMap = new HashMap();
            PackageManager packageManager = zzcgrVar.getContext().getPackageManager();
            for (String str2 : split) {
                String[] split2 = str2.split(";", 2);
                boolean z = true;
                if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                hashMap.put(str2, valueOf);
                agd.e("/canOpenURLs;" + str2 + ";" + valueOf);
            }
            ((zzbmm) zzcgrVar).zzd("openableURLs", hashMap);
        }
    };
    public static final zzbjr zzb = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzbiq
        @Override // com.google.android.gms.internal.ads.zzbjr
        public final void zza(Object obj, Map map) {
            zzcgr zzcgrVar = (zzcgr) obj;
            zzbjr zzbjrVar = zzbjq.zza;
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhS)).booleanValue()) {
                agd.b("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get("package_name");
            if (TextUtils.isEmpty(str)) {
                agd.b("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap hashMap = new HashMap();
            Boolean valueOf = Boolean.valueOf(zzcgrVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
            hashMap.put(str, valueOf);
            agd.e("/canOpenApp;" + str + ";" + valueOf);
            ((zzbmm) zzcgrVar).zzd("openableApp", hashMap);
        }
    };
    public static final zzbjr zzc = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzbit
        /* JADX WARN: Can't wrap try/catch for region: R(16:9|10|11|(13:50|51|52|15|(10:17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(2:31|(1:33)))|34|35|36|(1:38)|39|40|42|43)(1:13)|14|15|(0)|34|35|36|(0)|39|40|42|43|7) */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00eb, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ec, code lost:
        
            g.agd.f("Error constructing openable urls response.", r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00d7, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00d8, code lost:
        
            g.ti.f20033a.f20034ab.zzw(r0, r9.toString());
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00e6  */
        @Override // com.google.android.gms.internal.ads.zzbjr
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void zza(Object obj, Map map) {
            String optString;
            String optString2;
            String optString3;
            String optString4;
            String optString5;
            String optString6;
            String optString7;
            ResolveInfo resolveInfo;
            char c2;
            Intent parseUri;
            zzcgr zzcgrVar = (zzcgr) obj;
            zzbjr zzbjrVar = zzbjq.zza;
            PackageManager packageManager = zzcgrVar.getContext().getPackageManager();
            try {
                try {
                    JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                    JSONObject jSONObject = new JSONObject();
                    int i = 0;
                    int i2 = 0;
                    while (i2 < jSONArray.length()) {
                        try {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            optString = jSONObject2.optString(TTDownloadField.TT_ID);
                            optString2 = jSONObject2.optString("u");
                            optString3 = jSONObject2.optString("i");
                            optString4 = jSONObject2.optString("m");
                            optString5 = jSONObject2.optString("p");
                            optString6 = jSONObject2.optString("c");
                            optString7 = jSONObject2.optString("intent_url");
                            resolveInfo = null;
                        } catch (JSONException e2) {
                            agd.f("Error parsing the intent data.", e2);
                        }
                        if (TextUtils.isEmpty(optString7)) {
                            c2 = 0;
                        } else {
                            try {
                                parseUri = Intent.parseUri(optString7, i);
                                c2 = 0;
                            } catch (URISyntaxException e3) {
                                c2 = 0;
                                agd.f("Error parsing the url: ".concat(String.valueOf(optString7)), e3);
                            }
                            if (parseUri == null) {
                                parseUri = new Intent();
                                if (!TextUtils.isEmpty(optString2)) {
                                    parseUri.setData(Uri.parse(optString2));
                                }
                                if (!TextUtils.isEmpty(optString3)) {
                                    parseUri.setAction(optString3);
                                }
                                if (!TextUtils.isEmpty(optString4)) {
                                    parseUri.setType(optString4);
                                }
                                if (!TextUtils.isEmpty(optString5)) {
                                    parseUri.setPackage(optString5);
                                }
                                if (!TextUtils.isEmpty(optString6)) {
                                    String[] split = optString6.split("/", 2);
                                    if (split.length == 2) {
                                        parseUri.setComponent(new ComponentName(split[c2], split[1]));
                                    }
                                }
                            }
                            Intent intent = parseUri;
                            resolveInfo = packageManager.resolveActivity(intent, 65536);
                            jSONObject.put(optString, resolveInfo != null);
                            i2++;
                            i = 0;
                        }
                        parseUri = null;
                        if (parseUri == null) {
                        }
                        Intent intent2 = parseUri;
                        resolveInfo = packageManager.resolveActivity(intent2, 65536);
                        jSONObject.put(optString, resolveInfo != null);
                        i2++;
                        i = 0;
                    }
                    ((zzbmm) zzcgrVar).zze("openableIntents", jSONObject);
                } catch (JSONException unused) {
                    ((zzbmm) zzcgrVar).zze("openableIntents", new JSONObject());
                }
            } catch (JSONException unused2) {
                ((zzbmm) zzcgrVar).zze("openableIntents", new JSONObject());
            }
        }
    };
    public static final zzbjr zzd = new gcj(12);
    public static final zzbjr zze = new gcj(13);
    public static final zzbjr zzf = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzbiu
        @Override // com.google.android.gms.internal.ads.zzbjr
        public final void zza(Object obj, Map map) {
            zzcgr zzcgrVar = (zzcgr) obj;
            zzbjr zzbjrVar = zzbjq.zza;
            String str = (String) map.get("u");
            if (str == null) {
                agd.b("URL missing from httpTrack GMSG.");
            } else {
                new bfn(zzcgrVar.getContext(), ((zzcgy) zzcgrVar).zzn().afmaVersion, str).zzb();
            }
        }
    };
    public static final zzbjr zzg = new gcj(14);
    public static final zzbjr zzh = new gcj(15);
    public static final zzbjr zzi = new zzbjr() { // from class: com.google.android.gms.internal.ads.zzbis
        @Override // com.google.android.gms.internal.ads.zzbjr
        public final void zza(Object obj, Map map) {
            zzcgx zzcgxVar = (zzcgx) obj;
            zzbjr zzbjrVar = zzbjq.zza;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int parseInt = Integer.parseInt(str);
                int parseInt2 = Integer.parseInt(str2);
                int parseInt3 = Integer.parseInt(str3);
                zzavc zzI = zzcgxVar.zzI();
                if (zzI != null) {
                    zzI.zzc().zzl(parseInt, parseInt2, parseInt3);
                }
            } catch (NumberFormatException unused) {
                agd.b("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final zzbjr zzj = new gcj(16);
    public static final zzbjr zzk = new gcj(17);
    public static final zzbjr zzl = new zzcdf();
    public static final zzbjr zzm = new zzcdg();
    public static final zzbjr zzn = new zzbik();
    public static final zzbkh zzo = new zzbkh();
    public static final zzbjr zzp = new gcj(18);
    public static final zzbjr zzq = new gcj(19);
    public static final zzbjr zzr = new gcj(0);
    public static final zzbjr zzs = new gcj(1);
    public static final zzbjr zzt = new gcj(2);
    public static final zzbjr zzu = new gcj(3);
    public static final zzbjr zzv = new gcj(4);
    public static final zzbjr zzw = new gcj(5);
    public static final zzbjr zzx = new gcj(6);
    public static final zzbjr zzy = new gcj(7);
    public static final zzbjr zzz = new gcj(8);
    public static final zzbjr zzA = new gcj(9);
    public static final zzbjr zzB = new gcj(10);
    public static final zzbjr zzC = new gcj(11);

    public static dcy zza(zzcfk zzcfkVar, String str) {
        Uri parse = Uri.parse(str);
        try {
            zzavc zzI = zzcfkVar.zzI();
            zzffs zzS = zzcfkVar.zzS();
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlI)).booleanValue() || zzS == null) {
                if (zzI != null && zzI.zzf(parse)) {
                    parse = zzI.zza(parse, zzcfkVar.getContext(), zzcfkVar.zzF(), zzcfkVar.zzi());
                }
            } else if (zzI != null && zzI.zzf(parse)) {
                parse = zzS.zza(parse, zzcfkVar.getContext(), zzcfkVar.zzF(), zzcfkVar.zzi());
            }
        } catch (zzavd unused) {
            agd.b("Unable to append parameter to URL: ".concat(str));
        }
        Map hashMap = new HashMap();
        if (zzcfkVar.zzD() != null) {
            hashMap = zzcfkVar.zzD().zzaw;
        }
        final String zzb2 = zzbyx.zzb(parse, zzcfkVar.getContext(), hashMap);
        long longValue = ((Long) zzbem.zze.zze()).longValue();
        if (longValue <= 0 || longValue > 243799202) {
            return zzgei.zzh(zzb2);
        }
        zzgdz zzu2 = zzgdz.zzu(zzcfkVar.zzT());
        zzfwh zzfwhVar = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbil
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbjr zzbjrVar = zzbjq.zza;
                if (!((Boolean) zzbem.zzi.zze()).booleanValue()) {
                    return "failure_click_attok";
                }
                ti.f20033a.f20034ab.zzw(th, "prepareClickUrl.attestation1");
                return "failure_click_attok";
            }
        };
        zzges zzgesVar = zzcaj.zzf;
        return (zzgdz) zzgei.zze((zzgdz) zzgei.zzm((zzgdz) zzgei.zze(zzu2, Throwable.class, zzfwhVar, zzgesVar), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbim
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                String str2 = (String) obj;
                zzbjr zzbjrVar = zzbjq.zza;
                String str3 = zzb2;
                if (str2 != null) {
                    if (((Boolean) zzbem.zzf.zze()).booleanValue()) {
                        String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                        String host = Uri.parse(str3).getHost();
                        for (int i = 0; i < 3; i++) {
                            if (!host.endsWith(strArr[i])) {
                            }
                        }
                    }
                    String str4 = (String) zzbem.zza.zze();
                    String str5 = (String) zzbem.zzb.zze();
                    if (!TextUtils.isEmpty(str4)) {
                        str3 = str3.replace(str4, str2);
                    }
                    if (!TextUtils.isEmpty(str5)) {
                        Uri parse2 = Uri.parse(str3);
                        if (TextUtils.isEmpty(parse2.getQueryParameter(str5))) {
                            return parse2.buildUpon().appendQueryParameter(str5, str2).toString();
                        }
                    }
                }
                return str3;
            }
        }, zzgesVar), Throwable.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzbin
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbjr zzbjrVar = zzbjq.zza;
                if (((Boolean) zzbem.zzi.zze()).booleanValue()) {
                    ti.f20033a.f20034ab.zzw(th, "prepareClickUrl.attestation2");
                }
                return zzb2;
            }
        }, zzgesVar);
    }

    public static void zzc(Map map, zzdel zzdelVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzks)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && zzdelVar != null) {
            zzdelVar.zzdG();
        }
    }
}
