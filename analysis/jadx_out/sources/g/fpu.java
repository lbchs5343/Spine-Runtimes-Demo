package g;

import android.net.Uri;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class fpu {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f17212a;

    /* renamed from: b, reason: collision with root package name */
    public final List f17213b = null;

    /* renamed from: c, reason: collision with root package name */
    public final je f17214c;

    static {
        TimeUnit.SECONDS.toNanos(5L);
    }

    public fpu(Uri uri, je jeVar) {
        this.f17212a = uri;
        this.f17214c = jeVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        sb.append(this.f17212a);
        List list = this.f17213b;
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                if (it.next() != null) {
                    throw new ClassCastException();
                }
                sb.append(' ');
                throw null;
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
