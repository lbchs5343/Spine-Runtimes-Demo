package g;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class bdx extends gzh {

    /* renamed from: a, reason: collision with root package name */
    public static final dpd f11355a;

    static {
        dpd dpdVar;
        Pattern pattern = dpd.f14576a;
        try {
            dpdVar = acr.bb("application/json; charset=UTF-8");
        } catch (IllegalArgumentException unused) {
            dpdVar = null;
        }
        f11355a = dpdVar;
    }

    @Override // g.gzh
    public final eya b(Type type) {
        return new fbc(2);
    }

    @Override // g.gzh
    public final eya c(Type type, Annotation[] annotationArr, daw dawVar) {
        return new oy(type);
    }
}
