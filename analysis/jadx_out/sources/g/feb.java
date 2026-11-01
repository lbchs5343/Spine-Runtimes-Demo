package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public final class feb {

    /* renamed from: a, reason: collision with root package name */
    public volatile cuf f16642a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f16643b;

    /* renamed from: c, reason: collision with root package name */
    public volatile eoy f16644c;

    public /* synthetic */ feb(cdy cdyVar) {
        this.f16643b = cdyVar;
    }

    public final boolean d() {
        try {
            Context context = this.f16643b;
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
        } catch (Exception unused) {
            int i = gbs.f17875a;
            return false;
        }
    }
}
