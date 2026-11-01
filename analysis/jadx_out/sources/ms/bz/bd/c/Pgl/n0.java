package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import g.cad;
import g.ekk;
import g.fqa;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class n0 {

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f21174a;

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f21175b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final CopyOnWriteArraySet f21176c = new CopyOnWriteArraySet();

    public interface pgla {
    }

    public static synchronized boolean d(Context context, a aVar) {
        synchronized (n0.class) {
            try {
                if (context == null) {
                    throw new NullPointerException((String) pblk.a(16777217, 0, 0L, "c9084d", new byte[]{113, 52, 77, 88, 14, 107, 116, 88, 98, 103, 103, 55, 71, 12, 5, 124, 116, 88, 99, 109, 50, 53, 86, 64, 7}));
                }
                if (aVar == null) {
                    throw new NullPointerException((String) pblk.a(16777217, 0, 0L, "dae32d", new byte[]{118, 108, 24, 65, 4, 116, 39, 67, 59, 118, 121, 103, 86, 73, 2, 103, 39, 66, 49, 35, 123, 118, 26, 75}));
                }
                String str = aVar.f21154g;
                if (str.length() <= 0) {
                    throw new NullPointerException((String) pblk.a(16777217, 0, 0L, "784b19", new byte[]{39, 42, 87, 63, 42, 110, 57, 12, 118, 38, 102, 56, 66, 86, 29, 43, 32}));
                }
                if (!f21174a) {
                    synchronized (n0.class) {
                        try {
                            if (!f21174a) {
                                g(context);
                                f21174a = true;
                            }
                        } finally {
                        }
                    }
                }
                if (f21175b.containsKey(str)) {
                    return false;
                }
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(a.j(""));
                jSONArray.put(a.j(aVar.h));
                jSONArray.put(a.j(aVar.f21154g));
                jSONArray.put(a.j(aVar.f21149b));
                jSONArray.put(a.j(n1.f21177a));
                jSONArray.put(a.j(""));
                jSONArray.put(a.j(aVar.f21151d));
                jSONArray.put(a.j(""));
                jSONArray.put(a.j(""));
                jSONArray.put(a.j(""));
                jSONArray.put(String.valueOf(aVar.f21150c));
                jSONArray.put(String.valueOf(-1));
                jSONArray.put(String.valueOf(aVar.f21152e));
                JSONArray jSONArray2 = new JSONArray();
                for (Map.Entry entry : aVar.i.entrySet()) {
                    if (!TextUtils.isEmpty((CharSequence) entry.getKey())) {
                        jSONArray2.put(a.j(entry.getKey()));
                        jSONArray2.put(a.j(entry.getValue()));
                    }
                }
                jSONArray.put(jSONArray2);
                JSONArray jSONArray3 = new JSONArray();
                for (Map.Entry entry2 : aVar.f21148a.entrySet()) {
                    if (!TextUtils.isEmpty((CharSequence) entry2.getKey())) {
                        if (((String) entry2.getKey()).equals("kOA1")) {
                            TextUtils.equals((CharSequence) entry2.getValue(), "1");
                        }
                        jSONArray3.put(a.j(entry2.getKey()));
                        jSONArray3.put(a.j(entry2.getValue()));
                    }
                }
                jSONArray.put(jSONArray3);
                String jSONArray4 = jSONArray.toString();
                SparseArray sparseArray = pblb.f21187a;
                if (!((Boolean) pblk.a(67108865, 0, 0L, jSONArray4, null)).booleanValue()) {
                    return false;
                }
                f21175b.put(str, aVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized m0 e() {
        synchronized (n0.class) {
            if (!f21174a) {
                return null;
            }
            SparseArray sparseArray = pblb.f21187a;
            Object a2 = pblk.a(67108866, 0, 0L, "1371", null);
            if (a2 == null) {
                return null;
            }
            a aVar = (a) f21175b.get("1371");
            if (aVar == null) {
                return null;
            }
            return new m0(aVar, ms.bz.bd.c.Pgl.pgla.f21199a.f21200b, ((Long) a2).longValue());
        }
    }

    public static synchronized void f() {
        synchronized (n0.class) {
            if (ms.bz.bd.c.Pgl.pgla.f21199a.f21200b != null) {
                a aVar = (a) f21175b.get("1371");
                if (e() != null && aVar != null) {
                    f21176c.addAll(aVar.f21153f);
                    cad a2 = fqa.a();
                    if (a2 != null) {
                        a2.b((String) pblk.a(16777217, 0, 0L, "6b197d", new byte[]{24, 105, 76, 68, 28, 76, 39, 70, 112, 102, 53, 116}));
                    }
                }
            }
        }
    }

    public static synchronized void g(Context context) {
        Context context2;
        synchronized (n0.class) {
            if (!f21174a) {
                Context applicationContext = context.getApplicationContext();
                ms.bz.bd.c.Pgl.pgla pglaVar = ms.bz.bd.c.Pgl.pgla.f21199a;
                if (applicationContext != null) {
                    pglaVar.getClass();
                    context2 = applicationContext.getApplicationContext();
                } else {
                    context2 = null;
                }
                pglaVar.f21200b = context2;
                pblt.a(applicationContext);
                pblk.a(16777217, 0, 0L, "970856", new byte[]{102, 56, 80});
                pblb.b(16777218, new l());
                pblb.b(16777217, new w());
                pblk.a(16777217, 0, 0L, "85c5d3", new byte[]{103, 58, 20});
                pblb.b(16777219, new f0());
                pblb.b(16777221, new g0());
                pblb.b(16777222, new h0());
                pblb.b(16777223, new i0());
                pblb.b(16777224, new j0());
                pblb.b(16777225, new k0());
                pblb.b(16777226, new l0());
                pblb.b(16777228, new b());
                pblb.b(16777232, new c());
                pblb.b(16777233, new d());
                pblb.b(16777235, new e());
                pblb.b(16777238, new f());
                pblb.b(16777239, new g());
                pblb.b(16777241, new h());
                pblb.b(16777242, new i());
                pblb.b(16777243, new j());
                pblb.b(16777244, new k());
                pblb.b(16777245, new m());
                pblb.b(16777246, new n());
                pblb.b(16777247, new o());
                pblb.b(16777248, new p());
                pblb.b(16777249, new q());
                pblb.b(16777250, new r());
                pblb.b(16777251, new s());
                pblb.b(16777240, new t());
                pblb.b(16777252, new u());
                pblb.b(16777253, new v());
                pblb.b(16777254, new x());
                pblb.b(16777255, new y());
                pblb.b(16777256, new z());
                pblb.b(16777257, new a0());
                pblb.b(16777258, new b0());
                pblb.b(16777259, new c0());
                pblb.b(16777261, new d0());
                pblb.b(33554435, new e0());
                pblj.b();
                ekk.a();
                pblk.a(16777219, 0, 0L, null, applicationContext);
                f21174a = true;
            }
        }
    }
}
