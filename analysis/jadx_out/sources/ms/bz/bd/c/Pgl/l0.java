package ms.bz.bd.c.Pgl;

import java.util.Locale;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class l0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        String str2;
        try {
            Locale locale = pgla.f21199a.f21200b.getResources().getConfiguration().locale;
            String language = locale.getLanguage();
            String country = locale.getCountry();
            StringBuilder sb = new StringBuilder();
            sb.append(language);
            sb.append((String) pblk.a(16777217, 0, 0L, "8e2374", new byte[]{22}));
            sb.append(country);
            str2 = sb.toString();
        } catch (Throwable unused) {
            str2 = null;
        }
        return p1.a(str2);
    }
}
