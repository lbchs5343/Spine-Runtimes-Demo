package g;

import android.database.Cursor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class grk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f18645a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fxb f18646b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18647c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WorkDatabase f18648d;

    public /* synthetic */ grk(WorkDatabase workDatabase, String str, fxb fxbVar, int i) {
        this.f18647c = i;
        this.f18648d = workDatabase;
        this.f18645a = str;
        this.f18646b = fxbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fcg o;
        Cursor ag;
        switch (this.f18647c) {
            case 0:
                gg a2 = this.f18648d.a();
                a2.getClass();
                o = fcg.o(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                o.e(1, this.f18645a);
                WorkDatabase_Impl workDatabase_Impl = a2.h;
                workDatabase_Impl.al();
                ag = workDatabase_Impl.ag(o);
                try {
                    ArrayList arrayList = new ArrayList(ag.getCount());
                    while (ag.moveToNext()) {
                        arrayList.add(ag.getString(0));
                    }
                    ag.close();
                    o.p();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        eyt.be(this.f18646b, (String) it.next());
                    }
                    return;
                } finally {
                }
            default:
                gg a3 = this.f18648d.a();
                a3.getClass();
                o = fcg.o(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)");
                o.e(1, this.f18645a);
                WorkDatabase_Impl workDatabase_Impl2 = a3.h;
                workDatabase_Impl2.al();
                ag = workDatabase_Impl2.ag(o);
                try {
                    ArrayList arrayList2 = new ArrayList(ag.getCount());
                    while (ag.moveToNext()) {
                        arrayList2.add(ag.getString(0));
                    }
                    ag.close();
                    o.p();
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        eyt.be(this.f18646b, (String) it2.next());
                    }
                    return;
                } finally {
                }
        }
    }
}
