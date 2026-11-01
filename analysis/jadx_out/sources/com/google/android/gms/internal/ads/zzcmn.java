package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import g.awf;
import g.edt;
import g.ti;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcmn implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final CookieManager f5348a = ti.f20033a.k.a();

    public zzcmn(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        CookieManager cookieManager = this.f5348a;
        if (cookieManager == null) {
            return;
        }
        if (((String) map.get("clear")) == null) {
            String str = (String) map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            cookieManager.setCookie((String) edt.f15376a.f15379d.zza(zzbcn.zzaV), str);
            return;
        }
        String str2 = (String) edt.f15376a.f15379d.zza(zzbcn.zzaV);
        String cookie = cookieManager.getCookie(str2);
        if (cookie != null) {
            List zze = zzfxd.zzb(zzfwf.zzc(';')).zze(cookie);
            for (int i = 0; i < zze.size(); i++) {
                Iterator it = zzfxd.zzb(zzfwf.zzc('=')).zzc((String) zze.get(i)).iterator();
                it.getClass();
                if (!it.hasNext()) {
                    throw new IndexOutOfBoundsException(awf.b(0, "position (0) must be less than the number of elements that remained (", ")"));
                }
                cookieManager.setCookie(str2, String.valueOf((String) it.next()).concat(String.valueOf((String) edt.f15376a.f15379d.zza(zzbcn.zzaH))));
            }
        }
    }
}
