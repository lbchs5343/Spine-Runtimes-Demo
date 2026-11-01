package g;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class at {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f10788a = dsr.k(at.class);

    /* renamed from: b, reason: collision with root package name */
    public static final grx f10789b = new grx("");

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f10790c;

    public at(ArrayList arrayList) {
        new EnumMap(qp.class);
        this.f10790c = arrayList;
    }

    public final void d(cci cciVar) {
        cci bd = cciVar.bd();
        if (bd != cciVar) {
            d(bd);
            return;
        }
        try {
            f(cciVar, false);
        } catch (Exception | StackOverflowError e2) {
            throw new gck("Failed to process class: " + cciVar.ak.m(), e2);
        }
    }

    public final emz e(cci cciVar) {
        cci bd = cciVar.bd();
        if (bd != cciVar) {
            return e(bd);
        }
        try {
            if (cciVar.l.g(csv.DONT_GENERATE)) {
                f(cciVar, false);
                return f10789b;
            }
            Iterator it = cciVar.aa.iterator();
            while (it.hasNext()) {
                f((cci) it.next(), false);
            }
            if (!cciVar.f12634f.isEmpty()) {
                f(cciVar, false);
                Iterator it2 = cciVar.f12634f.iterator();
                while (it2.hasNext()) {
                    f((cci) it2.next(), false);
                }
            }
            emz f2 = f(cciVar, true);
            if (f2 != null) {
                return f2;
            }
            throw new gck("Codegen failed");
        } catch (Exception e2) {
            e = e2;
            throw new gck("Failed to generate code for class: " + cciVar.ak.m(), e);
        } catch (StackOverflowError e3) {
            e = e3;
            throw new gck("Failed to generate code for class: " + cciVar.ak.m(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00ab A[Catch: all -> 0x0027, TryCatch #1 {all -> 0x0027, blocks: (B:10:0x0011, B:12:0x001b, B:13:0x0030, B:15:0x003a, B:16:0x0042, B:18:0x0048, B:20:0x004e, B:22:0x0058, B:23:0x005e, B:25:0x0064, B:26:0x0067, B:28:0x006d, B:29:0x0077, B:31:0x007d, B:33:0x0087, B:35:0x008d, B:37:0x009e, B:39:0x00a5, B:41:0x00a7, B:50:0x00ab, B:51:0x00c7, B:52:0x00c9), top: B:9:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c9 A[Catch: all -> 0x0027, TryCatch #1 {all -> 0x0027, blocks: (B:10:0x0011, B:12:0x001b, B:13:0x0030, B:15:0x003a, B:16:0x0042, B:18:0x0048, B:20:0x004e, B:22:0x0058, B:23:0x005e, B:25:0x0064, B:26:0x0067, B:28:0x006d, B:29:0x0077, B:31:0x007d, B:33:0x0087, B:35:0x008d, B:37:0x009e, B:39:0x00a5, B:41:0x00a7, B:50:0x00ab, B:51:0x00c7, B:52:0x00c9), top: B:9:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final emz f(cci cciVar, boolean z) {
        if (z || cciVar.ad != gwz.PROCESS_COMPLETE) {
            evh.n();
            synchronized (cciVar.ak) {
                try {
                    try {
                        csv csvVar = csv.CLASS_DEEP_RELOAD;
                        if (cciVar.l.g(csvVar)) {
                            cciVar.v(csvVar);
                            cciVar.ax();
                            cciVar.w(csv.CLASS_UNLOADED);
                        }
                        csv csvVar2 = csv.CLASS_UNLOADED;
                        if (cciVar.l.g(csvVar2)) {
                            cciVar.f12631ab.z(cciVar);
                            cciVar.v(csvVar2);
                        }
                        if (cciVar.ad == gwz.GENERATED_AND_UNLOADED) {
                            cciVar.ad = gwz.NOT_LOADED;
                        }
                        if (z) {
                            csv csvVar3 = csv.RELOAD_AT_CODEGEN_STAGE;
                            if (cciVar.l.g(csvVar3)) {
                                cciVar.v(csvVar3);
                                cciVar.bh();
                            }
                        }
                        if (cciVar.ad == gwz.NOT_LOADED) {
                            cciVar.aw();
                        }
                        if (cciVar.ad == gwz.LOADED) {
                            cciVar.ad = gwz.PROCESS_STARTED;
                            Iterator it = this.f10790c.iterator();
                            while (it.hasNext()) {
                                cmb.w((pj) it.next(), cciVar);
                            }
                            cciVar.ad = gwz.PROCESS_COMPLETE;
                        }
                        if (!z) {
                            return null;
                        }
                        evh.n();
                        emz at = bff.at(cciVar);
                        if (!cciVar.l.g(csv.DONT_UNLOAD_CLASS)) {
                            cciVar.bh();
                            cciVar.ad = gwz.GENERATED_AND_UNLOADED;
                        }
                        return at;
                    } finally {
                    }
                } catch (Exception e2) {
                    e = e2;
                    if (!z) {
                        throw e;
                    }
                    dcj.d(cciVar, "Class process error: " + e.getClass().getSimpleName(), e);
                    return null;
                } catch (StackOverflowError e3) {
                    e = e3;
                    if (!z) {
                    }
                }
            }
        }
        return null;
    }
}
