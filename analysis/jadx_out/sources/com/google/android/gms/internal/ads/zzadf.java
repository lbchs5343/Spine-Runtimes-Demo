package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzadf {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4102a = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zza = -1;
    public int zzb = -1;

    public final boolean b(String str) {
        Matcher matcher = f4102a.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String group = matcher.group(1);
            int i = zzen.zza;
            int parseInt = Integer.parseInt(group, 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.zza = parseInt;
            this.zzb = parseInt2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final boolean zza() {
        return (this.zza == -1 || this.zzb == -1) ? false : true;
    }

    public final boolean zzb(zzbd zzbdVar) {
        for (int i = 0; i < zzbdVar.zza(); i++) {
            zzbc zzb = zzbdVar.zzb(i);
            if (zzb instanceof zzagf) {
                zzagf zzagfVar = (zzagf) zzb;
                if ("iTunSMPB".equals(zzagfVar.zzb) && b(zzagfVar.zzc)) {
                    return true;
                }
            } else if (zzb instanceof zzago) {
                zzago zzagoVar = (zzago) zzb;
                if ("com.apple.iTunes".equals(zzagoVar.zza) && "iTunSMPB".equals(zzagoVar.zzb) && b(zzagoVar.zzc)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
