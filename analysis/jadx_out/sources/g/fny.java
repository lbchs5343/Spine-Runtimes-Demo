package g;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* loaded from: classes.dex */
public final /* synthetic */ class fny implements DialogInterface.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fpl f17117a;

    public /* synthetic */ fny(fpl fplVar) {
        this.f17117a = fplVar;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
            this.f17117a.f12197e.j();
        }
        return true;
    }
}
