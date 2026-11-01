package g;

import android.net.Uri;
import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzavc;
import com.google.android.gms.internal.ads.zzavd;
import com.google.android.gms.internal.ads.zzbdz;
import com.google.android.gms.internal.ads.zzfxd;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class frb extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gbf f17273a;

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        gbf gbfVar = this.f17273a;
        try {
            gbfVar.f17853a = (zzavc) gbfVar.f17855c.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        } catch (TimeoutException unused2) {
            zzfxd zzfxdVar2 = agd.f10175a;
        }
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) zzbdz.zzd.zze());
        daw dawVar = gbfVar.f17857e;
        builder.appendQueryParameter("query", (String) dawVar.f13883b);
        builder.appendQueryParameter("pubId", (String) dawVar.f13887f);
        builder.appendQueryParameter("mappver", (String) dawVar.f13888g);
        TreeMap treeMap = (TreeMap) dawVar.f13882a;
        for (String str : treeMap.keySet()) {
            builder.appendQueryParameter(str, (String) treeMap.get(str));
        }
        Uri build = builder.build();
        zzavc zzavcVar = gbfVar.f17853a;
        if (zzavcVar != null) {
            try {
                build = zzavcVar.zzb(build, gbfVar.f17856d);
            } catch (zzavd unused3) {
                zzfxd zzfxdVar3 = agd.f10175a;
            }
        }
        return awf.i(gbfVar.zzq(), "#", build.getEncodedQuery());
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        WebView webView = this.f17273a.i;
        if (webView == null || str == null) {
            return;
        }
        webView.loadUrl(str);
    }
}
