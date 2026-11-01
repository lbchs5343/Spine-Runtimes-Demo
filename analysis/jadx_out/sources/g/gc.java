package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public abstract class gc extends WebView {
    private DownloadListener downloadListener;
    private boolean isShowOverrideFailTips;
    private ProgressBar progressBar;
    private String uaAppName;
    private WebChromeClient webChromeClient;
    private WebViewClient webViewClient;

    public gc(Context context) {
        super(context);
        this.isShowOverrideFailTips = true;
        f(context);
    }

    public gc(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isShowOverrideFailTips = true;
        f(context);
    }

    public gc(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isShowOverrideFailTips = true;
        f(context);
    }

    public gc(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i, z);
        this.isShowOverrideFailTips = true;
        f(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgress(int i) {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            progressBar.setProgress(i);
        }
    }

    private void setUserAgent(Context context) {
        String str;
        String str2;
        fxe.d dVar;
        fxe p = atf.g(context).p();
        if (p == null || (dVar = p.net) == null) {
            str = null;
            str2 = null;
        } else {
            str = dVar.ua;
            str2 = acw.al(context, dVar.webUASuffix, TextUtils.isEmpty(this.uaAppName) ? context.getString(R.string.app_name_ua) : this.uaAppName);
        }
        if (TextUtils.isEmpty(str)) {
            try {
                str = acw.an(context);
            } catch (Exception e2) {
                erl.ac(e2);
            }
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        String concat = str.concat(str2);
        if (TextUtils.isEmpty(concat)) {
            return;
        }
        getSettings().setUserAgentString(concat);
    }

    public gc bindProgressBar(ProgressBar progressBar) {
        this.progressBar = progressBar;
        return this;
    }

    public final void f(Context context) {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDomStorageEnabled(true);
        setUserAgent(context);
        super.setWebChromeClient(new fjy(this, 1));
        super.setWebViewClient(new cxe(this, context));
        super.setDownloadListener(new rn(this, context));
    }

    public String getUAAppName() {
        return this.uaAppName;
    }

    public void hideLoadingProgress() {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    public boolean isShowOverrideFailTips() {
        return this.isShowOverrideFailTips;
    }

    @Override // android.webkit.WebView
    public void setDownloadListener(DownloadListener downloadListener) {
        this.downloadListener = downloadListener;
    }

    @Override // android.webkit.WebView, android.view.View
    public void setOverScrollMode(int i) {
        try {
            super.setOverScrollMode(i);
        } catch (Exception e2) {
            if ((e2 instanceof PackageManager.NameNotFoundException) || (dyd.bp(19) && (e2 instanceof ReflectiveOperationException))) {
                erl.ac(e2);
                return;
            }
            String stackTraceString = Log.getStackTraceString(e2);
            if (stackTraceString != null && stackTraceString.contains("No WebView installed")) {
                erl.ac(e2);
                return;
            }
            if (e2.getMessage() != null && (e2.getMessage().contains("webview") || e2.getMessage().contains("WebView"))) {
                erl.ac(e2);
            } else {
                if (e2.getMessage() == null || !e2.getMessage().contains("AssetManager has been closed")) {
                    throw e2;
                }
                erl.ac(e2);
            }
        } catch (UnsatisfiedLinkError e3) {
            erl.ac(e3);
        }
    }

    public gc setShowOverrideFailTips(boolean z) {
        this.isShowOverrideFailTips = z;
        return this;
    }

    public gc setUAAppName(String str) {
        this.uaAppName = str;
        setUserAgent(getContext());
        return this;
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.webChromeClient = webChromeClient;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        this.webViewClient = webViewClient;
    }

    public void showLoadingProgress() {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
    }

    public void unBindProgressBar() {
        this.progressBar = null;
    }
}
