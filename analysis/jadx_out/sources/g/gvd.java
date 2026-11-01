package g;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public final class gvd extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public IconCompat f18799a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f18800b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18801c;

    @Override // g.bgf
    public final String ah() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // g.bgf
    public final void aj(duw duwVar) {
        Notification.Builder builder = (Notification.Builder) duwVar.f14864d;
        Context context = (Context) duwVar.h;
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(builder).setBigContentTitle(null);
        IconCompat iconCompat = this.f18799a;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                eog.a(bigContentTitle, iconCompat.r(context));
            } else if (iconCompat.o() == 1) {
                bigContentTitle = bigContentTitle.bigPicture(this.f18799a.q());
            }
        }
        if (this.f18801c) {
            IconCompat iconCompat2 = this.f18800b;
            if (iconCompat2 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else if (Build.VERSION.SDK_INT >= 23) {
                ekd.a(bigContentTitle, iconCompat2.r(context));
            } else if (iconCompat2.o() == 1) {
                bigContentTitle.bigLargeIcon(this.f18800b.q());
            } else {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            }
        }
        if (Build.VERSION.SDK_INT >= 31) {
            eog.c(bigContentTitle, false);
            eog.b(bigContentTitle, null);
        }
    }
}
