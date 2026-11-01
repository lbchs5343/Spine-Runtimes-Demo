package g;

import android.content.Context;
import android.content.Intent;
import android.webkit.DownloadListener;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class rn implements DownloadListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f19914a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gc f19915b;

    public rn(gc gcVar, Context context) {
        this.f19915b = gcVar;
        this.f19914a = context;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        DownloadListener downloadListener;
        DownloadListener downloadListener2;
        Context context = this.f19914a;
        try {
            context.startActivity(Intent.parseUri(str, 1));
        } catch (Exception unused) {
            gm.f(context, R.string.webview_open_download_link_fail);
        }
        gc gcVar = this.f19915b;
        downloadListener = gcVar.downloadListener;
        if (downloadListener != null) {
            downloadListener2 = gcVar.downloadListener;
            downloadListener2.onDownloadStart(str, str2, str3, str4, j);
        }
    }
}
