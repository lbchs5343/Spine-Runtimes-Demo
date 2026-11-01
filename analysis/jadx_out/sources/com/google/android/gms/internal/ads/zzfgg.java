package com.google.android.gms.internal.ads;

import g.edt;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes3.dex */
public final class zzfgg {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f7877a;

    public zzfgg() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) edt.f15376a.f15379d.zza(zzbcn.zzgJ));
        } catch (PatternSyntaxException unused) {
            pattern = null;
        }
        this.f7877a = pattern;
    }

    public final String zza(String str) {
        Pattern pattern = this.f7877a;
        if (pattern == null || str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }
}
