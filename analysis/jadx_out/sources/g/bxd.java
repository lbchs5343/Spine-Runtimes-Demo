package g;

import android.os.Bundle;
import android.text.Spanned;

/* loaded from: classes3.dex */
public abstract class bxd {

    /* renamed from: c, reason: collision with root package name */
    public static final String f12368c = Integer.toString(0, 36);

    /* renamed from: d, reason: collision with root package name */
    public static final String f12369d = Integer.toString(1, 36);

    /* renamed from: e, reason: collision with root package name */
    public static final String f12370e = Integer.toString(2, 36);

    /* renamed from: a, reason: collision with root package name */
    public static final String f12366a = Integer.toString(3, 36);

    /* renamed from: b, reason: collision with root package name */
    public static final String f12367b = Integer.toString(4, 36);

    public static Bundle f(Spanned spanned, Object obj, int i, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f12368c, spanned.getSpanStart(obj));
        bundle2.putInt(f12369d, spanned.getSpanEnd(obj));
        bundle2.putInt(f12370e, spanned.getSpanFlags(obj));
        bundle2.putInt(f12366a, i);
        if (bundle != null) {
            bundle2.putBundle(f12367b, bundle);
        }
        return bundle2;
    }
}
