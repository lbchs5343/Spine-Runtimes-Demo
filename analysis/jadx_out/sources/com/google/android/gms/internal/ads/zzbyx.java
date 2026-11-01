package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import g.awf;
import g.edt;
import g.esy;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbyx {
    public static Uri a(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i = indexOf + 1;
        StringBuilder sb = new StringBuilder(str.substring(0, i));
        awf.y(sb, str2, "=", str3, "&");
        sb.append(str.substring(i));
        return Uri.parse(sb.toString());
    }

    public static String b(Context context, String str) {
        ti tiVar = ti.f20033a;
        String zzd = tiVar.f20039f.zzd(context);
        String zzb = tiVar.f20039f.zzb(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(zzd)) {
            str = a(str, "gmp_app_id", zzd).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(zzb)) ? str : a(str, "fbs_aiid", zzb).toString();
    }

    public static String zzb(Uri uri, Context context, Map map) {
        String zza;
        ti tiVar = ti.f20033a;
        if (tiVar.f20039f.zzp(context) && (zza = tiVar.f20039f.zza(context)) != null) {
            zzbce zzbceVar = zzbcn.zzap;
            edt edtVar = edt.f15376a;
            String str = (String) edtVar.f15379d.zza(zzbceVar);
            String uri2 = uri.toString();
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzao)).booleanValue() && uri2.contains(str)) {
                tiVar.f20039f.zzj(context, zza, (Map) map.get("_ac"));
                return b(context, uri2).replace(str, zza);
            }
            if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzan)).booleanValue()) {
                    String uri3 = a(b(context, uri2), "fbs_aeid", zza).toString();
                    tiVar.f20039f.zzj(context, zza, (Map) map.get("_ac"));
                    return uri3;
                }
            }
            return uri2;
        }
        return uri.toString();
    }

    public static String zzc(String str, Context context, boolean z, Map map) {
        String zza;
        zzbce zzbceVar = zzbcn.zzaw;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() && !z) {
            return str;
        }
        ti tiVar = ti.f20033a;
        zzbyv zzbyvVar = tiVar.f20039f;
        esy esyVar = tiVar.z;
        zzbyv zzbyvVar2 = tiVar.f20039f;
        if (!zzbyvVar.zzp(context) || TextUtils.isEmpty(str) || (zza = zzbyvVar2.zza(context)) == null) {
            return str;
        }
        String str2 = (String) zzbclVar2.zza(zzbcn.zzap);
        if (((Boolean) zzbclVar2.zza(zzbcn.zzao)).booleanValue() && str.contains(str2)) {
            esyVar.getClass();
            if (esy.ak(str, esyVar.f16122f, (String) edtVar.f15379d.zza(zzbcn.zzal))) {
                zzbyvVar2.zzj(context, zza, (Map) map.get("_ac"));
                return b(context, str).replace(str2, zza);
            }
            esyVar.getClass();
            if (!esy.ak(str, esyVar.i, (String) edtVar.f15379d.zza(zzbcn.zzam))) {
                return str;
            }
            zzbyvVar2.zzk(context, zza, (Map) map.get("_ai"));
            return b(context, str).replace(str2, zza);
        }
        if (str.contains("fbs_aeid") || ((Boolean) zzbclVar2.zza(zzbcn.zzan)).booleanValue()) {
            return str;
        }
        esyVar.getClass();
        if (esy.ak(str, esyVar.f16122f, (String) edtVar.f15379d.zza(zzbcn.zzal))) {
            zzbyvVar2.zzj(context, zza, (Map) map.get("_ac"));
            return a(b(context, str), "fbs_aeid", zza).toString();
        }
        esyVar.getClass();
        if (!esy.ak(str, esyVar.i, (String) edtVar.f15379d.zza(zzbcn.zzam))) {
            return str;
        }
        zzbyvVar2.zzk(context, zza, (Map) map.get("_ai"));
        return a(b(context, str), "fbs_aeid", zza).toString();
    }
}
