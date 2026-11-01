package g;

/* loaded from: classes3.dex */
public final class gxe implements dcm {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f18935f;

    /* renamed from: d, reason: collision with root package name */
    public static final gxe f18933d = new gxe(0);

    /* renamed from: e, reason: collision with root package name */
    public static final gxe f18934e = new gxe(1);

    /* renamed from: a, reason: collision with root package name */
    public static final gxe f18930a = new gxe(2);

    /* renamed from: b, reason: collision with root package name */
    public static final gxe f18931b = new gxe(3);

    /* renamed from: c, reason: collision with root package name */
    public static final gxe f18932c = new gxe(4);

    public /* synthetic */ gxe(int i) {
        this.f18935f = i;
    }

    @Override // g.dcm
    public final boolean zza(int i) {
        switch (this.f18935f) {
            case 0:
                if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                }
                break;
            case 1:
                switch (i) {
                }
            case 2:
                if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4 || i == 5) {
                }
                break;
            case 3:
                if (i == 1 || i == 2) {
                }
                break;
            default:
                if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                }
                break;
        }
        return true;
    }
}
