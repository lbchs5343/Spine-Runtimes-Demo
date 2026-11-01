package g;

import android.app.Notification;

/* loaded from: classes.dex */
public final class dju {

    /* renamed from: a, reason: collision with root package name */
    public final int f14289a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14290b;

    /* renamed from: c, reason: collision with root package name */
    public final Notification f14291c;

    public dju(int i, int i2, Notification notification) {
        this.f14289a = i;
        this.f14291c = notification;
        this.f14290b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || dju.class != obj.getClass()) {
            return false;
        }
        dju djuVar = (dju) obj;
        if (this.f14289a == djuVar.f14289a && this.f14290b == djuVar.f14290b) {
            return this.f14291c.equals(djuVar.f14291c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f14291c.hashCode() + (((this.f14289a * 31) + this.f14290b) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f14289a + ", mForegroundServiceType=" + this.f14290b + ", mNotification=" + this.f14291c + '}';
    }
}
