package com.google.android.gms.internal.ads;

import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzaqm {
    public static long zza(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e2) {
            if ("0".equals(str) || "-1".equals(str)) {
                zzaqb.zzd("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzaqb.zzc(e2, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    public static zzaoy zzb(zzapl zzaplVar) {
        long j;
        long j2;
        long j3;
        boolean z;
        long j4;
        long j5;
        long j6;
        long j7;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzaplVar.zzc;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        long zza = str != null ? zza(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z = false;
            j2 = 0;
            j3 = 0;
            while (i < split.length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j3 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
                i++;
            }
            j = 0;
            i = 1;
        } else {
            j = 0;
            j2 = 0;
            j3 = 0;
            z = false;
        }
        String str3 = (String) map.get("Expires");
        long zza2 = str3 != null ? zza(str3) : j;
        String str4 = (String) map.get("Last-Modified");
        if (str4 != null) {
            j4 = currentTimeMillis;
            j5 = zza(str4);
        } else {
            j4 = currentTimeMillis;
            j5 = j;
        }
        String str5 = (String) map.get("ETag");
        if (i != 0) {
            long j8 = (j3 * 1000) + j4;
            if (z) {
                j7 = j8;
            } else {
                Long.signum(j2);
                j7 = (j2 * 1000) + j8;
            }
            j6 = j8;
        } else {
            j6 = (zza <= j || zza2 < zza) ? j : (zza2 - zza) + j4;
            j7 = j6;
        }
        zzaoy zzaoyVar = new zzaoy();
        zzaoyVar.zza = zzaplVar.zzb;
        zzaoyVar.zzb = str5;
        zzaoyVar.zzf = j6;
        zzaoyVar.zze = j7;
        zzaoyVar.zzc = zza;
        zzaoyVar.zzd = j5;
        zzaoyVar.zzg = map;
        zzaoyVar.zzh = zzaplVar.zzd;
        return zzaoyVar;
    }
}
