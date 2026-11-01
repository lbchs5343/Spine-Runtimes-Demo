package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import g.edt;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzebx implements zzfiv {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f6784a = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);

    /* renamed from: b, reason: collision with root package name */
    public final String f6785b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfka f6786c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfkl f6787d;

    public zzebx(String str, zzfkl zzfklVar, zzfka zzfkaVar) {
        this.f6785b = str;
        this.f6787d = zzfklVar;
        this.f6786c = zzfkaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfiv
    public final Object zza(Object obj) throws Exception {
        zzdwn zzdwnVar;
        String str;
        String str2;
        zzebw zzebwVar = (zzebw) obj;
        int optInt = zzebwVar.f6782a.optInt("http_timeout_millis", 60000);
        zzbvz zzbvzVar = zzebwVar.f6783b;
        int zza = zzbvzVar.zza();
        zzfka zzfkaVar = this.f6786c;
        zzfkl zzfklVar = this.f6787d;
        if (zza != -2) {
            if (zzbvzVar.zza() == 1) {
                if (zzbvzVar.zzh() != null) {
                    str = TextUtils.join(", ", zzbvzVar.zzh());
                    agd.d(str);
                } else {
                    str = "";
                }
                zzdwnVar = new zzdwn(2, "Error building request URL: ".concat(String.valueOf(str)));
            } else {
                zzdwnVar = new zzdwn(1);
            }
            zzfkaVar.zzh(zzdwnVar);
            zzfkaVar.zzg(false);
            zzfklVar.zza(zzfkaVar);
            throw zzdwnVar;
        }
        HashMap hashMap = new HashMap();
        if (zzbvzVar.zzj()) {
            String str3 = this.f6785b;
            if (!TextUtils.isEmpty(str3)) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaW)).booleanValue()) {
                    if (TextUtils.isEmpty(str3)) {
                        str2 = "";
                    } else {
                        Matcher matcher = f6784a.matcher(str3);
                        str2 = "";
                        while (matcher.find()) {
                            String group = matcher.group(1);
                            if (group != null) {
                                Locale locale = Locale.ROOT;
                                if (group.toLowerCase(locale).startsWith("id=") || group.toLowerCase(locale).startsWith("ide=")) {
                                    if (!TextUtils.isEmpty(str2)) {
                                        str2 = str2.concat("; ");
                                    }
                                    str2 = str2.concat(group);
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        hashMap.put("Cookie", str2);
                    }
                } else {
                    hashMap.put("Cookie", str3);
                }
            }
        }
        if (zzbvzVar.zzk()) {
            zzeby.zza(hashMap, zzebwVar.f6782a);
        }
        String zzf = (zzbvzVar == null || TextUtils.isEmpty(zzbvzVar.zzf())) ? "" : zzbvzVar.zzf();
        zzfkaVar.zzg(true);
        zzfklVar.zza(zzfkaVar);
        return new zzebs(zzbvzVar.zzg(), optInt, hashMap, zzf.getBytes(StandardCharsets.UTF_8), "", zzbvzVar.zzk());
    }
}
