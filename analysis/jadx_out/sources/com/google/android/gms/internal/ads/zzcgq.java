package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import g.agd;
import g.esy;

/* loaded from: classes3.dex */
public final class zzcgq {

    /* renamed from: a, reason: collision with root package name */
    public final zzcgr f5265a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcgp f5266b;

    public zzcgq(zzcgr zzcgrVar, zzcgp zzcgpVar) {
        this.f5266b = zzcgpVar;
        this.f5265a = zzcgrVar;
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            agd.e("Click string is empty, not proceeding.");
            return "";
        }
        zzcgr zzcgrVar = this.f5265a;
        zzavc zzI = ((zzcgx) zzcgrVar).zzI();
        if (zzI == null) {
            agd.e("Signal utils is empty, ignoring.");
            return "";
        }
        zzaux zzc = zzI.zzc();
        if (zzc == null) {
            agd.e("Signals object is empty, ignoring.");
            return "";
        }
        if (zzcgrVar.getContext() != null) {
            return zzc.zze(zzcgrVar.getContext(), str, ((zzcgz) zzcgrVar).zzF(), zzcgrVar.zzi());
        }
        agd.e("Context is null, ignoring.");
        return "";
    }

    @JavascriptInterface
    public String getViewSignals() {
        zzcgr zzcgrVar = this.f5265a;
        zzavc zzI = ((zzcgx) zzcgrVar).zzI();
        if (zzI == null) {
            agd.e("Signal utils is empty, ignoring.");
            return "";
        }
        zzaux zzc = zzI.zzc();
        if (zzc == null) {
            agd.e("Signals object is empty, ignoring.");
            return "";
        }
        if (zzcgrVar.getContext() != null) {
            return zzc.zzh(zzcgrVar.getContext(), ((zzcgz) zzcgrVar).zzF(), zzcgrVar.zzi());
        }
        agd.e("Context is null, ignoring.");
        return "";
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            agd.b("URL is empty, ignoring message");
        } else {
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcgq zzcgqVar = zzcgq.this;
                    String str2 = str;
                    zzcgqVar.getClass();
                    Uri parse = Uri.parse(str2);
                    zzcfs zzcfsVar = ((v) zzcgqVar.f5266b.zza).an;
                    if (zzcfsVar == null) {
                        agd.d("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        zzcfsVar.zzj(parse);
                    }
                }
            });
        }
    }
}
