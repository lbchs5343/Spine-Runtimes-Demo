package g;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public abstract class ebi {

    /* renamed from: a, reason: collision with root package name */
    public static final bli f15235a;

    /* renamed from: b, reason: collision with root package name */
    public static final dfe f15236b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f15235a = new dxe(13);
        } else if (i >= 23) {
            f15235a = new bip(13);
        } else if (i >= 22) {
            f15235a = new bgp(13);
        } else {
            f15235a = new bli(13);
        }
        f15236b = new dfe(13, Float.class, "translationAlpha");
        new dfe(14, Rect.class, "clipBounds");
    }

    public static void c(View view, int i, int i2, int i3, int i4) {
        f15235a.c(view, i, i2, i3, i4);
    }

    public static void d(View view, int i) {
        f15235a.e(view, i);
    }
}
