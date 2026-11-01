package g;

import android.view.View;

/* loaded from: classes.dex */
public abstract class byl {
    public static void a(View view, boolean z) {
        view.setAccessibilityHeading(z);
    }

    public static void b(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static CharSequence c(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static void d(View view, boolean z) {
        view.setScreenReaderFocusable(z);
    }

    public static boolean e(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean f(View view) {
        return view.isScreenReaderFocusable();
    }
}
