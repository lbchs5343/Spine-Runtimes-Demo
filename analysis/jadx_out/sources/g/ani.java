package g;

import java.lang.reflect.Method;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
public final class ani implements dba {
    public volatile dba aa;

    /* renamed from: ab, reason: collision with root package name */
    public final Queue f10518ab;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10519d;
    public Boolean i;
    public Method s;
    public gma y;
    public final String z;

    public ani(String str, LinkedBlockingQueue linkedBlockingQueue, boolean z) {
        this.z = str;
        this.f10518ab = linkedBlockingQueue;
        this.f10519d = z;
    }

    @Override // g.dba
    public final void a(Object obj, String str, Object obj2) {
        ai().a(obj, str, obj2);
    }

    @Override // g.dba
    public final boolean ac() {
        return ai().ac();
    }

    @Override // g.dba
    public final boolean ad() {
        return ai().ad();
    }

    @Override // g.dba
    public final boolean ae() {
        return ai().ae();
    }

    @Override // g.dba
    public final boolean af() {
        return ai().af();
    }

    public final boolean ag() {
        Boolean bool = this.i;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.s = this.aa.getClass().getMethod("log", cae.class);
            this.i = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.i = Boolean.FALSE;
        }
        return this.i.booleanValue();
    }

    @Override // g.dba
    public final boolean ah() {
        return ai().ah();
    }

    public final dba ai() {
        if (this.aa != null) {
            return this.aa;
        }
        if (this.f10519d) {
            return eir.f15607d;
        }
        if (this.y == null) {
            Queue<cae> queue = this.f10518ab;
            gma gmaVar = new gma();
            gmaVar.logger = this;
            gmaVar.name = this.z;
            gmaVar.eventQueue = queue;
            this.y = gmaVar;
        }
        return this.y;
    }

    @Override // g.dba
    public final void b(Object obj, String str, Object obj2) {
        ai().b(obj, str, obj2);
    }

    @Override // g.dba
    public final void c(String str, Exception exc) {
        ai().c(str, exc);
    }

    @Override // g.dba
    public final void e(String str, Long l) {
        ai().e(str, l);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ani.class == obj.getClass() && this.z.equals(((ani) obj).z);
    }

    @Override // g.dba
    public final void f(String str) {
        ai().f(str);
    }

    @Override // g.dba
    public final void g(Object obj, String str) {
        ai().g(obj, str);
    }

    @Override // g.dba
    public final String getName() {
        return this.z;
    }

    @Override // g.dba
    public final void h(String str, Throwable th) {
        ai().h(str, th);
    }

    public final int hashCode() {
        return this.z.hashCode();
    }

    @Override // g.dba
    public final void j(String str) {
        ai().j(str);
    }

    @Override // g.dba
    public final void k(String str) {
        ai().k(str);
    }

    @Override // g.dba
    public final void l(String str, Throwable th) {
        ai().l(str, th);
    }

    @Override // g.dba
    public final void m(Object obj, String str) {
        ai().m(obj, str);
    }

    @Override // g.dba
    public final void n(String str, Object... objArr) {
        ai().n(str, objArr);
    }

    @Override // g.dba
    public final void o(String str) {
        ai().o(str);
    }

    @Override // g.dba
    public final void p(Object obj, String str) {
        ai().p(obj, str);
    }

    @Override // g.dba
    public final void q(String str, Object... objArr) {
        ai().q(str, objArr);
    }

    @Override // g.dba
    public final void r(Object obj, String str, Object obj2) {
        ai().r(obj, str, obj2);
    }

    @Override // g.dba
    public final void t(Object obj, String str, Object obj2) {
        ai().t(obj, str, obj2);
    }

    @Override // g.dba
    public final boolean u(bmk bmkVar) {
        return ai().u(bmkVar);
    }

    @Override // g.dba
    public final void v(Object obj, String str) {
        ai().v(obj, str);
    }

    @Override // g.dba
    public final void w(Object obj, Integer num) {
        ai().w(obj, num);
    }

    @Override // g.dba
    public final void x(Object... objArr) {
        ai().x(objArr);
    }
}
