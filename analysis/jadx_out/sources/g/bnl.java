package g;

import android.app.NotificationChannel;

/* loaded from: classes.dex */
public abstract /* synthetic */ class bnl {
    public static /* synthetic */ NotificationChannel j(String str) {
        return new NotificationChannel("com.google.android.gms.availability", str, 4);
    }

    public static /* synthetic */ NotificationChannel q(String str, String str2) {
        return new NotificationChannel(str, str2, 4);
    }
}
