package g;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public abstract class bhb {
    public final CheckableImageButton v;
    public final TextInputLayout w;
    public final zq x;
    public final Context y;

    public bhb(zq zqVar) {
        this.w = zqVar.p;
        this.x = zqVar;
        this.y = zqVar.getContext();
        this.v = zqVar.f20409d;
    }

    public boolean aa() {
        return this instanceof chp;
    }

    public void ab(AccessibilityEvent accessibilityEvent) {
    }

    public void ac(fnz fnzVar) {
    }

    public boolean ad() {
        return false;
    }

    public boolean ae(int i) {
        return true;
    }

    public void af() {
    }

    public boolean ag() {
        return false;
    }

    public final void ah() {
        this.x.ad(false);
    }

    public int j() {
        return 0;
    }

    public View.OnFocusChangeListener k() {
        return null;
    }

    public void l() {
    }

    public View.OnClickListener n() {
        return null;
    }

    public void o() {
    }

    public void p(boolean z) {
    }

    public void q(EditText editText) {
    }

    public int s() {
        return 0;
    }

    public View.OnFocusChangeListener t() {
        return null;
    }

    public void u() {
    }

    public AccessibilityManager.TouchExplorationStateChangeListener z() {
        return null;
    }
}
