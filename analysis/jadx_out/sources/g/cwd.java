package g;

import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class cwd implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditText f13617a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ edx f13618b;

    public cwd(edx edxVar, EditText editText) {
        this.f13618b = edxVar;
        this.f13617a = editText;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 66 || keyEvent.getAction() != 0) {
            return false;
        }
        edx.am(this.f13618b, this.f13617a.getText());
        return false;
    }
}
