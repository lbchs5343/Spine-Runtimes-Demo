package g;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public final class gov implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f18521a;

    /* renamed from: b, reason: collision with root package name */
    public int f18522b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditText f18523c;

    public gov(TextInputLayout textInputLayout, EditText editText) {
        this.f18521a = textInputLayout;
        this.f18523c = editText;
        this.f18522b = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f18521a;
        textInputLayout.co(!textInputLayout.ar, false);
        if (textInputLayout.z) {
            textInputLayout.cr(editable);
        }
        if (textInputLayout.i) {
            textInputLayout.cy(editable);
        }
        EditText editText = this.f18523c;
        int lineCount = editText.getLineCount();
        int i = this.f18522b;
        if (lineCount != i) {
            if (lineCount < i) {
                int minimumHeight = editText.getMinimumHeight();
                int i2 = textInputLayout.ai;
                if (minimumHeight != i2) {
                    editText.setMinimumHeight(i2);
                }
            }
            this.f18522b = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
