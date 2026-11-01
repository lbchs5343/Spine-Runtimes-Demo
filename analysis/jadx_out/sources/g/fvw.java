package g;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class fvw {
    public static final fvw IDENTITY;
    public static final fvw LOWER_CASE_WITH_DASHES;
    public static final fvw LOWER_CASE_WITH_DOTS;
    public static final fvw LOWER_CASE_WITH_UNDERSCORES;
    public static final fvw UPPER_CAMEL_CASE;
    public static final fvw UPPER_CAMEL_CASE_WITH_SPACES;
    public static final fvw UPPER_CASE_WITH_UNDERSCORES;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ fvw[] f17492b;

    static {
        fvw fvwVar = new fvw() { // from class: g.ax
            @Override // g.fvw
            public final String a(Field field) {
                return field.getName();
            }
        };
        IDENTITY = fvwVar;
        fvw fvwVar2 = new fvw() { // from class: g.bmw
            @Override // g.fvw
            public final String a(Field field) {
                return fvw.d(field.getName());
            }
        };
        UPPER_CAMEL_CASE = fvwVar2;
        fvw fvwVar3 = new fvw() { // from class: g.gd
            @Override // g.fvw
            public final String a(Field field) {
                return fvw.d(fvw.c(' ', field.getName()));
            }
        };
        UPPER_CAMEL_CASE_WITH_SPACES = fvwVar3;
        fvw fvwVar4 = new fvw() { // from class: g.cio
            @Override // g.fvw
            public final String a(Field field) {
                return fvw.c('_', field.getName()).toUpperCase(Locale.ENGLISH);
            }
        };
        UPPER_CASE_WITH_UNDERSCORES = fvwVar4;
        fvw fvwVar5 = new fvw() { // from class: g.hem
            @Override // g.fvw
            public final String a(Field field) {
                return fvw.c('_', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        };
        LOWER_CASE_WITH_UNDERSCORES = fvwVar5;
        fvw fvwVar6 = new fvw() { // from class: g.cew
            @Override // g.fvw
            public final String a(Field field) {
                return fvw.c('-', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        };
        LOWER_CASE_WITH_DASHES = fvwVar6;
        fvw fvwVar7 = new fvw() { // from class: g.fkm
            @Override // g.fvw
            public final String a(Field field) {
                return fvw.c('.', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        };
        LOWER_CASE_WITH_DOTS = fvwVar7;
        f17492b = new fvw[]{fvwVar, fvwVar2, fvwVar3, fvwVar4, fvwVar5, fvwVar6, fvwVar7};
    }

    public static String c(char c2, String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(c2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static String d(String str) {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char charAt = str.charAt(i);
            if (!Character.isLetter(charAt)) {
                i++;
            } else if (!Character.isUpperCase(charAt)) {
                char upperCase = Character.toUpperCase(charAt);
                if (i == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i) + upperCase + str.substring(i + 1);
            }
        }
        return str;
    }

    public static fvw valueOf(String str) {
        return (fvw) Enum.valueOf(fvw.class, str);
    }

    public static fvw[] values() {
        return (fvw[]) f17492b.clone();
    }

    public abstract String a(Field field);
}
