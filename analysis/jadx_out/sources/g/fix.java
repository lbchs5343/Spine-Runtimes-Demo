package g;

import android.content.SharedPreferences;
import android.os.Handler;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class fix implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public Handler f16868a;

    @Override // java.lang.Runnable
    public final void run() {
        String d2 = ((cmc) eca.f15280e.f15121f).d();
        if (TextUtils.isEmpty(d2) || "0".equals(d2)) {
            this.f16868a.postDelayed(this, 15000L);
        } else {
            ((SharedPreferences) eca.f().f16548e).edit().putString("device_id", d2).apply();
            "[DeviceIdTask] did is ".concat(String.valueOf(d2));
        }
    }
}
