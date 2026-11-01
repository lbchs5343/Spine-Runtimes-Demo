package g;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class avp extends cro {

    /* renamed from: a, reason: collision with root package name */
    public static final long f10929a;

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f10930b;

    /* renamed from: c, reason: collision with root package name */
    public static final long f10931c;

    /* renamed from: d, reason: collision with root package name */
    public static final long f10932d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f10933e;
    public static final long m;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new ala());
        }
        try {
            m = unsafe.objectFieldOffset(ail.class.getDeclaredField("e"));
            f10931c = unsafe.objectFieldOffset(ail.class.getDeclaredField("g"));
            f10929a = unsafe.objectFieldOffset(ail.class.getDeclaredField("f"));
            f10932d = unsafe.objectFieldOffset(cye.class.getDeclaredField("b"));
            f10933e = unsafe.objectFieldOffset(cye.class.getDeclaredField("c"));
            f10930b = unsafe;
        } catch (NoSuchFieldException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // g.cro
    public final fwe f(alw alwVar) {
        fwe fweVar;
        fwe fweVar2 = fwe.f17503a;
        do {
            fweVar = alwVar.f10268g;
            if (fweVar2 == fweVar) {
                break;
            }
        } while (!g(alwVar, fweVar, fweVar2));
        return fweVar;
    }

    @Override // g.cro
    public final boolean g(alw alwVar, fwe fweVar, fwe fweVar2) {
        return dpv.a(f10930b, alwVar, f10931c, fweVar, fweVar2);
    }

    @Override // g.cro
    public final cye h(alw alwVar) {
        cye cyeVar;
        cye cyeVar2 = cye.f13739a;
        do {
            cyeVar = alwVar.f10266e;
            if (cyeVar2 == cyeVar) {
                break;
            }
        } while (!l(alwVar, cyeVar, cyeVar2));
        return cyeVar;
    }

    @Override // g.cro
    public final boolean i(ail ailVar, Object obj, Object obj2) {
        return dpv.a(f10930b, ailVar, f10929a, obj, obj2);
    }

    @Override // g.cro
    public final void j(cye cyeVar, Thread thread) {
        f10930b.putObject(cyeVar, f10932d, thread);
    }

    @Override // g.cro
    public final void k(cye cyeVar, cye cyeVar2) {
        f10930b.putObject(cyeVar, f10933e, cyeVar2);
    }

    @Override // g.cro
    public final boolean l(ail ailVar, cye cyeVar, cye cyeVar2) {
        return dpv.a(f10930b, ailVar, m, cyeVar, cyeVar2);
    }
}
