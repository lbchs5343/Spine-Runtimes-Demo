package g;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class gnu extends gkw {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Method f18478c;

    public gnu(Method method) {
        this.f18478c = method;
    }

    @Override // g.gkw
    public final boolean a(Object obj, AccessibleObject accessibleObject) {
        try {
            return ((Boolean) this.f18478c.invoke(accessibleObject, obj)).booleanValue();
        } catch (Exception e2) {
            throw new RuntimeException("Failed invoking canAccess", e2);
        }
    }
}
