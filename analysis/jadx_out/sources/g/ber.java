package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class ber implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ daw f11400a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f11401b = new Object[0];

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f11402c;

    public ber(daw dawVar, Class cls) {
        this.f11400a = dawVar;
        this.f11402c = cls;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
    
        r1 = g.gom.g(r10, r0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
    
        ((j$.util.concurrent.ConcurrentHashMap) r10.f13886e).put(r9, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0075, code lost:
    
        r9 = (g.gom) r2;
     */
    @Override // java.lang.reflect.InvocationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        gom gomVar;
        Class cls = this.f11402c;
        if (method.getDeclaringClass() == Object.class) {
            return method.invoke(this, objArr);
        }
        if (objArr == null) {
            objArr = this.f11401b;
        }
        Object[] objArr2 = objArr;
        fbc fbcVar = bfh.f11445b;
        if (fbcVar.k(method)) {
            return fbcVar.j(method, cls, obj, objArr2);
        }
        daw dawVar = this.f11400a;
        while (true) {
            Object obj2 = ((ConcurrentHashMap) dawVar.f13886e).get(method);
            if (!(obj2 instanceof gom)) {
                if (obj2 == null) {
                    Object obj3 = new Object();
                    synchronized (obj3) {
                        try {
                            obj2 = ((ConcurrentHashMap) dawVar.f13886e).putIfAbsent(method, obj3);
                            if (obj2 == null) {
                                try {
                                    break;
                                } catch (Throwable th) {
                                    ((ConcurrentHashMap) dawVar.f13886e).remove(method);
                                    throw th;
                                }
                            }
                        } finally {
                        }
                    }
                }
                synchronized (obj2) {
                    try {
                        Object obj4 = ((ConcurrentHashMap) dawVar.f13886e).get(method);
                        if (obj4 != null) {
                            break;
                        }
                    } finally {
                    }
                }
                break;
            }
            gomVar = (gom) obj2;
            break;
        }
        gom gomVar2 = gomVar;
        return gomVar2.c(new fdw(gomVar2.f18500d, obj, objArr2, gomVar2.f18501e, gomVar2.f18502f), objArr2);
    }
}
