package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import g.agd;
import g.bvv;
import g.edt;
import g.esy;
import g.ti;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@TargetApi(21)
/* loaded from: classes3.dex */
public final class zzcgt extends zzcgs {
    public zzcgt(zzcfk zzcfkVar, zzbbl zzbblVar, boolean z, zzeea zzeeaVar) {
        super(zzcfkVar, zzbblVar, z, zzeeaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        String str;
        if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
            String uri = webResourceRequest.getUrl().toString();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            if (!(webView instanceof zzcfk)) {
                agd.b("Tried to intercept request from a WebView that wasn't an AdWebView.");
                return null;
            }
            zzcfk zzcfkVar = (zzcfk) webView;
            zzbyh zzbyhVar = this.f5252e;
            if (zzbyhVar != null) {
                zzbyhVar.zzd(uri, requestHeaders, 1);
            }
            zzfsb.zza();
            zzfsh zzfshVar = zzfsh.zza;
            if (!"mraid.js".equalsIgnoreCase(new File(uri).getName())) {
                if (requestHeaders == null) {
                    requestHeaders = Collections.EMPTY_MAP;
                }
                return aj(uri, requestHeaders);
            }
            if (zzcfkVar.zzN() != null) {
                zzcfkVar.zzN().zzG();
            }
            if (zzcfkVar.zzO().zzi()) {
                str = (String) edt.f15376a.f15379d.zza(zzbcn.zzX);
            } else if (zzcfkVar.zzaF()) {
                str = (String) edt.f15376a.f15379d.zza(zzbcn.zzW);
            } else {
                str = (String) edt.f15376a.f15379d.zza(zzbcn.zzV);
            }
            ti tiVar = ti.f20033a;
            esy esyVar = tiVar.z;
            Context context = zzcfkVar.getContext();
            String str2 = zzcfkVar.zzn().afmaVersion;
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("User-Agent", tiVar.z.at(context, str2));
                hashMap.put("Cache-Control", "max-stale=3600");
                new bvv(context);
                String str3 = (String) bvv.c(0, str, hashMap, null).get(60L, TimeUnit.SECONDS);
                if (str3 != null) {
                    return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
                }
            } catch (IOException | InterruptedException | ExecutionException | TimeoutException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
        return null;
    }
}
