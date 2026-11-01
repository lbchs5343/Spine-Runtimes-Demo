package ms.bz.bd.c.Pgl;

import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    public String f21151d = "";

    /* renamed from: g, reason: collision with root package name */
    public String f21154g = "";
    public String h = "";

    /* renamed from: b, reason: collision with root package name */
    public String f21149b = "";

    /* renamed from: c, reason: collision with root package name */
    public int f21150c = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f21152e = 99999;
    public final HashMap i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f21148a = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashSet f21153f = new HashSet();

    public interface pblb {
    }

    public static abstract class pgla<T extends pblb> extends a implements pblb {
    }

    public static String j(Object obj) {
        return (obj == null || !(obj instanceof String)) ? "" : ((String) obj).trim();
    }
}
