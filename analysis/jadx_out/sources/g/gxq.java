package g;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class gxq implements dsb {
    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        Type type = riVar.f19902b;
        boolean z = type instanceof GenericArrayType;
        if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
            return null;
        }
        Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
        return new cql(eemVar, eemVar.n(new ri(genericComponentType)), acr.aj(genericComponentType));
    }
}
