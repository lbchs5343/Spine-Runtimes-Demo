package g;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class fpo implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f17204a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17205b = true;

    public fpo(EditText editText) {
        this.f17204a = editText;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f17204a.isInEditMode();
    }
}
