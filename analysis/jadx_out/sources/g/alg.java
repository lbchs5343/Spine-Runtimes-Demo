package g;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public abstract class alg implements dba, Serializable {
    private static final long serialVersionUID = -2529255052481744503L;
    protected String name;

    @Override // g.dba
    public final void a(Object obj, String str, Object obj2) {
        s(bmk.DEBUG, str, obj, obj2);
    }

    @Override // g.dba
    public final void b(Object obj, String str, Object obj2) {
        s(bmk.ERROR, str, obj, obj2);
    }

    @Override // g.dba
    public final void c(String str, Exception exc) {
        i(bmk.WARN, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(bmk bmkVar, String str, Object[] objArr) {
        Throwable th;
        if (objArr.length != 0) {
            Object obj = objArr[objArr.length - 1];
            if (obj instanceof Throwable) {
                th = (Throwable) obj;
                if (th != null) {
                    i(bmkVar, objArr);
                    return;
                }
                if (objArr.length == 0) {
                    throw new IllegalStateException("non-sensical empty or null argument array");
                }
                int length = objArr.length - 1;
                Object[] objArr2 = new Object[length];
                if (length > 0) {
                    System.arraycopy(objArr, 0, objArr2, 0, length);
                }
                i(bmkVar, objArr2);
                return;
            }
        }
        th = null;
        if (th != null) {
        }
    }

    @Override // g.dba
    public final void e(String str, Long l) {
        i(bmk.TRACE, new Object[]{l});
    }

    @Override // g.dba
    public final void f(String str) {
        i(bmk.ERROR, null);
    }

    @Override // g.dba
    public final void g(Object obj, String str) {
        i(bmk.INFO, new Object[]{obj});
    }

    @Override // g.dba
    public abstract String getName();

    @Override // g.dba
    public final void h(String str, Throwable th) {
        i(bmk.DEBUG, null);
    }

    public abstract void i(bmk bmkVar, Object[] objArr);

    @Override // g.dba
    public final void j(String str) {
        i(bmk.INFO, null);
    }

    @Override // g.dba
    public final void k(String str) {
        i(bmk.WARN, null);
    }

    @Override // g.dba
    public final void l(String str, Throwable th) {
        i(bmk.ERROR, null);
    }

    @Override // g.dba
    public final void m(Object obj, String str) {
        i(bmk.ERROR, new Object[]{obj});
    }

    @Override // g.dba
    public final void n(String str, Object... objArr) {
        d(bmk.DEBUG, str, objArr);
    }

    @Override // g.dba
    public final void o(String str) {
        i(bmk.DEBUG, null);
    }

    @Override // g.dba
    public final void p(Object obj, String str) {
        i(bmk.WARN, new Object[]{obj});
    }

    @Override // g.dba
    public final void q(String str, Object... objArr) {
        d(bmk.WARN, str, objArr);
    }

    @Override // g.dba
    public final void r(Object obj, String str, Object obj2) {
        s(bmk.TRACE, str, obj, obj2);
    }

    public Object readResolve() throws ObjectStreamException {
        return dsr.l(getName());
    }

    public final void s(bmk bmkVar, String str, Object obj, Object obj2) {
        if (obj2 instanceof Throwable) {
            i(bmkVar, new Object[]{obj});
        } else {
            i(bmkVar, new Object[]{obj, obj2});
        }
    }

    @Override // g.dba
    public final void t(Object obj, String str, Object obj2) {
        s(bmk.WARN, str, obj, obj2);
    }

    @Override // g.dba
    public final /* synthetic */ boolean u(bmk bmkVar) {
        return awf.v(this, bmkVar);
    }

    @Override // g.dba
    public final void v(Object obj, String str) {
        i(bmk.DEBUG, new Object[]{obj});
    }

    @Override // g.dba
    public final void w(Object obj, Integer num) {
        s(bmk.INFO, "Found resource shared library {}, pkgId: {}", obj, num);
    }

    @Override // g.dba
    public final void x(Object... objArr) {
        d(bmk.ERROR, "Potential zip bomb attack detected, invalid sizes: compressed {}, uncompressed {}, name {}", objArr);
    }
}
