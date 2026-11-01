package g;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class bip extends bgp {

    /* renamed from: d, reason: collision with root package name */
    public static boolean f11667d = true;

    @Override // g.bli
    public void e(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.e(view, i);
        } else if (f11667d) {
            try {
                fmy.a(view, i);
            } catch (NoSuchMethodError unused) {
                f11667d = false;
            }
        }
    }
}
