package g;

import a.v.ColorPickerView;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;

/* loaded from: classes.dex */
public final /* synthetic */ class fxf implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17569a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f17570b;

    public /* synthetic */ fxf(KeyEvent.Callback callback, int i) {
        this.f17569a = i;
        this.f17570b = callback;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean lambda$initData$1;
        switch (this.f17569a) {
            case 0:
                efx efxVar = (efx) this.f17570b;
                fvi fviVar = efxVar.aq;
                if (i != 3 && (keyEvent == null || keyEvent.getKeyCode() != 66 || keyEvent.getAction() != 0)) {
                    return false;
                }
                efxVar.an.removeCallbacks(fviVar);
                fviVar.run();
                InputMethodManager inputMethodManager = efxVar.be;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(efxVar.an.getWindowToken(), 0);
                }
                efxVar.an.clearFocus();
                return true;
            default:
                lambda$initData$1 = ((ColorPickerView) this.f17570b).lambda$initData$1(textView, i, keyEvent);
                return lambda$initData$1;
        }
    }
}
