package g;

import android.content.pm.PackageInfo;
import android.net.Uri;
import android.webkit.WebView;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* loaded from: classes.dex */
public abstract class bdj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11318a = 0;

    static {
        Uri.parse("*");
        Uri.parse("");
    }

    public static PackageInfo b() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", null).invoke(null, null);
    }

    public static evf c(WebView webView) {
        WebViewProviderBoundaryInterface createWebView = fea.f16641a.createWebView(webView);
        evf evfVar = new evf(19, false);
        evfVar.f16224f = createWebView;
        return evfVar;
    }
}
