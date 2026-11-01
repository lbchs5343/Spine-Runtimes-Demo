package g;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;

/* loaded from: classes.dex */
public abstract class fhg {

    /* renamed from: a, reason: collision with root package name */
    public static final List f16792a;

    static {
        try {
            Iterator it = Arrays.asList(new gxh()).iterator();
            bff.p(it, "<this>");
            f16792a = ebr.bp(new bac(new fjj(1, it)));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
