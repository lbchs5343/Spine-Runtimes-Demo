package g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public class fnm implements est {

    /* renamed from: a, reason: collision with root package name */
    public static final bfy f17084a = new bfy(24);

    /* renamed from: b, reason: collision with root package name */
    public final Method f17085b;

    /* renamed from: d, reason: collision with root package name */
    public final Method f17086d;
    public final Class h;
    public final Method i;
    public final Method j;

    public fnm(Class cls) {
        this.h = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        bff.e(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
        this.i = declaredMethod;
        this.j = cls.getMethod("setHostname", String.class);
        this.f17085b = cls.getMethod("getAlpnSelectedProtocol", null);
        this.f17086d = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // g.est
    public final void c(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        if (this.h.isInstance(sSLSocket)) {
            try {
                this.i.invoke(sSLSocket, Boolean.TRUE);
                if (str != null) {
                    this.j.invoke(sSLSocket, str);
                }
                Method method = this.f17086d;
                bop bopVar = bop.h;
                method.invoke(sSLSocket, cfg.h(list));
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                throw new AssertionError(e3);
            }
        }
    }

    @Override // g.est
    public final boolean e(SSLSocket sSLSocket) {
        return this.h.isInstance(sSLSocket);
    }

    @Override // g.est
    public final boolean f() {
        boolean z = dch.f13954a;
        return dch.f13954a;
    }

    @Override // g.est
    public final String g(SSLSocket sSLSocket) {
        if (this.h.isInstance(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.f17085b.invoke(sSLSocket, null);
                if (bArr != null) {
                    return new String(bArr, ejm.f15667a);
                }
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                Throwable cause = e3.getCause();
                if (!(cause instanceof NullPointerException) || !bff.n(((NullPointerException) cause).getMessage(), "ssl == null")) {
                    throw new AssertionError(e3);
                }
            }
        }
        return null;
    }
}
