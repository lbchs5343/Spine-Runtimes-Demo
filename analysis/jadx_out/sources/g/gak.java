package g;

/* loaded from: classes.dex */
public final class gak extends axr implements bto {

    /* renamed from: a, reason: collision with root package name */
    public static final gak f17796a;

    /* renamed from: b, reason: collision with root package name */
    public static final gak f17797b;

    /* renamed from: c, reason: collision with root package name */
    public static final gak f17798c;

    /* renamed from: e, reason: collision with root package name */
    public static final gak f17799e;

    /* renamed from: f, reason: collision with root package name */
    public static final gak f17800f;

    /* renamed from: g, reason: collision with root package name */
    public static final gak f17801g;
    public final /* synthetic */ int i;

    static {
        int i = 2;
        f17800f = new gak(i, 0);
        f17797b = new gak(i, 1);
        f17798c = new gak(i, 2);
        f17799e = new gak(i, 3);
        f17801g = new gak(i, 4);
        f17796a = new gak(i, 5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gak(int i, int i2) {
        super(i);
        this.i = i2;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        switch (this.i) {
            case 0:
                return ((boj) obj)._y((erz) obj2);
            case 1:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case 2:
                return Integer.valueOf(((Number) obj).intValue() + 1);
            case 3:
                erz erzVar = (erz) obj2;
                if (!(erzVar instanceof od)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num != null ? num.intValue() : 1;
                return intValue == 0 ? erzVar : Integer.valueOf(intValue + 1);
            case 4:
                od odVar = (od) obj;
                erz erzVar2 = (erz) obj2;
                if (odVar != null) {
                    return odVar;
                }
                if (erzVar2 instanceof od) {
                    return (od) erzVar2;
                }
                return null;
            default:
                return (glc) obj;
        }
    }
}
