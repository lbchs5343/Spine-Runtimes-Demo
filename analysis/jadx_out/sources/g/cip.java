package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class cip implements eiv {

    /* renamed from: a, reason: collision with root package name */
    public static final String f12941a = cyl.g("CommandHandler");

    /* renamed from: c, reason: collision with root package name */
    public final dwm f12943c;

    /* renamed from: d, reason: collision with root package name */
    public final gtb f12944d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f12945e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f12946f = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Object f12942b = new Object();

    public cip(Context context, dwm dwmVar, gtb gtbVar) {
        this.f12945e = context;
        this.f12943c = dwmVar;
        this.f12944d = gtbVar;
    }

    public static void g(Intent intent, gxm gxmVar) {
        intent.putExtra("KEY_WORKSPEC_ID", gxmVar.f18956a);
        intent.putExtra("KEY_WORKSPEC_GENERATION", gxmVar.f18957b);
    }

    public static gxm i(Intent intent) {
        return new gxm(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_WORKSPEC_GENERATION", 0));
    }

    @Override // g.eiv
    public final void h(gxm gxmVar, boolean z) {
        synchronized (this.f12942b) {
            try {
                ggk ggkVar = (ggk) this.f12946f.remove(gxmVar);
                this.f12944d.p(gxmVar);
                if (ggkVar != null) {
                    ggkVar.t(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean j() {
        boolean z;
        synchronized (this.f12942b) {
            z = !this.f12946f.isEmpty();
        }
        return z;
    }

    public final void k(Intent intent, int i, jf jfVar) {
        List<aci> list;
        String action = intent.getAction();
        int i2 = 7;
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            cyl f2 = cyl.f();
            Objects.toString(intent);
            f2.getClass();
            Context context = this.f12945e;
            bqw bqwVar = new bqw(context, this.f12943c, i, jfVar);
            ArrayList x = jfVar.f19478g.az.a().x();
            int i3 = bdd.f11308a;
            Iterator it = x.iterator();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (it.hasNext()) {
                bho bhoVar = ((fkj) it.next()).r;
                z |= bhoVar.f11594d;
                z2 |= bhoVar.i;
                z3 |= bhoVar.f11596f;
                z4 |= bhoVar.f11595e != dnx.NOT_REQUIRED;
                if (z && z2 && z3 && z4) {
                    break;
                }
            }
            int i4 = ConstraintProxyUpdateReceiver.f337a;
            Intent intent2 = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
            intent2.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
            intent2.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
            context.sendBroadcast(intent2);
            ArrayList arrayList = new ArrayList(x.size());
            bqwVar.f12049a.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it2 = x.iterator();
            while (it2.hasNext()) {
                fkj fkjVar = (fkj) it2.next();
                if (currentTimeMillis >= fkjVar.aa() && (!fkjVar.ab() || bqwVar.f12051c.b(fkjVar))) {
                    arrayList.add(fkjVar);
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                fkj fkjVar2 = (fkj) it3.next();
                String str = fkjVar2.h;
                gxm j = awt.j(fkjVar2);
                Intent intent3 = new Intent(context, (Class<?>) SystemAlarmService.class);
                intent3.setAction("ACTION_DELAY_MET");
                g(intent3, j);
                cyl.f().getClass();
                ((bxc) ((gkr) jfVar.k).f18323c).execute(new hdo(jfVar, intent3, bqwVar.f12050b, i2));
            }
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            cyl f3 = cyl.f();
            Objects.toString(intent);
            f3.getClass();
            jfVar.f19478g.bi();
            return;
        }
        Bundle extras = intent.getExtras();
        String[] strArr = {"KEY_WORKSPEC_ID"};
        if (extras == null || extras.isEmpty() || extras.get(strArr[0]) == null) {
            cyl.f().i(f12941a, "Invalid request for " + action + " , requires KEY_WORKSPEC_ID .");
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            Context context2 = this.f12945e;
            gxm i5 = i(intent);
            cyl f4 = cyl.f();
            i5.toString();
            f4.getClass();
            WorkDatabase workDatabase = jfVar.f19478g.az;
            workDatabase.an();
            try {
                fkj p = workDatabase.a().p(i5.f18956a);
                if (p == null) {
                    cyl f5 = cyl.f();
                    i5.toString();
                    f5.getClass();
                    return;
                }
                if (p.q.b()) {
                    cyl f6 = cyl.f();
                    i5.toString();
                    f6.getClass();
                    return;
                }
                long aa = p.aa();
                if (p.ab()) {
                    cyl f7 = cyl.f();
                    i5.toString();
                    f7.getClass();
                    daf.c(context2, workDatabase, i5, aa);
                    Intent intent4 = new Intent(context2, (Class<?>) SystemAlarmService.class);
                    intent4.setAction("ACTION_CONSTRAINTS_CHANGED");
                    ((bxc) ((gkr) jfVar.k).f18323c).execute(new hdo(jfVar, intent4, i, i2));
                } else {
                    cyl f8 = cyl.f();
                    i5.toString();
                    f8.getClass();
                    daf.c(context2, workDatabase, i5, aa);
                }
                workDatabase.ah();
                return;
            } finally {
                workDatabase.am();
            }
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            synchronized (this.f12942b) {
                try {
                    gxm i6 = i(intent);
                    cyl f9 = cyl.f();
                    i6.toString();
                    f9.getClass();
                    if (this.f12946f.containsKey(i6)) {
                        cyl f10 = cyl.f();
                        i6.toString();
                        f10.getClass();
                    } else {
                        ggk ggkVar = new ggk(this.f12945e, i, jfVar, this.f12944d.w(i6));
                        this.f12946f.put(i6, ggkVar);
                        ggkVar.s();
                    }
                } finally {
                }
            }
            return;
        }
        if (!"ACTION_STOP_WORK".equals(action)) {
            if (!"ACTION_EXECUTION_COMPLETED".equals(action)) {
                cyl f11 = cyl.f();
                intent.toString();
                f11.getClass();
                return;
            } else {
                gxm i7 = i(intent);
                boolean z5 = intent.getExtras().getBoolean("KEY_NEEDS_RESCHEDULE");
                cyl f12 = cyl.f();
                intent.toString();
                f12.getClass();
                h(i7, z5);
                return;
            }
        }
        gtb gtbVar = this.f12944d;
        Bundle extras2 = intent.getExtras();
        String string = extras2.getString("KEY_WORKSPEC_ID");
        if (extras2.containsKey("KEY_WORKSPEC_GENERATION")) {
            int i8 = extras2.getInt("KEY_WORKSPEC_GENERATION");
            ArrayList arrayList2 = new ArrayList(1);
            aci p2 = gtbVar.p(new gxm(string, i8));
            list = arrayList2;
            if (p2 != null) {
                arrayList2.add(p2);
                list = arrayList2;
            }
        } else {
            list = gtbVar.o(string);
        }
        for (aci aciVar : list) {
            cyl.f().getClass();
            flz flzVar = jfVar.f19475d;
            flzVar.getClass();
            bff.p(aciVar, "workSpecId");
            flzVar.b(aciVar, -512);
            gxm gxmVar = aciVar.f9969a;
            Context context3 = this.f12945e;
            WorkDatabase workDatabase2 = jfVar.f19478g.az;
            int i9 = daf.f13847a;
            duw g2 = workDatabase2.g();
            cgv o = g2.o(gxmVar);
            if (o != null) {
                daf.b(context3, gxmVar, o.f12857c);
                cyl f13 = cyl.f();
                gxmVar.toString();
                f13.getClass();
                String str2 = gxmVar.f18956a;
                int i10 = gxmVar.f18957b;
                WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) g2.h;
                workDatabase_Impl.al();
                bnh bnhVar = (bnh) g2.f14865e;
                cap i11 = bnhVar.i();
                i11.e(1, str2);
                i11.f(2, i10);
                try {
                    workDatabase_Impl.an();
                    try {
                        i11.h();
                        workDatabase_Impl.ah();
                        workDatabase_Impl.am();
                    } catch (Throwable th) {
                        workDatabase_Impl.am();
                        throw th;
                    }
                } finally {
                    bnhVar.h(i11);
                }
            }
            jfVar.h(gxmVar, false);
        }
    }
}
