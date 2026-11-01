package g;

import android.view.KeyEvent;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class gsu implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ajf f18706a;

    public gsu(ajf ajfVar) {
        this.f18706a = ajfVar;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.f18706a.f10304d.performClick();
        return true;
    }
}
