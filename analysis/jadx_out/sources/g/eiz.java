package g;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class eiz implements KeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final KeyListener f15619a;

    /* renamed from: b, reason: collision with root package name */
    public final gpu f15620b;

    public eiz(KeyListener keyListener) {
        gpu gpuVar = new gpu(1);
        this.f15619a = keyListener;
        this.f15620b = gpuVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i) {
        this.f15619a.clearMetaKeyState(view, editable, i);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f15619a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        boolean z;
        this.f15620b.getClass();
        if (i != 67 ? i != 112 ? false : egh.bg(editable, keyEvent, true) : egh.bg(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z = true;
        } else {
            z = false;
        }
        return z || this.f15619a.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f15619a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.f15619a.onKeyUp(view, editable, i, keyEvent);
    }
}
