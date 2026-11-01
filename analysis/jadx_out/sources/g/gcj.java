package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzfti;
import com.google.android.gms.internal.ads.zzftl;
import com.google.android.gms.internal.ads.zzftm;
import com.google.android.gms.internal.ads.zzftn;
import com.google.android.gms.internal.ads.zzfuj;
import com.google.android.gms.internal.ads.zzfuk;
import com.google.android.gms.internal.ads.zzful;
import com.google.android.gms.internal.ads.zzfve;
import com.google.android.gms.internal.ads.zzfvf;
import com.google.android.gms.internal.ads.zzfwa;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class gcj implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17888a;

    public /* synthetic */ gcj(int i) {
        this.f17888a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        JSONObject zza;
        JSONObject zzb;
        zzful zzfulVar;
        zzful zzfulVar2;
        zzful zzfulVar3;
        switch (this.f17888a) {
            case 0:
                zzcfk zzcfkVar = (zzcfk) obj;
                WindowManager windowManager = (WindowManager) zzcfkVar.getContext().getSystemService("window");
                esy esyVar = ti.f20033a.z;
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                int[] iArr = new int[2];
                HashMap hashMap = new HashMap();
                ((View) zzcfkVar).getLocationInWindow(iArr);
                hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
                tn.e(iArr[1], hashMap, "yInPixels", i, "windowWidthInPixels");
                hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
                zzcfkVar.zzd("locationReady", hashMap);
                agd.b("GET LOCATION COMPILED");
                return;
            case 1:
                zzcfk zzcfkVar2 = (zzcfk) obj;
                zzbfm zzK = zzcfkVar2.zzK();
                if (zzK == null || (zza = zzK.zza()) == null) {
                    zzcfkVar2.zze("nativeAdViewSignalsReady", new JSONObject());
                    return;
                } else {
                    zzcfkVar2.zze("nativeAdViewSignalsReady", zza);
                    return;
                }
            case 2:
                zzcfk zzcfkVar3 = (zzcfk) obj;
                zzbfm zzK2 = zzcfkVar3.zzK();
                if (zzK2 == null || (zzb = zzK2.zzb()) == null) {
                    zzcfkVar3.zze("nativeClickMetaReady", new JSONObject());
                    return;
                } else {
                    zzcfkVar3.zze("nativeClickMetaReady", zzb);
                    return;
                }
            case 3:
                zzcfk zzcfkVar4 = (zzcfk) obj;
                axs axsVar = ti.f20033a.ac;
                Context context = zzcfkVar4.getContext();
                synchronized (axsVar) {
                    axsVar.f11037d = zzcfkVar4;
                    if (!axsVar.o(context)) {
                        axsVar.m("Unable to bind", "on_play_store_bind");
                        return;
                    }
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("action", "fetch_completed");
                    zzcaj.zze.execute(new eax(axsVar, "on_play_store_bind", hashMap2, 24, false));
                    return;
                }
            case 4:
                zzcfk zzcfkVar5 = (zzcfk) obj;
                if (TextUtils.isEmpty((CharSequence) map.get("appId"))) {
                    agd.e("Missing App Id, cannot show LMD Overlay without it");
                    return;
                }
                zzfve zzl = zzfvf.zzl();
                zzl.zzb((String) map.get("appId"));
                zzl.zzh(zzcfkVar5.getWidth());
                zzl.zzg(zzcfkVar5.zzF().getWindowToken());
                if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
                    zzl.zzd(Integer.parseInt((String) map.get("gravityY")) | Integer.parseInt((String) map.get("gravityX")));
                } else {
                    zzl.zzd(81);
                }
                if (map.containsKey("verticalMargin")) {
                    zzl.zze(Float.parseFloat((String) map.get("verticalMargin")));
                } else {
                    zzl.zze(0.02f);
                }
                if (map.containsKey("enifd")) {
                    zzl.zza((String) map.get("enifd"));
                }
                try {
                    ti.f20033a.ac.n(zzcfkVar5, zzl.zzi());
                    return;
                } catch (NullPointerException e2) {
                    ti.f20033a.f20034ab.zzw(e2, "DefaultGmsgHandlers.ShowLMDOverlay");
                    agd.e("Missing parameters for LMD Overlay show request");
                    return;
                }
            case 5:
                axs axsVar2 = ti.f20033a.ac;
                if (!axsVar2.f11040g || (zzfulVar = (zzful) axsVar2.f11038e) == null) {
                    agd.e("LastMileDelivery not connected");
                    return;
                } else {
                    zzfulVar.zzc(axsVar2.j(), (eap) axsVar2.h);
                    zzcaj.zze.execute(new eax(axsVar2, "onLMDOverlayExpand", new HashMap(), 24, false));
                    return;
                }
            case 6:
                axs axsVar3 = ti.f20033a.ac;
                if (!axsVar3.f11040g || (zzfulVar2 = (zzful) axsVar3.f11038e) == null) {
                    agd.e("LastMileDelivery not connected");
                    return;
                } else {
                    zzfulVar2.zza(axsVar3.j(), (eap) axsVar3.h);
                    zzcaj.zze.execute(new eax(axsVar3, "onLMDOverlayCollapse", new HashMap(), 24, false));
                    return;
                }
            case 7:
                axs axsVar4 = ti.f20033a.ac;
                if (!axsVar4.f11040g || (zzfulVar3 = (zzful) axsVar4.f11038e) == null) {
                    agd.e("LastMileDelivery not connected");
                    return;
                }
                zzfuj zzc = zzfuk.zzc();
                if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlf)).booleanValue() || TextUtils.isEmpty((String) axsVar4.f11036a)) {
                    String str = (String) axsVar4.f11039f;
                    if (str != null) {
                        zzc.zzb(str);
                    } else {
                        axsVar4.m("Missing session token and/or appId", "onLMDupdate");
                    }
                } else {
                    zzc.zza((String) axsVar4.f11036a);
                }
                zzfulVar3.zzb(zzc.zzc(), (eap) axsVar4.h);
                return;
            case 8:
                zzcfk zzcfkVar6 = (zzcfk) obj;
                try {
                    zzftl.zzj(zzcfkVar6.getContext()).zzk();
                    zzftm.zzi(zzcfkVar6.getContext()).zzj();
                    zzftn.zza(zzcfkVar6.getContext()).zzb(null);
                    return;
                } catch (IOException e3) {
                    ti.f20033a.f20034ab.zzw(e3, "DefaultGmsgHandlers.ResetPaid");
                    return;
                }
            case 9:
                zzcfk zzcfkVar7 = (zzcfk) obj;
                try {
                    String str2 = (String) map.get("enabled");
                    if (!zzfwa.zzc("true", str2) && !zzfwa.zzc("false", str2)) {
                        return;
                    }
                    zzfti.zza(zzcfkVar7.getContext()).zzb(Boolean.parseBoolean(str2));
                    return;
                } catch (IOException e4) {
                    ti.f20033a.f20034ab.zzw(e4, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
                    return;
                }
            case 10:
                zzcfk zzcfkVar8 = (zzcfk) obj;
                try {
                    JSONObject jSONObject = new JSONObject((String) map.get("args"));
                    Iterator<String> keys = jSONObject.keys();
                    SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(zzcfkVar8.getContext()).edit();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj2 = jSONObject.get(next);
                        if (obj2 instanceof Integer) {
                            edit.putInt(next, ((Integer) obj2).intValue());
                        } else if (obj2 instanceof Long) {
                            edit.putLong(next, ((Long) obj2).longValue());
                        } else if (obj2 instanceof Double) {
                            edit.putFloat(next, ((Double) obj2).floatValue());
                        } else if (obj2 instanceof Float) {
                            edit.putFloat(next, ((Float) obj2).floatValue());
                        } else if (obj2 instanceof Boolean) {
                            edit.putBoolean(next, ((Boolean) obj2).booleanValue());
                        } else if (obj2 instanceof String) {
                            edit.putString(next, (String) obj2);
                        }
                    }
                    edit.apply();
                    return;
                } catch (JSONException e5) {
                    ti.f20033a.f20034ab.zzw(e5, "GMSG write local storage KV pairs handler");
                    return;
                }
            case 11:
                zzcfk zzcfkVar9 = (zzcfk) obj;
                try {
                    JSONArray jSONArray = new JSONArray((String) map.get("args"));
                    SharedPreferences.Editor edit2 = PreferenceManager.getDefaultSharedPreferences(zzcfkVar9.getContext()).edit();
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        edit2.remove(jSONArray.getString(i3));
                    }
                    edit2.apply();
                    return;
                } catch (JSONException e6) {
                    ti.f20033a.f20034ab.zzw(e6, "GMSG clear local storage keys handler");
                    return;
                }
            case 12:
                zzcfk zzcfkVar10 = (zzcfk) obj;
                if (zzcfkVar10.zzJ() != null) {
                    zzcfkVar10.zzJ().zza();
                }
                cwg zzL = zzcfkVar10.zzL();
                if (zzL != null) {
                    zzL.zzb();
                    return;
                }
                cwg zzM = zzcfkVar10.zzM();
                if (zzM != null) {
                    zzM.zzb();
                    return;
                } else {
                    agd.b("A GMSG tried to close something that wasn't an overlay.");
                    return;
                }
            case 13:
                ((zzcfk) obj).zzao("1".equals(map.get("custom_close")));
                return;
            case 14:
                agd.k("Received log message: ".concat(String.valueOf((String) map.get("string"))));
                return;
            case 15:
                zzbfm zzK3 = ((zzcfk) obj).zzK();
                if (zzK3 != null) {
                    zzK3.zzc();
                    return;
                }
                return;
            case 16:
                ((zzcfk) obj).zzal(!Boolean.parseBoolean((String) map.get("disabled")));
                return;
            case 17:
                zzcfk zzcfkVar11 = (zzcfk) obj;
                String str3 = (String) map.get("action");
                if ("pause".equals(str3)) {
                    zzcfkVar11.zzdg();
                    return;
                } else {
                    if ("resume".equals(str3)) {
                        zzcfkVar11.zzdh();
                        return;
                    }
                    return;
                }
            case 18:
                zzcfk zzcfkVar12 = (zzcfk) obj;
                if (map.keySet().contains("start")) {
                    zzcfkVar12.zzN().zzl();
                    return;
                } else if (map.keySet().contains("stop")) {
                    zzcfkVar12.zzN().zzm();
                    return;
                } else {
                    if (map.keySet().contains(ekq.PERMISSION_RESULT_CANCEL)) {
                        zzcfkVar12.zzN().zzk();
                        return;
                    }
                    return;
                }
            default:
                zzcfk zzcfkVar13 = (zzcfk) obj;
                if (map.keySet().contains("start")) {
                    zzcfkVar13.zzax(true);
                }
                if (map.keySet().contains("stop")) {
                    zzcfkVar13.zzax(false);
                    return;
                }
                return;
        }
    }
}
