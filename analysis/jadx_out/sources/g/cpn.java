package g;

import android.os.Build;
import android.view.Menu;

/* loaded from: classes.dex */
public abstract class cpn {
    public static void a(Menu menu, boolean z) {
        if (menu instanceof ftn) {
            ((ftn) menu).setGroupDividerEnabled(z);
        } else if (Build.VERSION.SDK_INT >= 28) {
            eyo.p(menu, z);
        }
    }
}
