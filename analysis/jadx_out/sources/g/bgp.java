package g;

import android.view.View;

/* loaded from: classes.dex */
public class bgp extends bli {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f11530b = true;

    @Override // g.bli
    public void c(View view, int i, int i2, int i3, int i4) {
        if (f11530b) {
            try {
                eza.a(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f11530b = false;
            }
        }
    }
}
