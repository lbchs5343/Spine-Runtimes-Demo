package com.google.android.gms.internal.ads;

import android.view.View;
import android.webkit.WebView;
import g.aqc;
import g.bdj;
import g.bff;
import g.dcq;
import g.eap;
import g.evf;
import g.fpc;
import g.gvy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Timer;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;
import org.chromium.support_lib_boundary.util.Features;

/* loaded from: classes3.dex */
public final class zzfnh {

    /* renamed from: b, reason: collision with root package name */
    public final zzfnj f8056b;

    /* renamed from: c, reason: collision with root package name */
    public final WebView f8057c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f8058d = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzfnv f8055a = new zzfnv();

    public zzfnh(zzfnj zzfnjVar, WebView webView) {
        zzfor.zza();
        this.f8056b = zzfnjVar;
        this.f8057c = webView;
        if (!bff.u(Features.WEB_MESSAGE_LISTENER)) {
            throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
        }
        int i = bdj.f11318a;
        fpc fpcVar = gvy.f18848a;
        if (!fpcVar.c()) {
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
        ((WebViewProviderBoundaryInterface) bdj.c(webView).f16224f).removeWebMessageListener("omidJsSessionService");
        eap eapVar = new eap(3, this);
        HashSet hashSet = new HashSet(Arrays.asList("*"));
        if (!fpcVar.c()) {
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
        evf c2 = bdj.c(webView);
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        WebViewProviderBoundaryInterface webViewProviderBoundaryInterface = (WebViewProviderBoundaryInterface) c2.f16224f;
        dcq dcqVar = new dcq(19, false);
        dcqVar.f13976f = eapVar;
        webViewProviderBoundaryInterface.addWebMessageListener("omidJsSessionService", strArr, BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(dcqVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* bridge */ /* synthetic */ void e(zzfnh zzfnhVar, String str) {
        zzfnb zzfnbVar = zzfnb.DEFINED_BY_JAVASCRIPT;
        zzfne zzfneVar = zzfne.DEFINED_BY_JAVASCRIPT;
        zzfni zzfniVar = zzfni.JAVASCRIPT;
        zzfmx zza = zzfmx.zza(zzfnbVar, zzfneVar, zzfniVar, zzfniVar, false);
        zzfnj zzfnjVar = zzfnhVar.f8056b;
        WebView webView = zzfnhVar.f8057c;
        zzfna zzfnaVar = new zzfna(zza, zzfmy.zzb(zzfnjVar, webView, null, null), str);
        zzfnhVar.f8058d.put(str, zzfnaVar);
        zzfnaVar.zzd(webView);
        for (zzfnu zzfnuVar : zzfnhVar.f8055a.zza()) {
            zzfnaVar.zzb((View) zzfnuVar.zzb().get(), zzfnuVar.zza(), zzfnuVar.zzc());
        }
        zzfnaVar.zze();
    }

    public static zzfnh zza(zzfnj zzfnjVar, WebView webView, boolean z) {
        return new zzfnh(zzfnjVar, webView);
    }

    public final void zze(View view, zzfnd zzfndVar, String str) {
        Iterator it = this.f8058d.values().iterator();
        while (it.hasNext()) {
            ((zzfmw) it.next()).zzb(view, zzfndVar, "Ad overlay");
        }
        this.f8055a.zzb(view, zzfndVar, "Ad overlay");
    }

    public final void zzf(zzcfz zzcfzVar) {
        Iterator it = this.f8058d.values().iterator();
        while (it.hasNext()) {
            ((zzfmw) it.next()).zzc();
        }
        Timer timer = new Timer();
        timer.schedule(new aqc(this, zzcfzVar, timer), 1000L);
    }
}
