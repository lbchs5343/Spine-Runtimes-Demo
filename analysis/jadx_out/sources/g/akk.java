package g;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class akk extends gpu {

    /* renamed from: b, reason: collision with root package name */
    public static akk f10386b;

    /* renamed from: c, reason: collision with root package name */
    public final Application f10387c;

    public akk(Application application) {
        super(13);
        this.f10387c = application;
    }

    public final blj d(Class cls, Application application) {
        if (!czy.class.isAssignableFrom(cls)) {
            return super.m(cls);
        }
        try {
            blj bljVar = (blj) cls.getConstructor(Application.class).newInstance(application);
            bff.e(bljVar, "{\n                try {\n…          }\n            }");
            return bljVar;
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("Cannot create an instance of " + cls, e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Cannot create an instance of " + cls, e4);
        } catch (InvocationTargetException e5) {
            throw new RuntimeException("Cannot create an instance of " + cls, e5);
        }
    }

    @Override // g.gpu, g.dqr
    public final blj l(Class cls, ewp ewpVar) {
        if (this.f10387c != null) {
            return m(cls);
        }
        Application application = (Application) ewpVar.f11665b.get(bfy.f11485g);
        if (application != null) {
            return d(cls, application);
        }
        if (czy.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return super.m(cls);
    }

    @Override // g.gpu, g.dqr
    public final blj m(Class cls) {
        Application application = this.f10387c;
        if (application != null) {
            return d(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }
}
