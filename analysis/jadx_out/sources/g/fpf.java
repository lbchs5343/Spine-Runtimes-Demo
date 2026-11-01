package g;

import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzazi;
import com.google.android.gms.internal.ads.zzazl;
import g.agd;
import g.fpf;
import g.ti;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class fpf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebView f17193a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f17194b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzazl f17195c;

    /* renamed from: d, reason: collision with root package name */
    public final zzazi f17196d = new ValueCallback() { // from class: com.google.android.gms.internal.ads.zzazi
        @Override // android.webkit.ValueCallback
        public final void onReceiveValue(Object obj) {
            fpf fpfVar = fpf.this;
            zzazl zzazlVar = fpfVar.f17195c;
            zzazb zzazbVar = fpfVar.f17197e;
            WebView webView = fpfVar.f17193a;
            String str = (String) obj;
            boolean z = fpfVar.f17194b;
            zzazlVar.getClass();
            zzazbVar.zze();
            try {
                if (!TextUtils.isEmpty(str)) {
                    String optString = new JSONObject(str).optString("text");
                    if (zzazlVar.m || TextUtils.isEmpty(webView.getTitle())) {
                        zzazbVar.zzi(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                    } else {
                        zzazbVar.zzi(webView.getTitle() + "\n" + optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                    }
                }
                if (zzazbVar.zzl()) {
                    zzazlVar.h.zzb(zzazbVar);
                }
            } catch (JSONException unused) {
                agd.c("Json string may be malformed.");
            } catch (Throwable th) {
                zzfxd zzfxdVar = agd.f10175a;
                ti.f20033a.f20034ab.zzw(th, "ContentFetchTask.processWebViewContent");
            }
        }
    };

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzazb f17197e;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzazi] */
    public fpf(zzazl zzazlVar, zzazb zzazbVar, WebView webView, boolean z) {
        this.f17197e = zzazbVar;
        this.f17193a = webView;
        this.f17194b = z;
        this.f17195c = zzazlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzazi zzaziVar = this.f17196d;
        WebView webView = this.f17193a;
        if (webView.getSettings().getJavaScriptEnabled()) {
            try {
                webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", zzaziVar);
            } catch (Throwable unused) {
                zzaziVar.onReceiveValue("");
            }
        }
    }
}
