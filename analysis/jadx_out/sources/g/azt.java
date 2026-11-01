package g;

import android.os.Build;
import java.util.Locale;

/* loaded from: classes.dex */
public final class azt {

    /* renamed from: a, reason: collision with root package name */
    public static final azt f11130a = c(new Locale[0]);

    /* renamed from: b, reason: collision with root package name */
    public final cmn f11131b;

    public azt(cmn cmnVar) {
        this.f11131b = cmnVar;
    }

    public static azt c(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new azt(new cdt(cml.i(localeArr))) : new azt(new ajx(localeArr));
    }

    public static azt d(String str) {
        if (str == null || str.isEmpty()) {
            return f11130a;
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            String str2 = split[i];
            int i2 = fvl.f17481a;
            localeArr[i] = Locale.forLanguageTag(str2);
        }
        return c(localeArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof azt) {
            return this.f11131b.equals(((azt) obj).f11131b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11131b.hashCode();
    }

    public final String toString() {
        return this.f11131b.toString();
    }
}
