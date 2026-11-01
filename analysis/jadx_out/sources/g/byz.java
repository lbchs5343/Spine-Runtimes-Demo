package g;

import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class byz implements cng {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f12476a;

    /* renamed from: b, reason: collision with root package name */
    public int f12477b = -1;

    /* renamed from: c, reason: collision with root package name */
    public final String f12478c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12479d;

    public byz(String str, int i) {
        this.f12478c = str;
        this.f12479d = i;
    }

    public final void e(ert ertVar) {
        if (ertVar == null) {
            return;
        }
        int i = ertVar.h;
        if (i < 0 || !dyd.ar(i)) {
            int i2 = ertVar.k;
            if (i2 < 0 || Build.VERSION.SDK_INT <= i2) {
                if (this.f12476a == null) {
                    this.f12476a = new ArrayList();
                }
                Iterator it = this.f12476a.iterator();
                while (it.hasNext()) {
                    ert ertVar2 = (ert) it.next();
                    if (ertVar2 != null && ertVar2.q.equals(ertVar.q)) {
                        return;
                    }
                }
                this.f12476a.add(ertVar);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || byz.class != obj.getClass()) {
            return false;
        }
        return this.f12478c.equals(((byz) obj).f12478c);
    }

    public final int hashCode() {
        return this.f12478c.hashCode();
    }
}
