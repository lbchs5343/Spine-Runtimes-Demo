package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import g.agd;
import g.awf;
import g.beh;
import g.cbv;
import g.edt;
import g.mx;
import g.tn;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcdf implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5204a;

    public static int b(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                mx mxVar = cbv.f12612a.f12615d;
                i = mx.k(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                agd.b("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (agd.h()) {
            StringBuilder o = tn.o("Parse pixels for ", str, ", got string ", str2, ", int ");
            o.append(i);
            o.append(".");
            agd.e(o.toString());
        }
        return i;
    }

    public static void c(zzcbt zzcbtVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcbtVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                agd.b("Could not parse buffer parameters in loadControl video GMSG: (" + str + ", " + str2 + ")");
                return;
            }
        }
        if (str2 != null) {
            zzcbtVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcbtVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcbtVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcbtVar.zzD(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        int min;
        int min2;
        int i;
        zzccf zzccfVar = (zzccf) obj;
        String str = (String) map.get("action");
        if (str == null) {
            agd.b("Action missing from video GMSG.");
            return;
        }
        Integer num = null;
        Integer valueOf = map.containsKey("playerId") ? Integer.valueOf(Integer.parseInt((String) map.get("playerId"))) : null;
        Integer zzb = zzccfVar.zzo() != null ? zzccfVar.zzo().zzb() : null;
        if (valueOf != null && zzb != null && !valueOf.equals(zzb) && !str.equals("load")) {
            Locale locale = Locale.US;
            agd.k("Event intended for player " + valueOf + ", but sent to player " + zzb + " - event ignored");
            return;
        }
        if (agd.i(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            agd.c("Video GMSG: " + str + " " + jSONObject.toString());
        }
        if (str.equals("background")) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                agd.b("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                zzccfVar.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                agd.b("Invalid color parameter in background video GMSG.");
                return;
            }
        }
        if (str.equals("playerBackground")) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                agd.b("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                zzccfVar.zzB(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused2) {
                agd.b("Invalid color parameter in playerBackground video GMSG.");
                return;
            }
        }
        if (str.equals("decoderProps")) {
            String str4 = (String) map.get("mimeTypes");
            if (str4 == null) {
                agd.b("No MIME types specified for decoder properties inspection.");
                HashMap hashMap = new HashMap();
                hashMap.put("event", "decoderProps");
                hashMap.put(AVErrorInfo.ERROR, "missingMimeTypes");
                zzccfVar.zzd("onVideoEvent", hashMap);
                return;
            }
            HashMap hashMap2 = new HashMap();
            for (String str5 : str4.split(",")) {
                hashMap2.put(str5, beh.d(str5.trim()));
            }
            HashMap hashMap3 = new HashMap();
            hashMap3.put("event", "decoderProps");
            hashMap3.put("mimeTypes", hashMap2);
            zzccfVar.zzd("onVideoEvent", hashMap3);
            return;
        }
        zzcbu zzo = zzccfVar.zzo();
        if (zzo == null) {
            agd.b("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = str.equals("new");
        boolean equals2 = str.equals("position");
        if (equals || equals2) {
            Context context = zzccfVar.getContext();
            int b2 = b(context, map, "x", 0);
            int b3 = b(context, map, "y", 0);
            int b4 = b(context, map, "w", -1);
            zzbce zzbceVar = zzbcn.zzdV;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                min = b4 == -1 ? zzccfVar.zzh() : Math.min(b4, zzccfVar.zzh());
            } else {
                if (agd.h()) {
                    StringBuilder z = awf.z(b4, zzccfVar.zzh(), "Calculate width with original width ", ", videoHost.getVideoBoundingWidth() ", ", x ");
                    z.append(b2);
                    z.append(".");
                    agd.e(z.toString());
                }
                min = Math.min(b4, zzccfVar.zzh() - b2);
            }
            int b5 = b(context, map, "h", -1);
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                min2 = b5 == -1 ? zzccfVar.zzg() : Math.min(b5, zzccfVar.zzg());
            } else {
                if (agd.h()) {
                    StringBuilder z2 = awf.z(b5, zzccfVar.zzg(), "Calculate height with original height ", ", videoHost.getVideoBoundingHeight() ", ", y ");
                    z2.append(b3);
                    z2.append(".");
                    agd.e(z2.toString());
                }
                min2 = Math.min(b5, zzccfVar.zzg() - b3);
            }
            int i2 = min2;
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused3) {
                i = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (!equals || zzo.zza() != null) {
                zzo.zzc(b2, b3, min, i2);
                return;
            }
            zzo.zzd(b2, b3, min, i2, i, parseBoolean, new zzcce((String) map.get("flags")));
            zzcbt zza = zzo.zza();
            if (zza != null) {
                c(zza, map);
                return;
            }
            return;
        }
        zzcgm zzq = zzccfVar.zzq();
        if (zzq != null) {
            if (str.equals("timeupdate")) {
                String str6 = (String) map.get("currentTime");
                if (str6 == null) {
                    agd.b("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzq.zzt(Float.parseFloat(str6));
                    return;
                } catch (NumberFormatException unused4) {
                    agd.b("Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6));
                    return;
                }
            }
            if (str.equals("skip")) {
                zzq.zzu();
                return;
            }
        }
        zzcbt zza2 = zzo.zza();
        if (zza2 == null) {
            HashMap hashMap4 = new HashMap();
            hashMap4.put("event", "no_video_view");
            zzccfVar.zzd("onVideoEvent", hashMap4);
            return;
        }
        if (str.equals("click")) {
            Context context2 = zzccfVar.getContext();
            int b6 = b(context2, map, "x", 0);
            float b7 = b(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, b6, b7, 0);
            zza2.zzx(obtain);
            obtain.recycle();
            return;
        }
        if (str.equals("currentTime")) {
            String str7 = (String) map.get("time");
            if (str7 == null) {
                agd.b("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zza2.zzw((int) (Float.parseFloat(str7) * 1000.0f));
                return;
            } catch (NumberFormatException unused5) {
                agd.b("Could not parse time parameter from currentTime video GMSG: ".concat(str7));
                return;
            }
        }
        if (str.equals("hide")) {
            zza2.setVisibility(4);
            return;
        }
        if (str.equals("remove")) {
            zza2.setVisibility(8);
            return;
        }
        if (str.equals("load")) {
            zza2.zzr(valueOf);
            return;
        }
        if (str.equals("loadControl")) {
            c(zza2, map);
            return;
        }
        if (str.equals("muted")) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zza2.zzs();
                return;
            } else {
                zza2.zzI();
                return;
            }
        }
        if (str.equals("pause")) {
            zza2.zzu();
            return;
        }
        if (str.equals("play")) {
            zza2.zzv();
            return;
        }
        if (str.equals("show")) {
            zza2.setVisibility(0);
            return;
        }
        if (str.equals("src")) {
            String str8 = (String) map.get("src");
            if (map.containsKey("periodicReportIntervalMs")) {
                try {
                    num = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                } catch (NumberFormatException unused6) {
                    agd.b("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                }
            }
            String[] strArr = {str8};
            String str9 = (String) map.get("demuxed");
            if (str9 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str9);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        strArr2[i3] = jSONArray.getString(i3);
                    }
                    strArr = strArr2;
                } catch (JSONException unused7) {
                    agd.b("Malformed demuxed URL list for playback: ".concat(str9));
                    strArr = new String[]{str8};
                }
            }
            if (num != null) {
                zzccfVar.zzA(num.intValue());
            }
            zza2.zzE(str8, strArr);
            return;
        }
        if (str.equals("touchMove")) {
            Context context3 = zzccfVar.getContext();
            zza2.zzH(b(context3, map, "dx", 0), b(context3, map, "dy", 0));
            if (this.f5204a) {
                return;
            }
            zzccfVar.zzu();
            this.f5204a = true;
            return;
        }
        if (!str.equals("volume")) {
            if (str.equals("watermark")) {
                zza2.zzn();
                return;
            } else {
                agd.b("Unknown video action: ".concat(str));
                return;
            }
        }
        String str10 = (String) map.get("volume");
        if (str10 == null) {
            agd.b("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            zza2.zzG(Float.parseFloat(str10));
        } catch (NumberFormatException unused8) {
            agd.b("Could not parse volume parameter from volume video GMSG: ".concat(str10));
        }
    }
}
