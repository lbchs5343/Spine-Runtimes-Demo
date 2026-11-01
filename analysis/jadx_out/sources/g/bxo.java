package g;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public final class bxo extends bop {

    /* renamed from: a, reason: collision with root package name */
    public final Method f12393a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f12394b;
    public final Class r;
    public final Method s;
    public final Class t;

    public bxo(Method method, Method method2, Method method3, Class cls, Class cls2) {
        this.s = method;
        this.f12393a = method2;
        this.f12394b = method3;
        this.r = cls;
        this.t = cls2;
    }

    @Override // g.bop
    public final void d(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((aqt) obj) != aqt.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(bkk.a(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((aqt) it.next()).toString());
        }
        try {
            this.s.invoke(null, sSLSocket, Proxy.newProxyInstance(bop.class.getClassLoader(), new Class[]{this.r, this.t}, new dal(arrayList2)));
        } catch (IllegalAccessException e2) {
            throw new AssertionError("failed to set ALPN", e2);
        } catch (InvocationTargetException e3) {
            throw new AssertionError("failed to set ALPN", e3);
        }
    }

    @Override // g.bop
    public final String f(SSLSocket sSLSocket) {
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f12393a.invoke(null, sSLSocket));
            bff.ag(invocationHandler, "null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
            dal dalVar = (dal) invocationHandler;
            boolean z = dalVar.f13860c;
            if (!z && dalVar.f13858a == null) {
                bop.j(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (z) {
                return null;
            }
            return dalVar.f13858a;
        } catch (IllegalAccessException e2) {
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        } catch (InvocationTargetException e3) {
            throw new AssertionError("failed to get ALPN selected protocol", e3);
        }
    }

    @Override // g.bop
    public final void m(SSLSocket sSLSocket) {
        try {
            this.f12394b.invoke(null, sSLSocket);
        } catch (IllegalAccessException e2) {
            throw new AssertionError("failed to remove ALPN", e2);
        } catch (InvocationTargetException e3) {
            throw new AssertionError("failed to remove ALPN", e3);
        }
    }
}
