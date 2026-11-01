package g;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class ejm {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f15667a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile Charset f15668b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile Charset f15669c;

    static {
        Charset forName = Charset.forName("UTF-8");
        bff.e(forName, "forName(...)");
        f15667a = forName;
        bff.e(Charset.forName("UTF-16"), "forName(...)");
        bff.e(Charset.forName("UTF-16BE"), "forName(...)");
        bff.e(Charset.forName("UTF-16LE"), "forName(...)");
        bff.e(Charset.forName("US-ASCII"), "forName(...)");
        bff.e(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
