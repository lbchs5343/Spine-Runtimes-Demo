package g;

import android.content.pm.PackageInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.chromium.support_lib_boundary.util.Features;

/* loaded from: classes.dex */
public final class wv extends fnk {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f20249a;

    public wv() {
        super(Features.ALGORITHMIC_DARKENING, Features.ALGORITHMIC_DARKENING);
        this.f20249a = Pattern.compile("\\A\\d+");
    }

    @Override // g.fnk
    public final boolean b() {
        return Build.VERSION.SDK_INT >= 33;
    }

    @Override // g.fnk
    public final boolean c() {
        int i;
        PackageInfo packageInfo;
        boolean c2 = super.c();
        if (!c2 || (i = Build.VERSION.SDK_INT) >= 29) {
            return c2;
        }
        int i2 = bdj.f11318a;
        if (i >= 26) {
            packageInfo = ze.c();
        } else {
            try {
                packageInfo = bdj.b();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                packageInfo = null;
            }
        }
        if (packageInfo == null) {
            return false;
        }
        Matcher matcher = this.f20249a.matcher(packageInfo.versionName);
        return matcher.find() && Integer.parseInt(packageInfo.versionName.substring(matcher.start(), matcher.end())) >= 105;
    }
}
