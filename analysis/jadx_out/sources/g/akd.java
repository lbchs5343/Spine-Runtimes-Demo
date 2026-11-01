package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class akd {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10372a = 0;

    static {
        dsr.k(akd.class);
    }

    public static void b(guv guvVar, fza fzaVar, fza fzaVar2) {
        Iterator it = guvVar.i.iterator();
        while (it.hasNext()) {
            fza fzaVar3 = ((aea) it.next()).i;
            giq.o(fzaVar, fzaVar3);
            if (fzaVar2 != null) {
                giq.o(fzaVar2, fzaVar3);
            }
        }
        guv guvVar2 = guvVar.f18789f;
        if (guvVar2 != null) {
            b(guvVar2, fzaVar, fzaVar2);
        }
    }
}
