package g;

import android.app.AlertDialog;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzcfz;
import com.google.android.gms.internal.ads.zzfnh;
import java.util.Timer;
import java.util.TimerTask;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* loaded from: classes3.dex */
public final class aqc extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f10645a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10646b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f10647c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Timer f10648d;

    public aqc(AlertDialog alertDialog, Timer timer, cwg cwgVar) {
        this.f10645a = alertDialog;
        this.f10648d = timer;
        this.f10646b = cwgVar;
    }

    public aqc(zzfnh zzfnhVar, zzcfz zzcfzVar, Timer timer) {
        this.f10646b = zzcfzVar;
        this.f10648d = timer;
        this.f10645a = zzfnhVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        int i = this.f10647c;
        Timer timer = this.f10648d;
        Object obj = this.f10646b;
        Object obj2 = this.f10645a;
        switch (i) {
            case 0:
                ((AlertDialog) obj2).dismiss();
                timer.cancel();
                cwg cwgVar = (cwg) obj;
                if (cwgVar != null) {
                    cwgVar.zzb();
                    return;
                }
                return;
            default:
                WebView webView = ((zzfnh) obj2).f8057c;
                int i2 = bdj.f11318a;
                if (!gvy.f18848a.c()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                ((WebViewProviderBoundaryInterface) bdj.c(webView).f16224f).removeWebMessageListener("omidJsSessionService");
                ((zzcfz) obj).zza(true);
                timer.cancel();
                return;
        }
    }
}
