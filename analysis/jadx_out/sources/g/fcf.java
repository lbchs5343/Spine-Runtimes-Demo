package g;

import j$.util.Objects;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class fcf extends bke {

    /* renamed from: b, reason: collision with root package name */
    public static final bzc f16554b = new bzc();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16555c;

    public fcf(acp acpVar, int i, int i2) {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        this.f16555c = arrayList;
        Objects.requireNonNull(acpVar);
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (byw.f12473a >= 9) {
            StringBuilder sb = new StringBuilder();
            if (i == 0) {
                str = "EEEE, MMMM d, yyyy";
            } else if (i == 1) {
                str = "MMMM d, yyyy";
            } else if (i == 2) {
                str = "MMM d, yyyy";
            } else {
                if (i != 3) {
                    throw new IllegalArgumentException(awf.ac(i, "Unknown DateFormat style: "));
                }
                str = "M/d/yy";
            }
            sb.append(str);
            sb.append(" ");
            if (i2 == 0 || i2 == 1) {
                str2 = "h:mm:ss a z";
            } else if (i2 == 2) {
                str2 = "h:mm:ss a";
            } else {
                if (i2 != 3) {
                    throw new IllegalArgumentException(awf.ac(i2, "Unknown DateFormat style: "));
                }
                str2 = "h:mm a";
            }
            sb.append(str2);
            arrayList.add(new SimpleDateFormat(sb.toString(), locale));
        }
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        String format;
        Date date = (Date) obj;
        if (date == null) {
            fwgVar.af();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f16555c.get(0);
        synchronized (this.f16555c) {
            format = dateFormat.format(date);
        }
        fwgVar.s(format);
    }

    public final String toString() {
        DateFormat dateFormat = (DateFormat) this.f16555c.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
