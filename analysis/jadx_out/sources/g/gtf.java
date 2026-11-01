package g;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final /* synthetic */ class gtf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18718a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f18719b;

    public /* synthetic */ gtf(Context context, int i) {
        this.f18718a = i;
        this.f18719b = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        azt aztVar;
        switch (this.f18718a) {
            case 0:
                int i = Build.VERSION.SDK_INT;
                if (i >= 33) {
                    Context context = this.f18719b;
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (i < 33) {
                            aztVar = dkn.f14318c;
                            break;
                        } else {
                            Object n = dkn.n();
                            if (n != null) {
                                aztVar = new azt(new cdt(bgl.a(n)));
                                if (aztVar.f11131b.isEmpty()) {
                                    String ak = egh.ak(context);
                                    Object systemService = context.getSystemService("locale");
                                    if (systemService != null) {
                                        bgl.b(systemService, gko.a(ak));
                                    }
                                }
                                context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                            }
                            aztVar = azt.f11130a;
                            if (aztVar.f11131b.isEmpty()) {
                            }
                            context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                        }
                    }
                }
                dkn.i = true;
                break;
            case 1:
                dkn.r(this.f18719b);
                break;
            case 2:
                cro.ad(this.f18719b);
                break;
            case 3:
                gm.e(this.f18719b.getApplicationContext(), R.string.dev_options_is_opened);
                break;
            default:
                afo.ao(this.f18719b, false);
                break;
        }
    }
}
