package g;

import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/* loaded from: classes3.dex */
public final class bkc extends fbc {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11725e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bkc(int i) {
        super(10);
        this.f11725e = i;
    }

    @Override // g.fbc
    public String f(Method method, int i) {
        Parameter[] parameters;
        boolean isNamePresent;
        String name;
        switch (this.f11725e) {
            case 1:
                parameters = method.getParameters();
                Parameter parameter = parameters[i];
                isNamePresent = parameter.isNamePresent();
                if (!isNamePresent) {
                    break;
                } else {
                    StringBuilder sb = new StringBuilder("parameter '");
                    name = parameter.getName();
                    sb.append(name);
                    sb.append('\'');
                    break;
                }
        }
        return super.f(method, i);
    }

    @Override // g.fbc
    public final Object j(Method method, Class cls, Object obj, Object[] objArr) {
        switch (this.f11725e) {
            case 0:
                if (Build.VERSION.SDK_INT >= 26) {
                    return ffb.ak(method, cls, obj, objArr);
                }
                throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
            default:
                return ffb.ak(method, cls, obj, objArr);
        }
    }

    @Override // g.fbc
    public final boolean k(Method method) {
        boolean isDefault;
        boolean isDefault2;
        switch (this.f11725e) {
            case 0:
                isDefault = method.isDefault();
                return isDefault;
            default:
                isDefault2 = method.isDefault();
                return isDefault2;
        }
    }
}
