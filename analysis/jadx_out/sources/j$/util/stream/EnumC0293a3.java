package j$.util.stream;

import j$.util.Map;
import j$.util.Spliterator;
import java.util.EnumMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: j$.util.stream.a3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0293a3 {
    public static final EnumC0293a3 DISTINCT;
    public static final EnumC0293a3 ORDERED;
    public static final EnumC0293a3 SHORT_CIRCUIT;
    public static final EnumC0293a3 SIZED;
    public static final EnumC0293a3 SORTED;

    /* renamed from: f, reason: collision with root package name */
    public static final int f20983f;

    /* renamed from: g, reason: collision with root package name */
    public static final int f20984g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final /* synthetic */ EnumC0293a3[] v;

    /* renamed from: a, reason: collision with root package name */
    public final Map f20985a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20986b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20987c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20988d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20989e;

    static {
        Z2 z2 = Z2.SPLITERATOR;
        j$.time.format.r o2 = o(z2);
        Z2 z22 = Z2.STREAM;
        o2.b(z22);
        Z2 z23 = Z2.OP;
        ((EnumMap) o2.f20563a).put((EnumMap) z23, (Z2) 3);
        EnumC0293a3 enumC0293a3 = new EnumC0293a3("DISTINCT", 0, 0, o2);
        DISTINCT = enumC0293a3;
        j$.time.format.r o3 = o(z2);
        o3.b(z22);
        ((EnumMap) o3.f20563a).put((EnumMap) z23, (Z2) 3);
        EnumC0293a3 enumC0293a32 = new EnumC0293a3("SORTED", 1, 1, o3);
        SORTED = enumC0293a32;
        j$.time.format.r o4 = o(z2);
        o4.b(z22);
        ((EnumMap) o4.f20563a).put((EnumMap) z23, (Z2) 3);
        Z2 z24 = Z2.TERMINAL_OP;
        ((EnumMap) o4.f20563a).put((EnumMap) z24, (Z2) 2);
        Z2 z25 = Z2.UPSTREAM_TERMINAL_OP;
        ((EnumMap) o4.f20563a).put((EnumMap) z25, (Z2) 2);
        EnumC0293a3 enumC0293a33 = new EnumC0293a3("ORDERED", 2, 2, o4);
        ORDERED = enumC0293a33;
        j$.time.format.r o5 = o(z2);
        o5.b(z22);
        ((EnumMap) o5.f20563a).put((EnumMap) z23, (Z2) 2);
        EnumC0293a3 enumC0293a34 = new EnumC0293a3("SIZED", 3, 3, o5);
        SIZED = enumC0293a34;
        j$.time.format.r o6 = o(z23);
        o6.b(z24);
        int i2 = 0;
        EnumC0293a3 enumC0293a35 = new EnumC0293a3("SHORT_CIRCUIT", 4, 12, o6);
        SHORT_CIRCUIT = enumC0293a35;
        v = new EnumC0293a3[]{enumC0293a3, enumC0293a32, enumC0293a33, enumC0293a34, enumC0293a35};
        f20983f = j(z2);
        f20984g = j(z22);
        h = j(z23);
        j(z24);
        j(z25);
        for (EnumC0293a3 enumC0293a36 : values()) {
            i2 |= enumC0293a36.f20989e;
        }
        i = i2;
        int i3 = f20984g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        EnumC0293a3 enumC0293a37 = DISTINCT;
        m = enumC0293a37.f20987c;
        n = enumC0293a37.f20988d;
        EnumC0293a3 enumC0293a38 = SORTED;
        o = enumC0293a38.f20987c;
        p = enumC0293a38.f20988d;
        EnumC0293a3 enumC0293a39 = ORDERED;
        q = enumC0293a39.f20987c;
        r = enumC0293a39.f20988d;
        EnumC0293a3 enumC0293a310 = SIZED;
        s = enumC0293a310.f20987c;
        t = enumC0293a310.f20988d;
        u = SHORT_CIRCUIT.f20987c;
    }

    public EnumC0293a3(String str, int i2, int i3, j$.time.format.r rVar) {
        for (Z2 z2 : Z2.values()) {
            Map.b.putIfAbsent(rVar.f20563a, z2, 0);
        }
        this.f20985a = rVar.f20563a;
        int i4 = i3 * 2;
        this.f20986b = i4;
        this.f20987c = 1 << i4;
        this.f20988d = 2 << i4;
        this.f20989e = 3 << i4;
    }

    public static int i(int i2, int i3) {
        return i2 | (i3 & (i2 == 0 ? i : ~(((j & i2) << 1) | i2 | ((k & i2) >> 1))));
    }

    public static int j(Z2 z2) {
        int i2 = 0;
        for (EnumC0293a3 enumC0293a3 : values()) {
            i2 |= ((Integer) enumC0293a3.f20985a.get(z2)).intValue() << enumC0293a3.f20986b;
        }
        return i2;
    }

    public static int k(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f20983f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }

    public static j$.time.format.r o(Z2 z2) {
        j$.time.format.r rVar = new j$.time.format.r(1, new EnumMap(Z2.class));
        rVar.b(z2);
        return rVar;
    }

    public static EnumC0293a3 valueOf(String str) {
        return (EnumC0293a3) Enum.valueOf(EnumC0293a3.class, str);
    }

    public static EnumC0293a3[] values() {
        return (EnumC0293a3[]) v.clone();
    }

    public final boolean l(int i2) {
        return (i2 & this.f20989e) == this.f20987c;
    }
}
