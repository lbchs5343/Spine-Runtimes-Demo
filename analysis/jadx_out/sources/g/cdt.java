package g;

import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class cdt implements cmn {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f12713a;

    public cdt(Object obj) {
        this.f12713a = eqx.q(obj);
    }

    @Override // g.cmn
    public final String d() {
        String languageTags;
        languageTags = this.f12713a.toLanguageTags();
        return languageTags;
    }

    @Override // g.cmn
    public final Object e() {
        return this.f12713a;
    }

    public final boolean equals(Object obj) {
        boolean equals;
        equals = this.f12713a.equals(((cmn) obj).e());
        return equals;
    }

    @Override // g.cmn
    public final Locale get(int i) {
        Locale locale;
        locale = this.f12713a.get(i);
        return locale;
    }

    public final int hashCode() {
        int hashCode;
        hashCode = this.f12713a.hashCode();
        return hashCode;
    }

    @Override // g.cmn
    public final boolean isEmpty() {
        boolean isEmpty;
        isEmpty = this.f12713a.isEmpty();
        return isEmpty;
    }

    @Override // g.cmn
    public final int size() {
        int size;
        size = this.f12713a.size();
        return size;
    }

    public final String toString() {
        String localeList;
        localeList = this.f12713a.toString();
        return localeList;
    }
}
