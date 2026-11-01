package g;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class efv extends fmt {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f15462a;

    public efv(Executor executor) {
        this.f15462a = executor;
    }

    @Override // g.fmt
    public final eeg b(Type type, Annotation[] annotationArr) {
        if (aky.af(type) != czh.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new akj(aky.aa(0, (ParameterizedType) type), 7, aky.r(annotationArr, brc.class) ? null : this.f15462a);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
