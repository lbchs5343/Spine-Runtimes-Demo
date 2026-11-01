package g;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class hdi {
    public static OnBackInvokedDispatcher a(Activity activity) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        return onBackInvokedDispatcher;
    }

    public static OnBackInvokedCallback b(Object obj, dre dreVar) {
        Objects.requireNonNull(dreVar);
        fkl fklVar = new fkl(0, dreVar);
        hce.f(obj).registerOnBackInvokedCallback(1000000, fklVar);
        return fklVar;
    }

    public static void c(Object obj, Object obj2) {
        hce.f(obj).unregisterOnBackInvokedCallback(hce.m(obj2));
    }
}
