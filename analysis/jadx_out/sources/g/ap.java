package g;

import java.util.HashSet;

/* loaded from: classes.dex */
public final class ap {

    /* renamed from: a, reason: collision with root package name */
    public final fza f10600a;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f10601b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10602c;

    public ap(fza fzaVar) {
        this.f10600a = fzaVar;
        int size = fzaVar.ac.size();
        this.f10602c = size;
        this.f10601b = new HashSet(size);
        for (int i = 0; i < this.f10602c; i++) {
            this.f10601b.add(Integer.valueOf(i));
        }
    }

    public static void d(ap apVar, gvg gvgVar, int i) {
        HashSet hashSet = apVar.f10601b;
        if (((fza) gvgVar.f18811c) != apVar.f10600a) {
            return;
        }
        int i2 = gvgVar.f18813e;
        for (int i3 = 0; i3 < i; i3++) {
            hashSet.remove(Integer.valueOf(i2 + i3));
        }
        int i4 = gvgVar.f18810b;
        if (i2 - i4 == 0) {
            for (int i5 = 0; i5 < i4; i5++) {
                hashSet.remove(Integer.valueOf(i5));
            }
        }
    }
}
