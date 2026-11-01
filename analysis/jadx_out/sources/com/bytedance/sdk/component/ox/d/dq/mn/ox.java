package com.bytedance.sdk.component.ox.d.dq.mn;

import com.bytedance.sdk.component.ox.d.wp;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes.dex */
class ox extends s {

    /* renamed from: d, reason: collision with root package name */
    private final Method f2068d;
    private final Method dq;
    private final Method ox;
    private final Class<?> p;
    private final Class<?> s;

    public static class dq implements InvocationHandler {

        /* renamed from: d, reason: collision with root package name */
        String f2069d;
        boolean dq;
        private final List<String> ox;

        public dq(List<String> list) {
            this.ox = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = com.bytedance.sdk.component.ox.d.dq.ox.f2072d;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.dq = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.ox;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.ox.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f2069d = str;
                            return str;
                        }
                    }
                    String str2 = this.ox.get(0);
                    this.f2069d = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f2069d = (String) objArr[0];
            return null;
        }
    }

    public ox(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.dq = method;
        this.f2068d = method2;
        this.ox = method3;
        this.p = cls;
        this.s = cls2;
    }

    public static s dq() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new ox(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void d(SSLSocket sSLSocket) {
        try {
            this.ox.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to remove alpn", (Exception) e2);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public String dq(SSLSocket sSLSocket) {
        try {
            dq dqVar = (dq) Proxy.getInvocationHandler(this.f2068d.invoke(null, sSLSocket));
            boolean z = dqVar.dq;
            if (!z && dqVar.f2069d == null) {
                s.d().dq(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (z) {
                return null;
            }
            return dqVar.f2069d;
        } catch (IllegalAccessException e2) {
            e = e2;
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to get selected protocol", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to get selected protocol", e);
        }
    }

    @Override // com.bytedance.sdk.component.ox.d.dq.mn.s
    public void dq(SSLSocket sSLSocket, String str, List<wp> list) {
        try {
            this.dq.invoke(null, sSLSocket, Proxy.newProxyInstance(s.class.getClassLoader(), new Class[]{this.p, this.s}, new dq(s.dq(list))));
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.bytedance.sdk.component.ox.d.dq.ox.dq("unable to set alpn", (Exception) e2);
        }
    }
}
