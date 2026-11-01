package g;

/* loaded from: classes.dex */
public abstract class ut {

    /* renamed from: a, reason: collision with root package name */
    public static final bcp f20123a = new bcp(0);

    public static Class b(ClassLoader classLoader, String str) {
        bcp bcpVar = f20123a;
        bcp bcpVar2 = (bcp) bcpVar.get(classLoader);
        if (bcpVar2 == null) {
            bcpVar2 = new bcp(0);
            bcpVar.put(classLoader, bcpVar2);
        }
        Class cls = (Class) bcpVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        bcpVar2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e2) {
            throw new dwb(tn.ad("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e2);
        } catch (ClassNotFoundException e3) {
            throw new dwb(tn.ad("Unable to instantiate fragment ", str, ": make sure class name exists"), e3);
        }
    }
}
