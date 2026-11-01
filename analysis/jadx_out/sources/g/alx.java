package g;

import android.content.res.Configuration;
import android.os.LocaleList;

/* loaded from: classes.dex */
public abstract class alx {
    public static void a(Configuration configuration, azt aztVar) {
        LocaleList forLanguageTags;
        forLanguageTags = LocaleList.forLanguageTags(aztVar.f11131b.d());
        configuration.setLocales(forLanguageTags);
    }

    public static void b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales;
        LocaleList locales2;
        boolean equals;
        locales = configuration.getLocales();
        locales2 = configuration2.getLocales();
        equals = locales.equals(locales2);
        if (equals) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static azt c(Configuration configuration) {
        LocaleList locales;
        String languageTags;
        locales = configuration.getLocales();
        languageTags = locales.toLanguageTags();
        return azt.d(languageTags);
    }

    public static void d(azt aztVar) {
        LocaleList forLanguageTags;
        forLanguageTags = LocaleList.forLanguageTags(aztVar.f11131b.d());
        LocaleList.setDefault(forLanguageTags);
    }
}
