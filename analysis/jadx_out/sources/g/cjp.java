package g;

import androidx.fragment.app.Fragment;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class cjp implements flu {

    /* renamed from: a, reason: collision with root package name */
    public final int f12991a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.v f12992b;

    public cjp(androidx.fragment.app.v vVar, int i) {
        this.f12992b = vVar;
        this.f12991a = i;
    }

    @Override // g.flu
    public final boolean f(ArrayList arrayList, ArrayList arrayList2) {
        androidx.fragment.app.v vVar = this.f12992b;
        Fragment fragment = vVar.u;
        int i = this.f12991a;
        if (fragment == null || i >= 0 || !fragment.getChildFragmentManager().bk(-1, 0)) {
            return vVar.ay(arrayList, arrayList2, i, 1);
        }
        return false;
    }
}
