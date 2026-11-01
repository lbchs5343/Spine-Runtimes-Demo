package g;

import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class ell {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f15760a;

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f15761b = Pattern.compile("\\{([^}]*)\\}");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f15762c;

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f15763d;

    static {
        Locale locale = Locale.US;
        f15762c = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f15763d = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f15760a = Pattern.compile("\\\\an(\\d+)");
    }
}
