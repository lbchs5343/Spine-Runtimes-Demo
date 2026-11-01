package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.agd;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbik implements zzbjr {
    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        zzcfk zzcfkVar = (zzcfk) obj;
        String str = (String) map.get("action");
        if (!"tick".equals(str)) {
            if ("experiment".equals(str)) {
                String str2 = (String) map.get("value");
                if (TextUtils.isEmpty(str2)) {
                    agd.b("No value given for CSI experiment.");
                    return;
                } else {
                    zzcfkVar.zzm().zza().zzd("e", str2);
                    return;
                }
            }
            if ("extra".equals(str)) {
                String str3 = (String) map.get(abn.EXTRA_UA_APP_NAME);
                String str4 = (String) map.get("value");
                if (TextUtils.isEmpty(str4)) {
                    agd.b("No value given for CSI extra.");
                    return;
                } else if (TextUtils.isEmpty(str3)) {
                    agd.b("No name given for CSI extra.");
                    return;
                } else {
                    zzcfkVar.zzm().zza().zzd(str3, str4);
                    return;
                }
            }
            return;
        }
        String str5 = (String) map.get(TTDownloadField.TT_LABEL);
        String str6 = (String) map.get("start_label");
        String str7 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str5)) {
            agd.b("No label given for CSI tick.");
            return;
        }
        if (TextUtils.isEmpty(str7)) {
            agd.b("No timestamp given for CSI tick.");
            return;
        }
        try {
            long parseLong = Long.parseLong(str7);
            ti tiVar = ti.f20033a;
            tiVar.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            tiVar.v.getClass();
            long elapsedRealtime = (parseLong - currentTimeMillis) + SystemClock.elapsedRealtime();
            if (true == TextUtils.isEmpty(str6)) {
                str6 = "native:view_load";
            }
            zzcfkVar.zzm().zzc(str5, str6, elapsedRealtime);
        } catch (NumberFormatException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
