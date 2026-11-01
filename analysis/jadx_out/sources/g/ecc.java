package g;

import android.os.Build;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* loaded from: classes.dex */
public final class ecc implements Window.Callback {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15282a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15283b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15284c;

    /* renamed from: d, reason: collision with root package name */
    public final Window.Callback f15285d;

    /* renamed from: e, reason: collision with root package name */
    public fc f15286e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ dre f15287f;

    public ecc(dre dreVar, Window.Callback callback) {
        this.f15287f = dreVar;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f15285d = callback;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f15285d.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = this.f15283b;
        Window.Callback callback = this.f15285d;
        return z ? callback.dispatchKeyEvent(keyEvent) : this.f15287f.cf(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (!this.f15285d.dispatchKeyShortcutEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            dre dreVar = this.f15287f;
            dreVar.cj();
            gkl gklVar = dreVar.ao;
            if (gklVar == null || !gklVar.aj(keyCode, keyEvent)) {
                hbq hbqVar = dreVar.bo;
                if (hbqVar == null || !dreVar.ch(hbqVar, keyEvent.getKeyCode(), keyEvent)) {
                    if (dreVar.bo == null) {
                        hbq cv = dreVar.cv(0);
                        dreVar.cn(cv, keyEvent);
                        boolean ch = dreVar.ch(cv, keyEvent.getKeyCode(), keyEvent);
                        cv.f19185b = false;
                        if (ch) {
                        }
                    }
                    return false;
                }
                hbq hbqVar2 = dreVar.bo;
                if (hbqVar2 != null) {
                    hbqVar2.f19189f = true;
                    return true;
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f15285d.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f15285d.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f15285d.dispatchTrackballEvent(motionEvent);
    }

    public final void g(List list, Menu menu, int i) {
        li.a(this.f15285d, list, menu, i);
    }

    public final void h(Window.Callback callback) {
        try {
            this.f15282a = true;
            callback.onContentChanged();
        } finally {
            this.f15282a = false;
        }
    }

    public final boolean i(int i, Menu menu) {
        return this.f15285d.onMenuOpened(i, menu);
    }

    public final void j(int i, Menu menu) {
        this.f15285d.onPanelClosed(i, menu);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f15285d.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f15285d.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f15285d.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f15282a) {
            this.f15285d.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0 || (menu instanceof ftn)) {
            return this.f15285d.onCreatePanelMenu(i, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i) {
        fc fcVar = this.f15286e;
        if (fcVar != null) {
            View view = i == 0 ? new View(((bbp) fcVar.f16548e).f11235d.h.getContext()) : null;
            if (view != null) {
                return view;
            }
        }
        return this.f15285d.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f15285d.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.f15285d.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i, Menu menu) {
        i(i, menu);
        dre dreVar = this.f15287f;
        if (i == 108) {
            dreVar.cj();
            gkl gklVar = dreVar.ao;
            if (gklVar != null) {
                gklVar.an(true);
            }
        } else {
            dreVar.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        if (this.f15284c) {
            this.f15285d.onPanelClosed(i, menu);
            return;
        }
        j(i, menu);
        dre dreVar = this.f15287f;
        if (i == 108) {
            dreVar.cj();
            gkl gklVar = dreVar.ao;
            if (gklVar != null) {
                gklVar.an(false);
                return;
            }
            return;
        }
        if (i == 0) {
            hbq cv = dreVar.cv(i);
            if (cv.k) {
                dreVar.cy(cv, false);
            }
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z) {
        bjr.a(this.f15285d, z);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        ftn ftnVar = menu instanceof ftn ? (ftn) menu : null;
        if (i == 0 && ftnVar == null) {
            return false;
        }
        if (ftnVar != null) {
            ftnVar.w = true;
        }
        fc fcVar = this.f15286e;
        if (fcVar != null && i == 0) {
            bbp bbpVar = (bbp) fcVar.f16548e;
            if (!bbpVar.f11233b) {
                bbpVar.f11235d.f17596f = true;
                bbpVar.f11233b = true;
            }
        }
        boolean onPreparePanel = this.f15285d.onPreparePanel(i, view, menu);
        if (ftnVar != null) {
            ftnVar.w = false;
        }
        return onPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        ftn ftnVar = this.f15287f.cv(0).f19184a;
        if (ftnVar != null) {
            g(list, ftnVar, i);
        } else {
            g(list, menu, i);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f15285d.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return dmz.a(this.f15285d, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f15285d.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.f15285d.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (Build.VERSION.SDK_INT >= 23) {
            return null;
        }
        dre dreVar = this.f15287f;
        gkr gkrVar = new gkr(dreVar.aw, callback);
        gtg z = dreVar.z(gkrVar);
        if (z != null) {
            return gkrVar.af(z);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        if (i != 0) {
            return dmz.b(this.f15285d, callback, i);
        }
        dre dreVar = this.f15287f;
        gkr gkrVar = new gkr(dreVar.aw, callback);
        gtg z = dreVar.z(gkrVar);
        if (z != null) {
            return gkrVar.af(z);
        }
        return null;
    }
}
