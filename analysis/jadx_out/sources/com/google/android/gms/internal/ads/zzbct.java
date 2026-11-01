package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

@Deprecated
/* loaded from: classes3.dex */
public final class zzbct {
    public static final void zza(zzbcs zzbcsVar, zzbcq zzbcqVar) {
        Context context = zzbcqVar.f4736d;
        String str = zzbcqVar.f4733a;
        if (context == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        zzbcsVar.zzd(zzbcqVar.f4736d, str, zzbcqVar.f4734b, zzbcqVar.f4735c);
    }
}
