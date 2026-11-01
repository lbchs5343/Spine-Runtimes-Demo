package g;

import android.view.View;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class blh implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        jz jzVar = (jz) ((View) obj).getLayoutParams();
        jz jzVar2 = (jz) ((View) obj2).getLayoutParams();
        boolean z = jzVar.f19518a;
        if (z != jzVar2.f19518a) {
            return z ? 1 : -1;
        }
        return 0;
    }
}
