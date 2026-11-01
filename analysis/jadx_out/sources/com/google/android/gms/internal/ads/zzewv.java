package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import g.edt;

/* loaded from: classes3.dex */
public final class zzewv implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7650a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7651b;

    public /* synthetic */ zzewv(String str, int i) {
        this.f7650a = str;
        this.f7651b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkb)).booleanValue()) {
            String str = this.f7650a;
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("topics", str);
            }
            int i = this.f7651b;
            if (i != -1) {
                bundle.putInt("atps", i);
            }
        }
    }
}
