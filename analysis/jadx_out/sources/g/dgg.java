package g;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public final class dgg implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, caf {

    /* renamed from: a, reason: collision with root package name */
    public cuk f14127a;

    /* renamed from: b, reason: collision with root package name */
    public gyg f14128b;

    /* renamed from: c, reason: collision with root package name */
    public fpl f14129c;

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        gyg gygVar = this.f14128b;
        cuk cukVar = this.f14127a;
        if (cukVar.n == null) {
            cukVar.n = new aih(cukVar);
        }
        gygVar.ar(cukVar.n.getItem(i), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f14127a.d(this.f14128b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        gyg gygVar = this.f14128b;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f14129c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f14129c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                gygVar.at(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return gygVar.performShortcut(i, keyEvent, 0);
    }

    @Override // g.caf
    public final boolean r(ftn ftnVar) {
        return false;
    }

    @Override // g.caf
    public final void x(ftn ftnVar, boolean z) {
        fpl fplVar;
        if ((z || ftnVar == this.f14128b) && (fplVar = this.f14129c) != null) {
            fplVar.dismiss();
        }
    }
}
