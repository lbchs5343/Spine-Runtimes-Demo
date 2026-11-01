package g;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public final class dhg {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14169a;

    /* renamed from: b, reason: collision with root package name */
    public final IntentFilter f14170b;

    /* renamed from: c, reason: collision with root package name */
    public final BroadcastReceiver f14171c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14172d;

    public dhg(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        this.f14170b = intentFilter;
        this.f14171c = broadcastReceiver;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        sb.append("Receiver{");
        sb.append(this.f14171c);
        sb.append(" filter=");
        sb.append(this.f14170b);
        if (this.f14169a) {
            sb.append(" DEAD");
        }
        sb.append("}");
        return sb.toString();
    }
}
