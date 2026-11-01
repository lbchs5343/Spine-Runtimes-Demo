package g;

import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public abstract class gsj {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f18685a;

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f18686b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicBoolean f18687c;

    /* renamed from: d, reason: collision with root package name */
    public static HashMap f18688d;

    /* renamed from: e, reason: collision with root package name */
    public static final Uri f18689e = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap f18690f;

    /* renamed from: g, reason: collision with root package name */
    public static final HashMap f18691g;
    public static final Pattern h;
    public static Object i;
    public static final Pattern j;
    public static final HashMap k;

    static {
        Uri.parse("content://com.google.android.gsf.gservices/prefix");
        h = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        j = Pattern.compile("^(0|false|f|off|no|n)$", 2);
        f18687c = new AtomicBoolean();
        f18690f = new HashMap();
        k = new HashMap();
        f18685a = new HashMap();
        f18691g = new HashMap();
        f18686b = new String[0];
    }

    public static void l(String str, String str2, Object obj) {
        synchronized (gsj.class) {
            try {
                if (obj == i) {
                    f18688d.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
