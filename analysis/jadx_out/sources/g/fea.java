package g;

import java.lang.reflect.InvocationTargetException;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public abstract class fea {

    /* renamed from: a, reason: collision with root package name */
    public static final dbp f16641a;

    static {
        dbp bmrVar;
        try {
            bmrVar = new eie(20, (WebViewProviderFactoryBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewProviderFactoryBoundaryInterface.class, acw.ba()));
        } catch (ClassNotFoundException unused) {
            bmrVar = new bmr(3);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
        f16641a = bmrVar;
    }
}
