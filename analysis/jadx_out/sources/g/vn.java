package g;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class vn {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f20182a;

    public vn(fzn fznVar) {
        ehm ehmVar;
        bff.p(fznVar, "trackers");
        ckq ckqVar = new ckq((cmh) fznVar.f17729d, 0);
        ckq ckqVar2 = new ckq((euw) fznVar.f17730e);
        ckq ckqVar3 = new ckq((cmh) fznVar.i, 4);
        cmh cmhVar = (cmh) fznVar.f17731f;
        ckq ckqVar4 = new ckq(cmhVar, 2);
        ckq ckqVar5 = new ckq(cmhVar, 3);
        erh erhVar = new erh(cmhVar);
        fkg fkgVar = new fkg(cmhVar);
        if (Build.VERSION.SDK_INT >= 28) {
            Context context = (Context) fznVar.h;
            int i = gx.f18917a;
            bff.p(context, "context");
            Object systemService = context.getSystemService("connectivity");
            bff.ag(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ehmVar = new ehm((ConnectivityManager) systemService);
        } else {
            ehmVar = null;
        }
        this.f20182a = fuv.b(new pe[]{ckqVar, ckqVar2, ckqVar3, ckqVar4, ckqVar5, erhVar, fkgVar, ehmVar});
    }

    public final boolean b(fkj fkjVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f20182a.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((pe) next).c(fkjVar)) {
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            cyl f2 = cyl.f();
            int i = gx.f18917a;
            gsv.bh(arrayList, null, vi.f20159b, 31);
            f2.getClass();
        }
        return arrayList.isEmpty();
    }

    public final bhw c(fkj fkjVar) {
        bff.p(fkjVar, "spec");
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f20182a.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((pe) next).b(fkjVar)) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(bkk.a(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((pe) it2.next()).a(fkjVar.r));
        }
        return gs.aq(new vd(1, (dqx[]) gsv.bf(arrayList2).toArray(new dqx[0])));
    }
}
