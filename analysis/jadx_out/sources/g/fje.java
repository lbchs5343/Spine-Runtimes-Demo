package g;

import android.os.Build;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class fje {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f16884a = 0;

    static {
        cyl.g("Schedulers");
    }

    public static void b(gg ggVar, dwm dwmVar, ArrayList arrayList) {
        if (arrayList.size() > 0) {
            dwmVar.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ggVar.ab(currentTimeMillis, ((fkj) it.next()).h);
            }
        }
    }

    public static void c(flk flkVar, WorkDatabase workDatabase, List list) {
        ArrayList arrayList;
        if (list == null || list.size() == 0) {
            return;
        }
        gg a2 = workDatabase.a();
        workDatabase.an();
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                arrayList = a2.t();
                b(a2, flkVar.f16981c, arrayList);
            } else {
                arrayList = null;
            }
            ArrayList ac = a2.ac(flkVar.f16980b);
            b(a2, flkVar.f16981c, ac);
            if (arrayList != null) {
                ac.addAll(arrayList);
            }
            ArrayList aa = a2.aa();
            workDatabase.ah();
            workDatabase.am();
            if (ac.size() > 0) {
                fkj[] fkjVarArr = (fkj[]) ac.toArray(new fkj[ac.size()]);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    giw giwVar = (giw) it.next();
                    if (giwVar.t()) {
                        giwVar.r(fkjVarArr);
                    }
                }
            }
            if (aa.size() > 0) {
                fkj[] fkjVarArr2 = (fkj[]) aa.toArray(new fkj[aa.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    giw giwVar2 = (giw) it2.next();
                    if (!giwVar2.t()) {
                        giwVar2.r(fkjVarArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.am();
            throw th;
        }
    }
}
