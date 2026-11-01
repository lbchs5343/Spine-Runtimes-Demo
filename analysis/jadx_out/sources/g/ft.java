package g;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class ft {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17361a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final bei f17362b;

    static {
        dsr.k(ft.class);
    }

    public ft(hed hedVar, bei beiVar) {
        this.f17362b = beiVar;
    }

    public static void c(glw glwVar, gsh gshVar, fza fzaVar, LinkedHashSet linkedHashSet, HashSet hashSet) {
        hashSet.add(fzaVar);
        Iterator it = fzaVar.ac.iterator();
        while (it.hasNext()) {
            eek eekVar = (eek) it.next();
            if (eekVar.ah == hay.MONITOR_EXIT && eekVar.aj.size() > 0 && eekVar.j(0).equals(gshVar)) {
                linkedHashSet.add(fzaVar);
                glwVar.i.add(eekVar);
                return;
            }
        }
        for (fza fzaVar2 : fzaVar.f17684d) {
            if (!hashSet.contains(fzaVar2)) {
                c(glwVar, gshVar, fzaVar2, linkedHashSet, hashSet);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        if (r5.contains(r0) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        r0 = d(r0, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r0 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fza d(fza fzaVar, LinkedHashSet linkedHashSet, HashSet hashSet) {
        hashSet.add(fzaVar);
        loop0: for (fza fzaVar2 : fzaVar.z) {
            Iterator it = linkedHashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                if (!ffb.ac((fza) it.next(), fzaVar2)) {
                    break;
                }
            }
            return fzaVar2;
        }
        return null;
    }
}
