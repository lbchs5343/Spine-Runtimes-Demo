package g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.google.firebase.FirebaseCommonRegistrar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final /* synthetic */ class ftr implements dad, avn, fbg, bqq, dbd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f17399a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17400b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17401c;

    public /* synthetic */ ftr(Object obj, int i, Object obj2) {
        this.f17400b = i;
        this.f17401c = obj;
        this.f17399a = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ ftr(Executor executor, cvw cvwVar) {
        this.f17400b = 5;
        this.f17401c = executor;
        this.f17399a = (axr) cvwVar;
    }

    @Override // g.fbg
    public Object apply(Object obj) {
        cga cgaVar = (cga) this.f17401c;
        ku kuVar = (ku) this.f17399a;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        gnn gnnVar = cgaVar.f12810c;
        ArrayList k = cgaVar.k(sQLiteDatabase, kuVar, gnnVar.f18462e);
        for (cq cqVar : cq.values()) {
            if (cqVar != kuVar.f19568c) {
                int size = gnnVar.f18462e - k.size();
                if (size <= 0) {
                    break;
                }
                fpd d2 = ku.d();
                String str = kuVar.f19566a;
                if (str == null) {
                    throw new NullPointerException("Null backendName");
                }
                d2.f17190f = str;
                if (cqVar == null) {
                    throw new NullPointerException("Null priority");
                }
                d2.f17188d = cqVar;
                d2.f17187c = kuVar.f19567b;
                k.addAll(cgaVar.k(sQLiteDatabase, d2.w(), size));
            }
        }
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < k.size(); i++) {
            sb.append(((ess) k.get(i)).f16097a);
            if (i < k.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor query = sQLiteDatabase.query("event_metadata", new String[]{"event_id", abn.EXTRA_UA_APP_NAME, "value"}, sb.toString(), null, null, null, null);
        while (query.moveToNext()) {
            try {
                long j = query.getLong(0);
                Set set = (Set) hashMap.get(Long.valueOf(j));
                if (set == null) {
                    set = new HashSet();
                    hashMap.put(Long.valueOf(j), set);
                }
                set.add(new sa(query.getString(1), query.getString(2)));
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        query.close();
        ListIterator listIterator = k.listIterator();
        while (listIterator.hasNext()) {
            ess essVar = (ess) listIterator.next();
            long j2 = essVar.f16097a;
            if (hashMap.containsKey(Long.valueOf(j2))) {
                daw i2 = essVar.f16099c.i();
                for (sa saVar : (Set) hashMap.get(Long.valueOf(j2))) {
                    i2.s(saVar.f19948a, saVar.f19949b);
                }
                listIterator.set(new ess(j2, essVar.f16098b, i2.y()));
            }
        }
        return k;
    }

    @Override // g.avn
    public Object e(xa xaVar) {
        String valueOf;
        int i;
        String str = (String) this.f17401c;
        bfb bfbVar = (bfb) this.f17399a;
        Context context = (Context) xaVar.b(Context.class);
        switch (bfbVar.f11435a) {
            case 9:
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                if (applicationInfo != null) {
                    valueOf = String.valueOf(applicationInfo.targetSdkVersion);
                    break;
                }
                valueOf = "";
                break;
            case 10:
                ApplicationInfo applicationInfo2 = context.getApplicationInfo();
                if (applicationInfo2 != null && Build.VERSION.SDK_INT >= 24) {
                    i = applicationInfo2.minSdkVersion;
                    valueOf = String.valueOf(i);
                    break;
                }
                valueOf = "";
                break;
            case 11:
                int i2 = Build.VERSION.SDK_INT;
                if (!context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
                    if (!context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                        if (i2 >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                            valueOf = LiveConfigKey.AUTO;
                            break;
                        } else {
                            if (i2 >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                                valueOf = "embedded";
                                break;
                            }
                            valueOf = "";
                            break;
                        }
                    } else {
                        valueOf = "watch";
                        break;
                    }
                } else {
                    valueOf = "tv";
                    break;
                }
                break;
            default:
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName != null) {
                    valueOf = FirebaseCommonRegistrar.a(installerPackageName);
                    break;
                }
                valueOf = "";
                break;
        }
        return new aj(str, valueOf);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [g.axr, g.cvw] */
    @Override // g.dbd
    public Object g(eje ejeVar) {
        Executor executor = (Executor) this.f17401c;
        ?? r1 = (axr) this.f17399a;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        td tdVar = new td(1, atomicBoolean);
        fj fjVar = fj.INSTANCE;
        frr frrVar = ejeVar.f15642d;
        if (frrVar != null) {
            frrVar.addListener(tdVar, fjVar);
        }
        executor.execute(new gtt(atomicBoolean, ejeVar, r1));
        return dgi.f14134a;
    }

    @Override // g.bqq
    public Object i() {
        switch (this.f17400b) {
            case 3:
                dwp dwpVar = (dwp) this.f17401c;
                Iterable iterable = (Iterable) this.f17399a;
                cga cgaVar = (cga) dwpVar.h;
                cgaVar.getClass();
                if (iterable.iterator().hasNext()) {
                    cgaVar.m().compileStatement("DELETE FROM events WHERE _id in " + cga.g(iterable)).execute();
                    break;
                }
                break;
            default:
                dwp dwpVar2 = (dwp) this.f17401c;
                Iterator it = ((HashMap) this.f17399a).entrySet().iterator();
                while (it.hasNext()) {
                    ((cga) dwpVar2.f14962f).l(((Integer) r2.getValue()).intValue(), gwo.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
                }
                break;
        }
        return null;
    }

    @Override // g.dad
    public void onCancel() {
        fqk fqkVar = (fqk) this.f17401c;
        gfh gfhVar = (gfh) this.f17399a;
        fqkVar.cancel();
        gfhVar.run();
    }
}
