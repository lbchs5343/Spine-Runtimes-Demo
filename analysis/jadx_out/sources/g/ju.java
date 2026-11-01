package g;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbkm;
import com.google.android.gms.internal.ads.zzges;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class ju extends zzbkm {

    /* renamed from: a, reason: collision with root package name */
    public WebViewClient f19510a;

    /* renamed from: b, reason: collision with root package name */
    public final WebView f19511b;

    /* renamed from: c, reason: collision with root package name */
    public final bsn f19512c;

    /* renamed from: d, reason: collision with root package name */
    public final zzges f19513d;

    public ju(WebView webView, bsn bsnVar, zzges zzgesVar) {
        this.f19511b = webView;
        this.f19512c = bsnVar;
        this.f19513d = zzgesVar;
    }

    public final void e() {
        this.f19511b.evaluateJavascript(String.format(Locale.getDefault(), (String) edt.f15376a.f15379d.zza(zzbcn.zzjr), this.f19512c.g()), null);
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final WebViewClient getDelegate() {
        return this.f19510a;
    }

    @Override // com.google.android.gms.internal.ads.zzbkm, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        e();
        super.onPageFinished(webView, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbkm, android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        e();
        super.onPageStarted(webView, str, bitmap);
    }
}
