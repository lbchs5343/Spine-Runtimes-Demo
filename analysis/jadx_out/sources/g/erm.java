package g;

import j$.util.Map;
import java.util.HashMap;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class erm {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f16030a = dsr.k(erm.class);

    /* renamed from: b, reason: collision with root package name */
    public static final bev f16031b = new bev(2);

    /* renamed from: c, reason: collision with root package name */
    public final cmv f16032c;

    /* renamed from: d, reason: collision with root package name */
    public final gkr f16033d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f16034e = new HashMap(zz.f20423e.size());

    public erm(cmv cmvVar, gkr gkrVar) {
        this.f16032c = cmvVar;
        this.f16033d = gkrVar;
    }

    public final geg f(gqc gqcVar, Predicate predicate) {
        tj tjVar;
        int ai = gqcVar.ai();
        if (ai == 0) {
            return geg.f17981a;
        }
        geg gegVar = new geg();
        for (int i = 0; i < ai; i++) {
            int ai2 = gqcVar.ai();
            int bc = gqcVar.f18566ab + gqcVar.bc();
            try {
                try {
                    zz zzVar = (zz) Map.b.computeIfAbsent(this.f16034e, Integer.valueOf(ai2), new eug(0, this));
                    if (zzVar != null && predicate.test(zzVar) && (tjVar = zzVar.u) != null) {
                        gegVar.f17982b[zzVar.s] = tjVar.c(this.f16032c, gqcVar);
                    }
                } catch (Exception e2) {
                    f16030a.b(this.f16033d.r(ai2), "Failed to parse attribute: {}", e2);
                }
            } finally {
                gqcVar.f18566ab = bc;
            }
        }
        return gegVar;
    }

    public final azo g(gqc gqcVar, zz zzVar) {
        int ai = gqcVar.ai();
        for (int i = 0; i < ai; i++) {
            int ai2 = gqcVar.ai();
            int bc = gqcVar.f18566ab + gqcVar.bc();
            try {
                try {
                    zz zzVar2 = (zz) Map.b.computeIfAbsent(this.f16034e, Integer.valueOf(ai2), new eug(0, this));
                    if (zzVar2 == zzVar) {
                        return zzVar2.u.c(this.f16032c, gqcVar);
                    }
                } catch (Exception e2) {
                    f16030a.b(this.f16033d.r(ai2), "Failed to parse attribute: {}", e2);
                }
            } finally {
                gqcVar.f18566ab = bc;
            }
        }
        return null;
    }
}
