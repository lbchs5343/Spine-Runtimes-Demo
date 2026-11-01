package g;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class fuz {

    /* renamed from: b, reason: collision with root package name */
    public final View f17461b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f17460a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f17462c = new ArrayList();

    public fuz(View view) {
        this.f17461b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fuz)) {
            return false;
        }
        fuz fuzVar = (fuz) obj;
        return this.f17461b == fuzVar.f17461b && this.f17460a.equals(fuzVar.f17460a);
    }

    public final int hashCode() {
        return this.f17460a.hashCode() + (this.f17461b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder l = tn.l("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        l.append(this.f17461b);
        l.append("\n");
        String c2 = awf.c(l.toString(), "    values:");
        HashMap hashMap = this.f17460a;
        for (String str : hashMap.keySet()) {
            c2 = c2 + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return c2;
    }
}
