package g;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class ggm implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f18104a;

    public ggm(TextView textView) {
        this.f18104a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (this.f18104a.isInEditMode()) {
            return charSequence;
        }
        awt.q();
        throw null;
    }
}
