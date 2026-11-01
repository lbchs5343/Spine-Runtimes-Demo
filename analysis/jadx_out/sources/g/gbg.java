package g;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class gbg {

    /* renamed from: a, reason: collision with root package name */
    public final String f17860a;

    /* renamed from: b, reason: collision with root package name */
    public final fc f17861b;

    public gbg(Set set, fc fcVar) {
        this.f17860a = c(set);
        this.f17861b = fcVar;
    }

    public static String c(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            aj ajVar = (aj) it.next();
            sb.append(ajVar.f10296a);
            sb.append('/');
            sb.append(ajVar.f10297b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }
}
