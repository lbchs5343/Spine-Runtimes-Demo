package g;

import android.text.Editable;

/* loaded from: classes.dex */
public final class ewe extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f16265a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile ewe f16266b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f16267c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f16267c;
        return cls != null ? new cvn(cls, charSequence) : super.newEditable(charSequence);
    }
}
