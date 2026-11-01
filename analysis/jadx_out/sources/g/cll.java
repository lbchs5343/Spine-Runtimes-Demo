package g;

import android.text.InputFilter;
import android.text.Spanned;

/* loaded from: classes3.dex */
public final class cll implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final int f13063a;

    public cll(int i) {
        this.f13063a = i;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) <= this.f13063a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
