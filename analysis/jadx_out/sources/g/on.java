package g;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class on extends avu implements bto {
    final /* synthetic */ bho $constraints;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ehm this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public on(bho bhoVar, ehm ehmVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$constraints = bhoVar;
        this.this$0 = ehmVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cvw hdfVar;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            ayw aywVar = (ayw) this.L$0;
            NetworkRequest k = this.$constraints.k();
            if (k == null) {
                dgs dgsVar = (dgs) aywVar;
                dgsVar.getClass();
                dgsVar._cl(null);
                return dgi.f14134a;
            }
            cjz cjzVar = new cjz(baf.al(aywVar, null, null, new bqi(this.this$0, aywVar, null), 3), aywVar);
            if (Build.VERSION.SDK_INT >= 30) {
                aag aagVar = aag.f9844a;
                ConnectivityManager connectivityManager = this.this$0.f15547d;
                aagVar.getClass();
                synchronized (aag.f9845b) {
                    LinkedHashMap linkedHashMap = aag.f9846c;
                    boolean isEmpty = linkedHashMap.isEmpty();
                    linkedHashMap.put(cjzVar, k);
                    if (isEmpty) {
                        cyl f2 = cyl.f();
                        int i2 = gx.f18917a;
                        f2.getClass();
                        connectivityManager.registerDefaultNetworkCallback(aagVar);
                    }
                }
                hdfVar = new aps(cjzVar, connectivityManager, aagVar);
            } else {
                int i3 = eze.f16407a;
                ConnectivityManager connectivityManager2 = this.this$0.f15547d;
                eze ezeVar = new eze(cjzVar);
                fka fkaVar = new fka();
                try {
                    cyl f3 = cyl.f();
                    int i4 = gx.f18917a;
                    f3.getClass();
                    connectivityManager2.registerNetworkCallback(k, ezeVar);
                    fkaVar.element = true;
                } catch (RuntimeException e2) {
                    if (!dmc.by(e2.getClass().getName(), "TooManyRequestsException")) {
                        throw e2;
                    }
                    cyl f4 = cyl.f();
                    int i5 = gx.f18917a;
                    f4.getClass();
                    cjzVar.invoke(new das(7));
                }
                hdfVar = new hdf(fkaVar, connectivityManager2, ezeVar);
            }
            fom fomVar = new fom(hdfVar);
            this.label = 1;
            if (acw.ao(aywVar, fomVar, this) == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((on) e((ayw) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        on onVar = new on(this.$constraints, this.this$0, bdpVar);
        onVar.L$0 = obj;
        return onVar;
    }
}
