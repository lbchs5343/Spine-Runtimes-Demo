package g;

import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class afj implements ya {

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f10139a;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        f10139a = simpleDateFormat;
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        ((abx) obj2).a(f10139a.format((Date) obj));
    }
}
