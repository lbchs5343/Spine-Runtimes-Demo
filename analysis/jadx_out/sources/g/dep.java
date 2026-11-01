package g;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class dep implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fhv f14062a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cox f14063b;

    public dep(cox coxVar, fhv fhvVar) {
        this.f14063b = coxVar;
        this.f14062a = fhvVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f14063b.at.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f14062a);
        }
    }
}
