package g;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ajx implements cmn {

    /* renamed from: a, reason: collision with root package name */
    public static final Locale[] f10351a = new Locale[0];

    /* renamed from: b, reason: collision with root package name */
    public final Locale[] f10352b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10353c;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] split = "en-Latn".split("-", -1);
        if (split.length > 2) {
            new Locale(split[0], split[1], split[2]);
        } else if (split.length > 1) {
            new Locale(split[0], split[1]);
        } else {
            if (split.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(split[0]);
        }
    }

    public ajx(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f10352b = f10351a;
            this.f10353c = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException(awf.b(i, "list[", "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f10352b = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f10353c = sb.toString();
    }

    @Override // g.cmn
    public final String d() {
        return this.f10353c;
    }

    @Override // g.cmn
    public final Object e() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ajx)) {
            return false;
        }
        Locale[] localeArr = ((ajx) obj).f10352b;
        Locale[] localeArr2 = this.f10352b;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i = 0; i < localeArr2.length; i++) {
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // g.cmn
    public final Locale get(int i) {
        if (i < 0) {
            return null;
        }
        Locale[] localeArr = this.f10352b;
        if (i < localeArr.length) {
            return localeArr[i];
        }
        return null;
    }

    public final int hashCode() {
        int i = 1;
        for (Locale locale : this.f10352b) {
            i = (i * 31) + locale.hashCode();
        }
        return i;
    }

    @Override // g.cmn
    public final boolean isEmpty() {
        return this.f10352b.length == 0;
    }

    @Override // g.cmn
    public final int size() {
        return this.f10352b.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f10352b;
            if (i >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i]);
            if (i < localeArr.length - 1) {
                sb.append(',');
            }
            i++;
        }
    }
}
