package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class cuj {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f13532a;

    /* renamed from: b, reason: collision with root package name */
    public final hed f13533b;

    /* renamed from: c, reason: collision with root package name */
    public final fza f13534c;

    /* renamed from: d, reason: collision with root package name */
    public final vm[] f13535d;

    public cuj(hed hedVar, fza fzaVar, vm[] vmVarArr, int[] iArr) {
        this.f13533b = hedVar;
        this.f13534c = fzaVar;
        this.f13535d = vmVarArr;
        this.f13532a = iArr;
    }

    public final vm e(gks gksVar) {
        int i = gksVar.f18327e;
        int[] iArr = this.f13532a;
        int i2 = iArr[i];
        iArr[i] = i2 + 1;
        hed hedVar = this.f13533b;
        hedVar.getClass();
        vm vmVar = new vm(i, i2, gksVar);
        if (hedVar.at.isEmpty()) {
            hedVar.at = new ArrayList();
        }
        hedVar.at.add(vmVar);
        this.f13535d[i] = vmVar;
        return vmVar;
    }
}
