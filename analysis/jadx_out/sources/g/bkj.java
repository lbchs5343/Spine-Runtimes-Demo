package g;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class bkj implements dsb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11733a;

    /* renamed from: b, reason: collision with root package name */
    public final ja f11734b;

    public /* synthetic */ bkj(ja jaVar, int i) {
        this.f11733a = i;
        this.f11734b = jaVar;
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        Class cls;
        Type[] actualTypeArguments;
        int i = this.f11733a;
        ja jaVar = this.f11734b;
        cls = Object.class;
        switch (i) {
            case 0:
                Type type = riVar.f19902b;
                Class cls2 = riVar.f19901a;
                if (!Collection.class.isAssignableFrom(cls2)) {
                    return null;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                }
                ckd.ba(Collection.class.isAssignableFrom(cls2));
                Type bp = acr.bp(type, cls2, acr.bv(type, cls2, Collection.class), new HashMap());
                cls = bp instanceof ParameterizedType ? ((ParameterizedType) bp).getActualTypeArguments()[0] : Object.class;
                bke n = eemVar.n(new ri(cls));
                jaVar.j(riVar);
                return new apk(cls, eemVar, n);
            default:
                Type type2 = riVar.f19902b;
                Class cls3 = riVar.f19901a;
                if (!Map.class.isAssignableFrom(cls3)) {
                    return null;
                }
                if (type2 == Properties.class) {
                    actualTypeArguments = new Type[]{String.class, String.class};
                } else {
                    if (type2 instanceof WildcardType) {
                        type2 = ((WildcardType) type2).getUpperBounds()[0];
                    }
                    ckd.ba(Map.class.isAssignableFrom(cls3));
                    Type bp2 = acr.bp(type2, cls3, acr.bv(type2, cls3, Map.class), new HashMap());
                    actualTypeArguments = bp2 instanceof ParameterizedType ? ((ParameterizedType) bp2).getActualTypeArguments() : new Type[]{cls, cls};
                }
                Type type3 = actualTypeArguments[0];
                bke n2 = (type3 == Boolean.TYPE || type3 == Boolean.class) ? foc.x : eemVar.n(new ri(type3));
                bke n3 = eemVar.n(new ri(actualTypeArguments[1]));
                jaVar.j(riVar);
                Type[] typeArr = actualTypeArguments;
                return new apk(this, eemVar, typeArr[0], n2, typeArr[1], n3);
        }
    }
}
