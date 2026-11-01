package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class bml implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11832a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ edx f11833b;

    public /* synthetic */ bml(edx edxVar, int i) {
        this.f11832a = i;
        this.f11833b = edxVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.f11832a) {
            case 0:
                this.f11833b.ag = false;
                return;
            default:
                synchronized (eib.class) {
                    this.f11833b.q = false;
                }
                return;
        }
    }
}
