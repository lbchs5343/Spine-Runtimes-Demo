package g;

import java.util.Collections;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class gxl implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cwx f18951a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dsj f18952b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ egl f18953c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ hed f18954d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ hed f18955e;

    public /* synthetic */ gxl(dwu dwuVar, egl eglVar, hed hedVar, hed hedVar2, cwx cwxVar, dsj dsjVar) {
        this.f18953c = eglVar;
        this.f18954d = hedVar;
        this.f18955e = hedVar2;
        this.f18951a = cwxVar;
        this.f18952b = dsjVar;
    }

    public final /* synthetic */ Function andThen(Function function) {
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        ayu ayuVar;
        eek eekVar = (eek) obj;
        if (eekVar.ah != hay.SGET || !this.f18953c.test(eekVar)) {
            return null;
        }
        hed hedVar = this.f18954d;
        hed hedVar2 = this.f18955e;
        if (hedVar == null) {
            dwg dwgVar = hedVar2.am.f12631ab;
            cwx cwxVar = this.f18951a;
            ve h = ve.h(dwgVar, cwxVar);
            List list = Collections.EMPTY_LIST;
            cff cffVar = cwx.an;
            ayuVar = ayu.k(dwgVar, h, "values", list, new aoe(cwxVar));
        } else {
            ayuVar = hedVar.al;
        }
        hdc hdcVar = new hdc(ayuVar, eqp.STATIC, 0);
        hdcVar.ax(eekVar.ai);
        if (hedVar == null) {
            hdcVar.w(csv.FORCE_RAW_NAME);
        }
        hedVar2.bw("Replace access to removed values field (" + this.f18952b.f14712e + ") with 'values()' method");
        return hdcVar;
    }

    public final /* synthetic */ Function compose(Function function) {
        return j$.util.function.k.$default$compose(this, function);
    }
}
