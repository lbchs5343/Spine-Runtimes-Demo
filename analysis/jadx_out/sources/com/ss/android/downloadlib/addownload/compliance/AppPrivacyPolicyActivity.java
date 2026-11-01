package com.ss.android.downloadlib.addownload.compliance;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.adhost.R;
import com.ss.android.downloadlib.mn.no;

/* loaded from: classes.dex */
public class AppPrivacyPolicyActivity extends Activity {

    /* renamed from: d, reason: collision with root package name */
    private WebView f9127d;
    private ImageView dq;
    private long ox;
    private long p;
    private String s;

    private void d() {
        this.dq = (ImageView) findViewById(R.id.iv_privacy_back);
        this.f9127d = (WebView) findViewById(R.id.privacy_webview);
        this.dq.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.AppPrivacyPolicyActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                mn.dq("lp_app_privacy_click_close", AppPrivacyPolicyActivity.this.p);
                AppPrivacyPolicyActivity.this.finish();
            }
        });
        WebSettings settings = this.f9127d.getSettings();
        settings.setDefaultFontSize(16);
        settings.setCacheMode(-1);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setMixedContentMode(0);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        this.f9127d.setWebViewClient(new WebViewClient() { // from class: com.ss.android.downloadlib.addownload.compliance.AppPrivacyPolicyActivity.2
            private boolean dq(Uri uri) {
                String scheme = uri.getScheme();
                return ("http".equals(scheme) || "https".equals(scheme)) ? false : true;
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                if (Build.VERSION.SDK_INT < 26) {
                    return super.onRenderProcessGone(webView, renderProcessGoneDetail);
                }
                if (renderProcessGoneDetail.didCrash()) {
                    no.dq("The WebView rendering process crashed!");
                    if (webView != null) {
                        ((ViewGroup) webView.getParent()).removeView(webView);
                        webView.destroy();
                    }
                    return true;
                }
                no.dq("System killed the WebView rendering process to reclaim memory. Recreating...");
                if (webView != null) {
                    ((ViewGroup) webView.getParent()).removeView(webView);
                    webView.destroy();
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                return dq(webResourceRequest.getUrl());
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return dq(Uri.parse(str));
            }
        });
        dq(this.f9127d);
        this.f9127d.setScrollBarStyle(0);
        this.f9127d.loadUrl(this.s);
    }

    public static void dq(Activity activity, long j) {
        Intent intent = new Intent(activity, (Class<?>) AppPrivacyPolicyActivity.class);
        intent.putExtra("app_info_id", j);
        activity.startActivity(intent);
    }

    private void dq(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    private boolean dq() {
        this.ox = getIntent().getLongExtra("app_info_id", 0L);
        com.ss.android.downloadlib.addownload.d.d dq = ox.dq().dq(this.ox);
        if (dq == null) {
            return false;
        }
        this.p = dq.f9143d;
        String str = dq.kk;
        this.s = str;
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        this.s = com.ss.android.downloadlib.addownload.no.kk().optString("ad_privacy_backup_url", "https://sf6-ttcdn-tos.pstatp.com/obj/ad-tetris-site/personal-privacy-page.html");
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        mn.dq("lp_app_privacy_click_close", this.p);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ttdownloader_activity_app_privacy_policy);
        if (dq()) {
            d();
        } else {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
        }
    }
}
