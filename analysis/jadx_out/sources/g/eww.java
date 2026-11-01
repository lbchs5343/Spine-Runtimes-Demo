package g;

import android.database.Cursor;
import android.os.Build;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class eww {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f16298a = 0;

    static {
        bff.e(cyl.g("DiagnosticsWrkr"), "tagWithPrefix(\"DiagnosticsWrkr\")");
    }

    public static final void b(ffr ffrVar, dzh dzhVar, duw duwVar, ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append("\n Id \t Class Name\t " + (Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id") + "\t State\t Unique Name\t Tags\t");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            fkj fkjVar = (fkj) it.next();
            gxm j = awt.j(fkjVar);
            String str = fkjVar.h;
            cgv o = duwVar.o(j);
            Integer valueOf = o != null ? Integer.valueOf(o.f12857c) : null;
            ffrVar.getClass();
            fcg o2 = fcg.o(1, "SELECT name FROM workname WHERE work_spec_id=?");
            o2.e(1, str);
            WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) ffrVar.f16721f;
            workDatabase_Impl.al();
            Cursor ag = workDatabase_Impl.ag(o2);
            try {
                ArrayList arrayList2 = new ArrayList(ag.getCount());
                while (ag.moveToNext()) {
                    arrayList2.add(ag.getString(0));
                }
                ag.close();
                o2.p();
                String bh = gsv.bh(arrayList2, ",", null, 62);
                String bh2 = gsv.bh(dzhVar.p(str), ",", null, 62);
                StringBuilder p = awf.p("\n", str, "\t ");
                p.append(fkjVar.u);
                p.append("\t ");
                p.append(valueOf);
                p.append("\t ");
                p.append(fkjVar.q.name());
                p.append("\t ");
                p.append(bh);
                p.append("\t ");
                p.append(bh2);
                p.append('\t');
                sb.append(p.toString());
            } catch (Throwable th) {
                ag.close();
                o2.p();
                throw th;
            }
        }
        bff.e(sb.toString(), "StringBuilder().apply(builderAction).toString()");
    }
}
