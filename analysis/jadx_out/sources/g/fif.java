package g;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

/* loaded from: classes3.dex */
public final class fif implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Button f16829a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fdh f16830b;

    public fif(fdh fdhVar, Button button) {
        this.f16830b = fdhVar;
        this.f16829a = button;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        Button button = this.f16829a;
        if (button != null) {
            button.setEnabled(this.f16830b.f16605a.h(editable.toString()));
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
