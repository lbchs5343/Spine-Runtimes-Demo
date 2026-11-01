package g;

import j$.util.Optional;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class dvi extends gzh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14889a;

    public /* synthetic */ dvi(int i) {
        this.f14889a = i;
    }

    @Override // g.gzh
    public eya b(Type type) {
        switch (this.f14889a) {
            case 0:
                if (sz.class.isAssignableFrom(aky.af(type))) {
                    return ao.y;
                }
                return null;
            default:
                return super.b(type);
        }
    }

    @Override // g.gzh
    public final eya c(Type type, Annotation[] annotationArr, daw dawVar) {
        switch (this.f14889a) {
            case 0:
                if (type == ehi.class) {
                    return aky.r(annotationArr, gmh.class) ? dwm.t : bmr.t;
                }
                if (type == Void.class) {
                    return bfy.q;
                }
                if (aky.f10421a && type == dgi.class) {
                    return acq.f9986f;
                }
                return null;
            default:
                if (aky.af(type) != Optional.class) {
                    return null;
                }
                return new emr(13, dawVar.p(aky.aa(0, (ParameterizedType) type), annotationArr));
        }
    }
}
