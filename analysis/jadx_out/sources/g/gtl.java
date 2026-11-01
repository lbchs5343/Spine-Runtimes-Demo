package g;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* loaded from: classes.dex */
public final class gtl {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f18730a;

    /* renamed from: b, reason: collision with root package name */
    public final Configuration f18731b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18732c;

    public gtl(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f18730a = colorStateList;
        this.f18731b = configuration;
        this.f18732c = theme == null ? 0 : theme.hashCode();
    }
}
