package g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.google.android.gms.internal.ads.zzavd;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfol;
import com.google.android.gms.internal.ads.zzfpj;
import com.google.android.gms.internal.ads.zzfxd;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class doe extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14517a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14518b;

    public /* synthetic */ doe(int i, Object obj) {
        this.f14517a = i;
        this.f14518b = obj;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        switch (this.f14517a) {
            case 0:
                fyx fyxVar = (fyx) this.f14518b;
                if (fyxVar.webViewArgs.isAutoSetTitle()) {
                    fyxVar.setTitle(webView.getTitle());
                }
                if (fyxVar.webViewArgs.isAutoSetSubTitle()) {
                    fyxVar.setSubTitle(str);
                    break;
                }
                break;
            case 1:
                super.onPageFinished(webView, str);
                gfh gfhVar = (gfh) this.f14518b;
                if (((bid) gfhVar.f18019a).webViewArgs.isWrapable() && ((bid) gfhVar.f18019a).webViewArgs.isWrapChecked()) {
                    ((bid) gfhVar.f18019a).wrap(true);
                }
                if (((bid) gfhVar.f18019a).webViewArgs.isLineNumberable() && !((bid) gfhVar.f18019a).webViewArgs.isLineNumberChecked()) {
                    ((bid) gfhVar.f18019a).lineNumber(false);
                }
                if (((bid) gfhVar.f18019a).webViewArgs.isZoomable()) {
                    bid bidVar = (bid) gfhVar.f18019a;
                    bidVar.zoom(bidVar.webViewArgs.isZoomChecked());
                    break;
                }
                break;
            default:
                super.onPageFinished(webView, str);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        switch (this.f14517a) {
            case 3:
                gbf gbfVar = (gbf) this.f14518b;
                ejp ejpVar = gbfVar.f17854b;
                if (ejpVar != null) {
                    try {
                        ejpVar.zzf(zzfgq.zzd(1, null, null));
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                    }
                }
                ejp ejpVar2 = gbfVar.f17854b;
                if (ejpVar2 != null) {
                    try {
                        ejpVar2.zze(0);
                        break;
                    } catch (RemoteException e3) {
                        agd.g("#007 Could not call remote method.", e3);
                        return;
                    }
                }
                break;
            default:
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        switch (this.f14517a) {
            case 2:
                renderProcessGoneDetail.toString();
                String.valueOf(webView);
                zzfol zzfolVar = (zzfol) this.f14518b;
                if (zzfolVar.zza() == webView) {
                    zzfolVar.f8101c = new zzfpj(null);
                }
                webView.destroy();
                return true;
            default:
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        InputStream inputStream;
        switch (this.f14517a) {
            case 1:
                if (str.contains("file:///android_asset/")) {
                    try {
                        inputStream = ((bid) ((gfh) this.f14518b).f18019a).getAssets().open(Uri.parse(str.replaceFirst("file:///android_asset/", "")).getPath(), 2);
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    if (inputStream != null) {
                        break;
                    } else {
                        break;
                    }
                }
                inputStream = null;
                if (inputStream != null) {
                }
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        switch (this.f14517a) {
            case 3:
                gbf gbfVar = (gbf) this.f14518b;
                Context context = gbfVar.f17856d;
                int i = 0;
                if (str.startsWith(gbfVar.zzq())) {
                    return false;
                }
                if (str.startsWith("gmsg://noAdLoaded")) {
                    ejp ejpVar = gbfVar.f17854b;
                    if (ejpVar != null) {
                        try {
                            ejpVar.zzf(zzfgq.zzd(3, null, null));
                        } catch (RemoteException e2) {
                            agd.g("#007 Could not call remote method.", e2);
                        }
                    }
                    ejp ejpVar2 = gbfVar.f17854b;
                    if (ejpVar2 != null) {
                        try {
                            ejpVar2.zze(3);
                        } catch (RemoteException e3) {
                            agd.g("#007 Could not call remote method.", e3);
                        }
                    }
                    gbfVar.j(0);
                } else if (str.startsWith("gmsg://scriptLoadFailed")) {
                    ejp ejpVar3 = gbfVar.f17854b;
                    if (ejpVar3 != null) {
                        try {
                            ejpVar3.zzf(zzfgq.zzd(1, null, null));
                        } catch (RemoteException e4) {
                            agd.g("#007 Could not call remote method.", e4);
                        }
                    }
                    ejp ejpVar4 = gbfVar.f17854b;
                    if (ejpVar4 != null) {
                        try {
                            ejpVar4.zze(0);
                        } catch (RemoteException e5) {
                            agd.g("#007 Could not call remote method.", e5);
                        }
                    }
                    gbfVar.j(0);
                } else if (str.startsWith("gmsg://adResized")) {
                    ejp ejpVar5 = gbfVar.f17854b;
                    if (ejpVar5 != null) {
                        try {
                            ejpVar5.zzi();
                        } catch (RemoteException e6) {
                            agd.g("#007 Could not call remote method.", e6);
                        }
                    }
                    String queryParameter = Uri.parse(str).getQueryParameter(MediaFormat.KEY_HEIGHT);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        try {
                            mx mxVar = cbv.f12612a.f12615d;
                            i = mx.k(context, Integer.parseInt(queryParameter));
                        } catch (NumberFormatException unused) {
                        }
                    }
                    gbfVar.j(i);
                } else if (!str.startsWith("gmsg://")) {
                    ejp ejpVar6 = gbfVar.f17854b;
                    if (ejpVar6 != null) {
                        try {
                            ejpVar6.zzc();
                            gbfVar.f17854b.zzh();
                        } catch (RemoteException e7) {
                            agd.g("#007 Could not call remote method.", e7);
                        }
                    }
                    if (gbfVar.f17853a != null) {
                        Uri parse = Uri.parse(str);
                        try {
                            parse = gbfVar.f17853a.zza(parse, context, null, null);
                        } catch (zzavd unused2) {
                            zzfxd zzfxdVar = agd.f10175a;
                        }
                        str = parse.toString();
                    }
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    context.startActivity(intent);
                }
                return true;
            default:
                return super.shouldOverrideUrlLoading(webView, str);
        }
    }
}
