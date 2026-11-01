package com.google.android.gms.internal.ads;

import g.agd;
import g.edt;
import g.ti;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcds implements zzbjr {
    public static final Integer a(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            agd.b("Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str)));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        zzcdj zzcdjVar;
        zzcdr zzcdrVar;
        zzcdj zzcdjVar2;
        zzcdj zzcdjVar3;
        zzccf zzccfVar = (zzccf) obj;
        if (agd.i(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            agd.c("Precache GMSG: ".concat(jSONObject.toString()));
        }
        zzcdk zzcdkVar = ti.f20033a.x;
        if (map.containsKey("abort")) {
            if (zzcdkVar.zzd(zzccfVar)) {
                return;
            }
            agd.b("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer a2 = a("periodicReportIntervalMs", map);
        Integer a3 = a("exoPlayerRenderingIntervalMs", map);
        Integer a4 = a("exoPlayerIdleIntervalMs", map);
        zzcce zzcceVar = new zzcce((String) map.get("flags"));
        boolean z = zzcceVar.zzk;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    agd.b("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = zzcdkVar.iterator();
                while (it.hasNext()) {
                    zzcdjVar2 = (zzcdj) it.next();
                    if (zzcdjVar2.f5205a == zzccfVar && str.equals(zzcdjVar2.zze())) {
                        zzcdjVar3 = zzcdjVar2;
                        break;
                    }
                }
                zzcdjVar3 = null;
            } else {
                Iterator it2 = zzcdkVar.iterator();
                while (it2.hasNext()) {
                    zzcdjVar2 = (zzcdj) it2.next();
                    if (zzcdjVar2.f5205a == zzccfVar) {
                        zzcdjVar3 = zzcdjVar2;
                        break;
                    }
                }
                zzcdjVar3 = null;
            }
            if (zzcdjVar3 != null) {
                agd.b("Precache task is already running.");
                return;
            }
            if (zzccfVar.zzj() == null) {
                agd.b("Precache requires a dependency provider.");
                return;
            }
            Integer a5 = a("player", map);
            if (a5 == null) {
                a5 = 0;
            }
            if (a2 != null) {
                zzccfVar.zzA(a2.intValue());
            }
            if (a3 != null) {
                zzccfVar.zzy(a3.intValue());
            }
            if (a4 != null) {
                zzccfVar.zzx(a4.intValue());
            }
            int intValue = a5.intValue();
            zzcdc zzcdcVar = zzccfVar.zzj().f18040b;
            if (intValue > 0) {
                int i2 = zzcceVar.zzg;
                int zzu = zzcbw.zzu();
                if (zzu < i2) {
                    zzcdrVar = new zzcea(zzccfVar, zzcceVar);
                } else {
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzn)).booleanValue()) {
                        zzu = zzcdx.zzi();
                    }
                    zzcdrVar = zzu < zzcceVar.zzb ? new zzcdx(zzccfVar, zzcceVar) : new zzcdv(zzccfVar);
                }
            } else {
                zzcdrVar = new zzcdu(zzccfVar);
            }
            new zzcdj(zzccfVar, zzcdrVar, str, strArr).zzb();
        } else {
            Iterator it3 = zzcdkVar.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    zzcdjVar = null;
                    break;
                }
                zzcdj zzcdjVar4 = (zzcdj) it3.next();
                if (zzcdjVar4.f5205a == zzccfVar) {
                    zzcdjVar = zzcdjVar4;
                    break;
                }
            }
            if (zzcdjVar == null) {
                agd.b("Precache must specify a source.");
                return;
            }
            zzcdrVar = zzcdjVar.f5206b;
        }
        Integer a6 = a("minBufferMs", map);
        if (a6 != null) {
            zzcdrVar.zzs(a6.intValue());
        }
        Integer a7 = a("maxBufferMs", map);
        if (a7 != null) {
            zzcdrVar.zzr(a7.intValue());
        }
        Integer a8 = a("bufferForPlaybackMs", map);
        if (a8 != null) {
            zzcdrVar.zzp(a8.intValue());
        }
        Integer a9 = a("bufferForPlaybackAfterRebufferMs", map);
        if (a9 != null) {
            zzcdrVar.zzq(a9.intValue());
        }
    }
}
