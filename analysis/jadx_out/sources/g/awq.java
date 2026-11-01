package g;

import android.widget.PopupWindow;

/* loaded from: classes.dex */
public final class awq implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10987a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10988b;

    public /* synthetic */ awq(int i, Object obj) {
        this.f10987a = i;
        this.f10988b = obj;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        switch (this.f10987a) {
            case 0:
                ((byn) this.f10988b).o();
                break;
            default:
                ((gkr) this.f10988b).getClass();
                break;
        }
    }
}
