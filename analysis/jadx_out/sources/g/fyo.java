package g;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* loaded from: classes.dex */
public final class fyo {

    /* renamed from: a, reason: collision with root package name */
    public static final fyo f17649a = new fyo();

    public final OnBackInvokedCallback b(cvw cvwVar) {
        bff.p(cvwVar, "onBackInvoked");
        return new fkl(1, cvwVar);
    }

    public final void c(Object obj, int i, Object obj2) {
        bff.p(obj, "dispatcher");
        bff.p(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
    }

    public final void d(Object obj, Object obj2) {
        bff.p(obj, "dispatcher");
        bff.p(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
