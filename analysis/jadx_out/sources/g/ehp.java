package g;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class ehp extends fmt {
    @Override // g.fmt
    public final eeg b(Type type, Annotation[] annotationArr) {
        if (aky.af(type) != o.ac()) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type aa = aky.aa(0, (ParameterizedType) type);
        if (aky.af(aa) != anx.class) {
            return new oy(aa);
        }
        if (aa instanceof ParameterizedType) {
            return new eux(aky.aa(0, (ParameterizedType) aa));
        }
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
    }
}
