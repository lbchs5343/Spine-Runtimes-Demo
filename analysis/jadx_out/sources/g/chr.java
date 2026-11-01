package g;

/* loaded from: classes3.dex */
public final class chr implements fgl {

    /* renamed from: a, reason: collision with root package name */
    public static final duh f12895a;

    /* renamed from: b, reason: collision with root package name */
    public static final duh f12896b;

    /* renamed from: c, reason: collision with root package name */
    public static final duh f12897c;

    /* renamed from: d, reason: collision with root package name */
    public static final duh f12898d;

    /* renamed from: e, reason: collision with root package name */
    public static final duh f12899e;

    static {
        gez gezVar = new gez(gbd.b(), false, true);
        f12897c = gezVar.i("measurement.test.boolean_flag", false);
        f12898d = new duh(gezVar, "measurement.test.double_flag", Double.valueOf(-3.0d), 2);
        f12899e = gezVar.m(-2L, "measurement.test.int_flag");
        f12895a = gezVar.m(-1L, "measurement.test.long_flag");
        f12896b = new duh(gezVar, "measurement.test.string_flag", "---", 3);
    }
}
