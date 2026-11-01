package g;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class cnw {
    public static anp a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        anp c2 = anp.c(null, rootWindowInsets);
        dif difVar = c2.f10526b;
        difVar.v(c2);
        difVar.p(view.getRootView());
        return c2;
    }

    public static void b(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }
}
