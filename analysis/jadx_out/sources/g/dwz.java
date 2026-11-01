package g;

import android.os.Build;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.util.Features;

/* loaded from: classes3.dex */
public final /* synthetic */ class dwz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14992a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ju f14993b;

    public /* synthetic */ dwz(ju juVar, int i) {
        this.f14992a = i;
        this.f14993b = juVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebViewClient webViewClient;
        int i = this.f14992a;
        ju juVar = this.f14993b;
        switch (i) {
            case 0:
                WebView webView = juVar.f19511b;
                try {
                    esy esyVar = ti.f20033a.z;
                    if (Build.VERSION.SDK_INT < 26) {
                        if (bff.u(Features.GET_WEB_VIEW_CLIENT)) {
                            try {
                                int i2 = bdj.f11318a;
                                fpc fpcVar = gvy.f18851d;
                                if (fpcVar.b()) {
                                    webViewClient = ze.a(webView);
                                } else {
                                    if (!fpcVar.c()) {
                                        throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                                    }
                                    webViewClient = ((WebViewProviderBoundaryInterface) bdj.c(webView).f16224f).getWebViewClient();
                                }
                            } catch (RuntimeException e2) {
                                ti.f20033a.f20034ab.zzw(e2, "AdUtil.getWebViewClient");
                            }
                        }
                        throw new IllegalStateException("getWebViewClient not supported");
                    }
                    webViewClient = webView.getWebViewClient();
                    if (webViewClient == juVar) {
                        return;
                    }
                    if (webViewClient != null) {
                        juVar.f19510a = webViewClient;
                    }
                    webView.setWebViewClient(juVar);
                    juVar.e();
                    return;
                } catch (IllegalStateException unused) {
                    return;
                }
            default:
                juVar.f19513d.execute(new dwz(juVar, 0));
                return;
        }
    }
}
