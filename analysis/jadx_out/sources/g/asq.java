package g;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class asq {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f10757a = dsr.k(asq.class);

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f10758b = Pattern.compile("classes([1-9]\\d*)\\.dex");

    public static int c(String str) {
        if ("classes.dex".equals(str)) {
            return 1;
        }
        try {
            Matcher matcher = f10758b.matcher(str);
            if (!matcher.matches()) {
                return -1;
            }
            String group = matcher.group(1);
            if (group.equals("1")) {
                return -1;
            }
            return Integer.parseInt(group);
        } catch (Exception e2) {
            f10757a.h("Failed to parse source classes index", e2);
            return -1;
        }
    }
}
