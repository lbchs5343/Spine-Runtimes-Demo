package com.google.android.gms.internal.ads;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ss.android.download.api.constant.BaseConstants;
import g.agd;
import g.awf;
import g.cui;
import g.cwg;
import g.dtm;
import g.esy;
import g.fgw;
import g.fqq;
import g.fwy;
import g.fye;
import g.ti;
import g.tn;

/* loaded from: classes3.dex */
public final class zzcfj extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final zzcfk f5246a;

    public zzcfj(zzcfk zzcfkVar) {
        this.f5246a = zzcfkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Context b(WebView webView) {
        if (!(webView instanceof zzcfk)) {
            return webView.getContext();
        }
        zzcfk zzcfkVar = (zzcfk) webView;
        Activity zzi = zzcfkVar.zzi();
        return zzi != null ? zzi : zzcfkVar.getContext();
    }

    public final boolean c(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        cui zzd;
        zzcfk zzcfkVar = this.f5246a;
        if (zzcfkVar != null) {
            try {
                if (zzcfkVar.zzN() != null && zzcfkVar.zzN().zzd() != null && (zzd = zzcfkVar.zzN().zzd()) != null && !zzd.f()) {
                    zzd.e("window." + str + "('" + str3 + "')");
                    return false;
                }
            } catch (WindowManager.BadTokenException unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return true;
            }
        }
        esy esyVar = ti.f20033a.z;
        AlertDialog.Builder af = esy.af(context);
        af.setTitle(str2);
        if (!z) {
            af.setMessage(str3).setPositiveButton(R.string.ok, new fqq(jsResult, 1)).setNegativeButton(R.string.cancel, new fqq(jsResult, 0)).setOnCancelListener(new fye(2, jsResult)).create().show();
            return true;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setText(str3);
        EditText editText = new EditText(context);
        editText.setText(str4);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        af.setView(linearLayout).setPositiveButton(R.string.ok, new dtm(jsPromptResult, 5, editText)).setNegativeButton(R.string.cancel, new fgw(9, jsPromptResult)).setOnCancelListener(new fye(3, jsPromptResult)).create().show();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof zzcfk)) {
            agd.b("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        cwg zzL = ((zzcfk) webView).zzL();
        if (zzL == null) {
            agd.b("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzL.zzb();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String message = consoleMessage.message();
        String sourceId = consoleMessage.sourceId();
        String x = awf.x(tn.o("JS: ", message, " (", sourceId, ":"), consoleMessage.lineNumber(), ")");
        if (x.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = fwy.f17553a[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            agd.d(x);
        } else if (i == 2) {
            agd.b(x);
        } else if (i == 3 || i == 4) {
            agd.k(x);
        } else if (i != 5) {
            agd.k(x);
        } else {
            agd.c(x);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        zzcfk zzcfkVar = this.f5246a;
        if (zzcfkVar.zzH() != null) {
            webView2.setWebViewClient(zzcfkVar.zzH());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > BaseConstants.MB_VALUE) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(131072L, j4) + j, BaseConstants.MB_VALUE);
        } else {
            if (j2 <= Math.min(BaseConstants.MB_VALUE - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            ti tiVar = ti.f20033a;
            esy esyVar = tiVar.z;
            zzcfk zzcfkVar = this.f5246a;
            if (!esy.w(zzcfkVar.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                esy esyVar2 = tiVar.z;
                if (!esy.w(zzcfkVar.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        cwg zzL = this.f5246a.zzL();
        if (zzL == null) {
            agd.b("Could not get ad overlay when hiding custom view.");
        } else {
            zzL.zzg();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return c(b(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return c(b(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return c(b(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return c(b(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        cwg zzL = this.f5246a.zzL();
        if (zzL == null) {
            agd.b("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        Activity activity = zzL.s;
        FrameLayout frameLayout = new FrameLayout(activity);
        zzL.f13626f = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        zzL.f13626f.addView(view, -1, -1);
        activity.setContentView(zzL.f13626f);
        zzL.w = true;
        zzL.f13623c = customViewCallback;
        zzL.y = true;
        zzL.ab(i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
