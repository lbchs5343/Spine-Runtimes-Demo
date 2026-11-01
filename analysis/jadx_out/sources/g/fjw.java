package g;

import android.view.KeyEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class fjw implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fyx f16898a;

    public fjw(fyx fyxVar) {
        this.f16898a = fyxVar;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 66 || keyEvent.getAction() != 0) {
            return false;
        }
        this.f16898a.af();
        return false;
    }
}
