package g;

import j$.util.Objects;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class bls implements tj {

    /* renamed from: a, reason: collision with root package name */
    public static final EnumMap f11805a;

    static {
        EnumMap enumMap = new EnumMap(fwv.class);
        enumMap.put((EnumMap) fwv.SAME_FRAME, (fwv) new esk(25));
        enumMap.put((EnumMap) fwv.SAME_FRAME_EXTENDED, (fwv) new esk(26));
        enumMap.put((EnumMap) fwv.SAME_LOCALS_1_STACK, (fwv) new esk(27));
        enumMap.put((EnumMap) fwv.SAME_LOCALS_1_STACK_EXTENDED, (fwv) new esk(28));
        enumMap.put((EnumMap) fwv.CHOP, (fwv) new esk(29));
        enumMap.put((EnumMap) fwv.APPEND, (fwv) new abs(0));
        enumMap.put((EnumMap) fwv.FULL, (fwv) new abs(1));
        f11805a = enumMap;
    }

    public static void b(cmy cmyVar, boolean z) {
        int i;
        if (z) {
            fwv fwvVar = fwv.SAME_FRAME;
            i = cmyVar.f13152b.ai();
        } else {
            fwv fwvVar2 = fwv.SAME_FRAME;
            i = cmyVar.f13153c;
        }
        dl dlVar = new dl(d(cmyVar, i));
        dlVar.f14345c = 0;
        dl dlVar2 = cmyVar.f13154d;
        dlVar.f14343a = dlVar2 != null ? dlVar2.f14343a : 0;
        cmyVar.f13151a = dlVar;
    }

    public static int d(cmy cmyVar, int i) {
        dl dlVar = cmyVar.f13154d;
        return dlVar == null ? i : dlVar.f14344b + i + 1;
    }

    public static void e(cmy cmyVar, boolean z) {
        int i;
        gqc gqcVar = cmyVar.f13152b;
        if (z) {
            fwv fwvVar = fwv.SAME_FRAME;
            i = gqcVar.ai();
        } else {
            fwv fwvVar2 = fwv.SAME_FRAME;
            i = cmyVar.f13153c - 64;
        }
        cqz[] an = awt.an(gqcVar, 1);
        dl dlVar = new dl(d(cmyVar, i));
        dlVar.f14345c = 1;
        dlVar.f14346d = an;
        dl dlVar2 = cmyVar.f13154d;
        dlVar.f14343a = dlVar2 == null ? 0 : dlVar2.f14343a;
        cmyVar.f13151a = dlVar;
    }

    @Override // g.tj
    public final azo c(cmv cmvVar, gqc gqcVar) {
        int ai = gqcVar.ai();
        HashMap hashMap = new HashMap(ai, 1.0f);
        dl dlVar = null;
        for (int i = 0; i < ai; i++) {
            int ap = gqcVar.ap();
            fwv fwvVar = fwv.f17549a[ap];
            Consumer consumer = (Consumer) f11805a.get(fwvVar);
            if (consumer == null) {
                throw new cyf("Found unsupported stack frame type: " + fwvVar);
            }
            cmy cmyVar = new cmy(gqcVar, ap, dlVar);
            consumer.n(cmyVar);
            dlVar = cmyVar.f13151a;
            Objects.requireNonNull(dlVar);
            hashMap.put(Integer.valueOf(dlVar.f14344b), dlVar);
        }
        return new eau(hashMap);
    }
}
