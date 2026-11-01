package g;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* loaded from: classes3.dex */
public final class eux implements eeg, gtx {

    /* renamed from: a, reason: collision with root package name */
    public final Type f16205a;

    public /* synthetic */ eux(Type type) {
        this.f16205a = type;
    }

    @Override // g.gtx
    public Object ao() {
        Type type = this.f16205a;
        if (!(type instanceof ParameterizedType)) {
            throw new gyr("Invalid EnumSet type: " + type.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        throw new gyr("Invalid EnumSet type: " + type.toString());
    }

    @Override // g.eeg
    public Type b() {
        return this.f16205a;
    }

    @Override // g.eeg
    public Object c(fdw fdwVar) {
        aux auxVar = new aux(fdwVar);
        fdwVar.d(new fnq(6, auxVar));
        return auxVar;
    }
}
