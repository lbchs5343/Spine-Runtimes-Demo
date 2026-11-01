package g;

import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class cbd {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f12584a;

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f12585b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashSet f12586c;

    static {
        Pattern compile = Pattern.compile("\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*");
        f12584a = compile;
        f12585b = Pattern.compile("(" + compile + "\\.)*" + compile);
        f12586c = new HashSet(Arrays.asList("_", "abstract", "assert", "boolean", "break", "byte", "case", "catch", "char", "class", "const", "continue", "default", "do", "double", "else", "enum", "extends", "false", "final", "finally", "float", "for", "goto", "if", "implements", "import", "instanceof", "int", "interface", "long", "native", "new", "null", "package", "private", "protected", "public", "return", "short", "static", "strictfp", "super", "switch", "synchronized", "this", "throw", "throws", "transient", "true", "try", "void", "volatile", "while"));
    }

    public static boolean d(int i) {
        return 32 <= i && i <= 126;
    }

    public static boolean e(String str) {
        if (f(str)) {
            int length = str.length();
            int i = 0;
            while (i < length) {
                int codePointAt = str.codePointAt(i);
                if (d(codePointAt)) {
                    i += Character.charCount(codePointAt);
                }
            }
            return true;
        }
        return false;
    }

    public static boolean f(String str) {
        return foj.c(str) && !f12586c.contains(str) && f12584a.matcher(str).matches();
    }
}
