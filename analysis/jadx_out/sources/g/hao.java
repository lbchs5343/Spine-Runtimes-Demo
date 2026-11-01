package g;

import android.view.ContentInfo;
import android.view.View;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class hao {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static dui b(View view, dui duiVar) {
        ContentInfo d2 = duiVar.f14830a.d();
        Objects.requireNonNull(d2);
        ContentInfo performReceiveContent = view.performReceiveContent(d2);
        if (performReceiveContent == null) {
            return null;
        }
        return performReceiveContent == d2 ? duiVar : new dui(new fnq(performReceiveContent));
    }
}
