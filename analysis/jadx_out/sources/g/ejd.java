package g;

/* loaded from: classes.dex */
public final class ejd {

    /* renamed from: a, reason: collision with root package name */
    public int f15636a;

    /* renamed from: b, reason: collision with root package name */
    public int f15637b;

    /* renamed from: c, reason: collision with root package name */
    public String f15638c;

    public static gvg d() {
        gvg gvgVar = new gvg(1);
        gvgVar.f18810b = 0;
        gvgVar.f18811c = "";
        return gvgVar;
    }

    public final String toString() {
        int i = this.f15636a;
        int i2 = gbs.f17875a;
        cil cilVar = bpd.f11949a;
        Integer valueOf = Integer.valueOf(i);
        return awf.t("Response Code: ", (!cilVar.containsKey(valueOf) ? bpd.RESPONSE_CODE_UNSPECIFIED : (bpd) cilVar.get(valueOf)).toString(), ", Debug Message: ", this.f15638c);
    }
}
