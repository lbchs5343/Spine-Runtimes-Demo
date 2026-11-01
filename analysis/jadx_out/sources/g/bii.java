package g;

/* loaded from: classes.dex */
public abstract class bii {

    /* renamed from: a, reason: collision with root package name */
    public static final cky f11650a;

    static {
        cky ckyVar = null;
        try {
            ckyVar = (cky) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (ckyVar == null) {
            ckyVar = new cky();
        }
        f11650a = ckyVar;
    }

    public static beq b(Class cls) {
        f11650a.getClass();
        return new beq(cls);
    }
}
