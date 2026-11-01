package g;

import android.app.Notification;

/* loaded from: classes.dex */
public final class gie extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f18195a;

    @Override // g.bgf
    public final String ah() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }

    @Override // g.bgf
    public final void aj(duw duwVar) {
        new Notification.BigTextStyle((Notification.Builder) duwVar.f14864d).setBigContentTitle(null).bigText(this.f18195a);
    }
}
