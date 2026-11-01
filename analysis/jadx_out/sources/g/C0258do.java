package g;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;

/* renamed from: g.do, reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0258do {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f14503a;

    /* renamed from: b, reason: collision with root package name */
    public final fc f14504b;

    public C0258do(TextView textView) {
        this.f14503a = textView;
        this.f14504b = new fc(textView);
    }

    public final void c(boolean z) {
        ((byh) this.f14504b.f16548e).bi(z);
    }

    public final InputFilter[] d(InputFilter[] inputFilterArr) {
        return ((byh) this.f14504b.f16548e).bj(inputFilterArr);
    }

    public final void e(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f14503a.getContext().obtainStyledAttributes(attributeSet, acs.r, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            c(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void f(boolean z) {
        ((byh) this.f14504b.f16548e).bm(z);
    }
}
