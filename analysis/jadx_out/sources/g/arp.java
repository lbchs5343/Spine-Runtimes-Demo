package g;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* loaded from: classes3.dex */
public final /* synthetic */ class arp implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10726a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10727b;

    public /* synthetic */ arp(int i, Object obj) {
        this.f10726a = i;
        this.f10727b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10726a) {
            case 0:
                View view = (View) this.f10727b;
                ((InputMethodManager) eyt.br(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
                break;
            default:
                efs efsVar = (efs) this.f10727b;
                ((cga) efsVar.f15457a).n(new aoi(23, efsVar));
                break;
        }
    }
}
