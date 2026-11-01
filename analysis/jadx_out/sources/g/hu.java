package g;

import java.io.Serializable;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class hu implements Serializable {
    private Set<Object> _options;
    private final Pattern nativePattern;

    public hu(String str) {
        Pattern compile = Pattern.compile(str);
        bff.e(compile, "compile(...)");
        this.nativePattern = compile;
    }

    public hu(Pattern pattern) {
        this.nativePattern = pattern;
    }

    private final Object writeReplace() {
        String pattern = this.nativePattern.pattern();
        bff.e(pattern, "pattern(...)");
        return new aec(pattern, this.nativePattern.flags());
    }

    public final boolean a(String str) {
        bff.p(str, "input");
        return this.nativePattern.matcher(str).matches();
    }

    public final String b(String str) {
        bff.p(str, "input");
        String replaceAll = this.nativePattern.matcher(str).replaceAll("");
        bff.e(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    public final String toString() {
        String pattern = this.nativePattern.toString();
        bff.e(pattern, "toString(...)");
        return pattern;
    }
}
