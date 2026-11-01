package g;

import android.app.Notification;
import android.os.Build;

/* loaded from: classes.dex */
public final class fbh extends bgf {
    @Override // g.bgf
    public final void ab() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        ((zc) this.z).getClass();
    }

    @Override // g.bgf
    public final void ae() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        ((zc) this.z).getClass();
        ((zc) this.z).getClass();
    }

    @Override // g.bgf
    public final String ah() {
        return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
    }

    @Override // g.bgf
    public final void ai() {
        if (Build.VERSION.SDK_INT >= 24) {
            return;
        }
        ((zc) this.z).getClass();
        ((zc) this.z).getClass();
    }

    @Override // g.bgf
    public final void aj(duw duwVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            ((Notification.Builder) duwVar.f14864d).setStyle(geo.a());
        }
    }
}
