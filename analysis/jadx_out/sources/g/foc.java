package g;

import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Currency;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes3.dex */
public abstract class foc {

    /* renamed from: a, reason: collision with root package name */
    public static final eam f17123a;
    public static final eam aa;

    /* renamed from: b, reason: collision with root package name */
    public static final eam f17124b;

    /* renamed from: c, reason: collision with root package name */
    public static final fjm f17125c;

    /* renamed from: d, reason: collision with root package name */
    public static final dca f17126d;

    /* renamed from: e, reason: collision with root package name */
    public static final eam f17127e;

    /* renamed from: f, reason: collision with root package name */
    public static final cqn f17128f;

    /* renamed from: g, reason: collision with root package name */
    public static final dap f17129g;
    public static final dap h;
    public static final dap i;
    public static final eam k;
    public static final eam l;
    public static final eam m;
    public static final dap n;
    public static final eam o;
    public static final eam p;
    public static final avg q;
    public static final eam r;
    public static final eam t;
    public static final eam u;
    public static final bzd v;
    public static final eam w;
    public static final ddu x;
    public static final bqd y;
    public static final dap z;
    public static final eam j = new eam(Class.class, new agf(new bmv(), 2), 0);
    public static final eam s = new eam(BitSet.class, new agf(new cnq(), 2), 0);

    static {
        aom aomVar = new aom();
        x = new ddu();
        f17129g = new dap(Boolean.TYPE, Boolean.class, aomVar);
        i = new dap(Byte.TYPE, Byte.class, new apo());
        n = new dap(Short.TYPE, Short.class, new fyq());
        z = new dap(Integer.TYPE, Integer.class, new cwn());
        f17124b = new eam(AtomicInteger.class, new agf(new fpx(), 2), 0);
        r = new eam(AtomicBoolean.class, new agf(new gqq(), 2), 0);
        t = new eam(AtomicIntegerArray.class, new agf(new but(), 2), 0);
        f17125c = new fjm();
        new blb();
        new dvs();
        h = new dap(Character.TYPE, Character.class, new fhl());
        ace aceVar = new ace();
        q = new avg();
        f17128f = new cqn();
        f17126d = new dca();
        p = new eam(String.class, aceVar, 0);
        u = new eam(StringBuilder.class, new ced(), 0);
        aa = new eam(StringBuffer.class, new dqi(), 0);
        o = new eam(URL.class, new fbv(), 0);
        w = new eam(URI.class, new bed(), 0);
        k = new eam(InetAddress.class, new dsa(), 1);
        l = new eam(UUID.class, new cik(), 0);
        m = new eam(Currency.class, new agf(new ek(), 2), 0);
        y = new bqd(new dev(), 1);
        f17127e = new eam(Locale.class, new azg(), 0);
        f17123a = new eam(gdy.class, new fel(), 1);
        v = new bzd();
    }
}
