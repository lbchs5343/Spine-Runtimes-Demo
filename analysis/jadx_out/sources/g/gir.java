package g;

import java.sql.Date;
import java.text.SimpleDateFormat;

/* loaded from: classes3.dex */
public final class gir extends bke {

    /* renamed from: b, reason: collision with root package name */
    public static final a f18213b = new a();

    /* renamed from: c, reason: collision with root package name */
    public final SimpleDateFormat f18214c;

    public class a implements dsb {
        @Override // g.dsb
        public final bke j(eem eemVar, ri riVar) {
            if (riVar.f19901a == Date.class) {
                return new gir(0);
            }
            return null;
        }
    }

    private gir() {
        this.f18214c = new SimpleDateFormat("MMM d, yyyy");
    }

    public /* synthetic */ gir(int i) {
        this();
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        String format;
        Date date = (Date) obj;
        if (date == null) {
            fwgVar.af();
            return;
        }
        synchronized (this) {
            format = this.f18214c.format((java.util.Date) date);
        }
        fwgVar.s(format);
    }
}
