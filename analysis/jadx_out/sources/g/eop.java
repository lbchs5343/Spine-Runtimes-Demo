package g;

import android.view.View;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class eop {
    public static void a(Object obj, Object obj2) {
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }

    public static OnBackInvokedDispatcher b(View view) {
        return view.findOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback c(Runnable runnable) {
        Objects.requireNonNull(runnable);
        return new fkl(2, runnable);
    }

    public static void d(Object obj, Object obj2) {
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
    }
}
