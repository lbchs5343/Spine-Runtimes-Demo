package g;

import android.window.OnBackInvokedCallback;

/* loaded from: classes.dex */
public final /* synthetic */ class fkl implements OnBackInvokedCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16935a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16936b;

    public /* synthetic */ fkl(int i, Object obj) {
        this.f16935a = i;
        this.f16936b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f16935a) {
            case 0:
                ((dre) this.f16936b).cr();
                break;
            case 1:
                ((cvw) this.f16936b).invoke();
                break;
            default:
                ((Runnable) this.f16936b).run();
                break;
        }
    }
}
