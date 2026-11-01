package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.webkit.WebView;
import g.aku;
import g.doe;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfol extends zzfoh {

    /* renamed from: f, reason: collision with root package name */
    public WebView f8103f;

    /* renamed from: g, reason: collision with root package name */
    public Long f8104g;
    public final Map h;

    public zzfol(String str, Map map, String str2) {
        super(str);
        this.f8104g = null;
        this.h = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfoh
    public final void zzc() {
        super.zzc();
        new Handler().postDelayed(new aku(this), Math.max(4000 - (this.f8104g == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f8104g.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f8103f = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfoh
    public final void zzi(zzfna zzfnaVar, zzfmy zzfmyVar) {
        JSONObject jSONObject = new JSONObject();
        Map zzi = zzfmyVar.zzi();
        Iterator it = zzi.keySet().iterator();
        if (it.hasNext()) {
            throw null;
        }
        e(zzfnaVar, zzfmyVar, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzfoh
    public final void zzo() {
        WebView webView = new WebView(zzfnw.zzb().zza());
        this.f8103f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f8103f.getSettings().setAllowContentAccess(false);
        this.f8103f.getSettings().setAllowFileAccess(false);
        this.f8103f.setWebViewClient(new doe(2, this));
        this.f8101c = new zzfpj(this.f8103f);
        zzfny.zzk(this.f8103f, null);
        Map map = this.h;
        Iterator it = map.keySet().iterator();
        if (it.hasNext()) {
            throw null;
        }
        this.f8104g = Long.valueOf(System.nanoTime());
    }
}
