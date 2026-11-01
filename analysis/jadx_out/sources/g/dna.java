package g;

import android.database.Cursor;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class dna {

    /* renamed from: a, reason: collision with root package name */
    public static final String f14451a = cyl.g("EnqueueRunnable");

    public static void b(pc pcVar) {
        boolean z;
        fxb fxbVar = pcVar.f19800c;
        HashSet hashSet = new HashSet();
        hashSet.addAll(pcVar._aq);
        HashSet i = pc.i(pcVar);
        Iterator it = hashSet.iterator();
        while (true) {
            if (!it.hasNext()) {
                hashSet.removeAll(pcVar._aq);
                z = false;
                break;
            } else if (i.contains((String) it.next())) {
                z = true;
                break;
            }
        }
        if (z) {
            throw new IllegalStateException("WorkContinuation has cycles (" + pcVar + ")");
        }
        WorkDatabase workDatabase = fxbVar.az;
        workDatabase.an();
        try {
            cro.ac(workDatabase, fxbVar.aw, pcVar);
            boolean c2 = c(pcVar);
            workDatabase.ah();
            if (c2) {
                fje.c(fxbVar.aw, fxbVar.az, fxbVar.ay);
            }
        } finally {
            workDatabase.am();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x015d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01bd  */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(pc pcVar) {
        boolean z;
        boolean z2;
        boolean z3;
        List<dze> list;
        boolean z4;
        WorkDatabase workDatabase;
        boolean z5;
        boolean z6;
        boolean z7;
        HashSet i = pc.i(pcVar);
        fxb fxbVar = pcVar.f19800c;
        List list2 = pcVar.h;
        String[] strArr = (String[]) i.toArray(new String[0]);
        String str = pcVar.f19802e;
        dne dneVar = pcVar.f19801d;
        fxbVar.aw.f16981c.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        WorkDatabase workDatabase2 = fxbVar.az;
        boolean z8 = strArr != null && strArr.length > 0;
        if (z8) {
            z = true;
            z2 = false;
            z3 = false;
            for (String str2 : strArr) {
                fkj p = workDatabase2.a().p(str2);
                if (p == null) {
                    cyl.f().i(f14451a, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    break;
                }
                gys gysVar = p.q;
                z &= gysVar == gys.SUCCEEDED;
                if (gysVar == gys.FAILED) {
                    z3 = true;
                } else if (gysVar == gys.CANCELLED) {
                    z2 = true;
                }
            }
        } else {
            z = true;
            z2 = false;
            z3 = false;
        }
        boolean isEmpty = TextUtils.isEmpty(str);
        if (!isEmpty && !z8) {
            ArrayList z9 = workDatabase2.a().z(str);
            if (!z9.isEmpty()) {
                if (dneVar != dne.APPEND && dneVar != dne.APPEND_OR_REPLACE) {
                    if (dneVar == dne.KEEP) {
                        Iterator it = z9.iterator();
                        while (it.hasNext()) {
                            gys gysVar2 = ((apn) it.next()).f10632b;
                            if (gysVar2 != gys.ENQUEUED && gysVar2 != gys.RUNNING) {
                            }
                            z6 = false;
                        }
                    }
                    workDatabase2.ak(new grk(workDatabase2, str, fxbVar, 0));
                    gg a2 = workDatabase2.a();
                    Iterator it2 = z9.iterator();
                    while (it2.hasNext()) {
                        a2.w(((apn) it2.next()).f10631a);
                    }
                    list = list2;
                    z4 = isEmpty;
                    workDatabase = workDatabase2;
                    z5 = true;
                    while (r4.hasNext()) {
                    }
                    z6 = z5;
                    pcVar.f19798a = true;
                    return z6;
                }
                gtb d2 = workDatabase2.d();
                ArrayList arrayList = new ArrayList();
                Iterator it3 = z9.iterator();
                while (it3.hasNext()) {
                    apn apnVar = (apn) it3.next();
                    List list3 = list2;
                    String str3 = apnVar.f10631a;
                    d2.getClass();
                    boolean z10 = isEmpty;
                    WorkDatabase workDatabase3 = workDatabase2;
                    fcg o = fcg.o(1, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?");
                    o.e(1, str3);
                    WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) d2.f18714d;
                    workDatabase_Impl.al();
                    Cursor ag = workDatabase_Impl.ag(o);
                    try {
                        if (ag.moveToFirst() && ag.getInt(0) != 0) {
                            z7 = true;
                            if (!z7) {
                                gys gysVar3 = apnVar.f10632b;
                                boolean z11 = (gysVar3 == gys.SUCCEEDED) & z;
                                if (gysVar3 == gys.FAILED) {
                                    z3 = true;
                                } else if (gysVar3 == gys.CANCELLED) {
                                    z2 = true;
                                }
                                arrayList.add(apnVar.f10631a);
                                z = z11;
                            }
                            list2 = list3;
                            isEmpty = z10;
                            workDatabase2 = workDatabase3;
                        }
                        z7 = false;
                        if (!z7) {
                        }
                        list2 = list3;
                        isEmpty = z10;
                        workDatabase2 = workDatabase3;
                    } finally {
                        ag.close();
                        o.p();
                    }
                }
                list = list2;
                z4 = isEmpty;
                workDatabase = workDatabase2;
                ArrayList arrayList2 = arrayList;
                arrayList2 = arrayList;
                if (dneVar == dne.APPEND_OR_REPLACE && (z2 || z3)) {
                    gg a3 = workDatabase.a();
                    Iterator it4 = a3.z(str).iterator();
                    while (it4.hasNext()) {
                        a3.w(((apn) it4.next()).f10631a);
                    }
                    z2 = false;
                    z3 = false;
                    arrayList2 = Collections.EMPTY_LIST;
                }
                strArr = (String[]) arrayList2.toArray(strArr);
                z8 = strArr.length > 0;
                z5 = false;
                for (dze dzeVar : list) {
                    fkj fkjVar = dzeVar.f15118b;
                    UUID uuid = dzeVar.f15117a;
                    if (!z8 || z) {
                        fkjVar.f16929d = currentTimeMillis;
                    } else if (z3) {
                        fkjVar.q = gys.FAILED;
                    } else if (z2) {
                        fkjVar.q = gys.CANCELLED;
                    } else {
                        fkjVar.q = gys.BLOCKED;
                    }
                    if (fkjVar.q == gys.ENQUEUED) {
                        z5 = true;
                    }
                    gg a4 = workDatabase.a();
                    fkj am = cro.am(fxbVar.ay, fkjVar);
                    WorkDatabase_Impl workDatabase_Impl2 = a4.h;
                    workDatabase_Impl2.al();
                    workDatabase_Impl2.an();
                    try {
                        a4.l.c(am);
                        workDatabase_Impl2.ah();
                        workDatabase_Impl2.am();
                        if (z8) {
                            int length = strArr.length;
                            int i2 = 0;
                            while (i2 < length) {
                                String[] strArr2 = strArr;
                                String str4 = strArr2[i2];
                                fxb fxbVar2 = fxbVar;
                                boolean z12 = z5;
                                String uuid2 = uuid.toString();
                                bff.e(uuid2, "id.toString()");
                                gcy gcyVar = new gcy(uuid2, str4);
                                gtb d3 = workDatabase.d();
                                WorkDatabase_Impl workDatabase_Impl3 = (WorkDatabase_Impl) d3.f18714d;
                                workDatabase_Impl3.al();
                                workDatabase_Impl3.an();
                                try {
                                    ((sw) d3.f18712b).c(gcyVar);
                                    workDatabase_Impl3.ah();
                                    workDatabase_Impl3.am();
                                    i2++;
                                    strArr = strArr2;
                                    fxbVar = fxbVar2;
                                    z5 = z12;
                                } finally {
                                }
                            }
                        }
                        String[] strArr3 = strArr;
                        fxb fxbVar3 = fxbVar;
                        boolean z13 = z5;
                        dzh b2 = workDatabase.b();
                        String uuid3 = uuid.toString();
                        bff.e(uuid3, "id.toString()");
                        b2.ah(uuid3, dzeVar.f15119c);
                        if (!z4) {
                            ffr c2 = workDatabase.c();
                            String uuid4 = uuid.toString();
                            bff.e(uuid4, "id.toString()");
                            fap fapVar = new fap(str, uuid4);
                            WorkDatabase_Impl workDatabase_Impl4 = (WorkDatabase_Impl) c2.f16721f;
                            workDatabase_Impl4.al();
                            workDatabase_Impl4.an();
                            try {
                                ((sw) c2.f16719c).c(fapVar);
                                workDatabase_Impl4.ah();
                            } finally {
                            }
                        }
                        strArr = strArr3;
                        fxbVar = fxbVar3;
                        z5 = z13;
                    } catch (Throwable th) {
                        workDatabase_Impl2.am();
                        throw th;
                    }
                }
                z6 = z5;
                pcVar.f19798a = true;
                return z6;
            }
        }
        list = list2;
        z4 = isEmpty;
        workDatabase = workDatabase2;
        z5 = false;
        while (r4.hasNext()) {
        }
        z6 = z5;
        pcVar.f19798a = true;
        return z6;
    }
}
