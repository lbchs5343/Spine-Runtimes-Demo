package g;

import android.text.Editable;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class dql extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f14645a;

    /* renamed from: b, reason: collision with root package name */
    public final fbc f14646b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dql(EditText editText, InputConnection inputConnection) {
        super(inputConnection, false);
        fbc fbcVar = new fbc(1);
        this.f14645a = editText;
        this.f14646b = fbcVar;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.f14645a.getEditableText();
        this.f14646b.getClass();
        return fbc.n(this, editableText, i, i2, false) || super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.f14645a.getEditableText();
        this.f14646b.getClass();
        return fbc.n(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2);
    }
}
