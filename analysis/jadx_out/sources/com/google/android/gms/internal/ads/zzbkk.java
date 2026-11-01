package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import g.abn;
import g.agd;
import g.esy;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbkk implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4857a;

    public zzbkk(Context context) {
        this.f4857a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        if (!map.containsKey("text") || TextUtils.isEmpty((CharSequence) map.get("text"))) {
            return;
        }
        agd.e("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get("text"))));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", (String) map.get("text"));
        if (map.containsKey(abn.EXTRA_TITLE)) {
            intent.putExtra("android.intent.extra.TITLE", (String) map.get(abn.EXTRA_TITLE));
        }
        try {
            esy esyVar = ti.f20033a.z;
            esy.ad(this.f4857a, intent);
        } catch (RuntimeException e2) {
            zzfxd zzfxdVar = agd.f10175a;
            ti.f20033a.f20034ab.zzw(e2, "ShareSheetGmsgHandler.onGmsg");
        }
    }
}
