package g;

/* loaded from: classes3.dex */
public final class fbx implements xx {

    /* renamed from: a, reason: collision with root package name */
    public static final fbx f16534a = new fbx();

    /* renamed from: c, reason: collision with root package name */
    public static final cec f16535c = cec.c("clientType");

    /* renamed from: d, reason: collision with root package name */
    public static final cec f16536d = cec.c("androidClientInfo");

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        dmp dmpVar = (dmp) obj2;
        bsp bspVar = (bsp) ((cij) obj);
        dmpVar.i(f16535c, bspVar.f12135a);
        dmpVar.i(f16536d, bspVar.f12136b);
    }
}
