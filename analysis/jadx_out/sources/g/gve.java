package g;

/* loaded from: classes3.dex */
public final class gve implements ebv {
    public final /* synthetic */ int i;

    /* renamed from: f, reason: collision with root package name */
    public static final gve f18807f = new gve(0);

    /* renamed from: g, reason: collision with root package name */
    public static final gve f18808g = new gve(1);

    /* renamed from: b, reason: collision with root package name */
    public static final gve f18803b = new gve(2);

    /* renamed from: c, reason: collision with root package name */
    public static final gve f18804c = new gve(3);

    /* renamed from: d, reason: collision with root package name */
    public static final gve f18805d = new gve(4);
    public static final gve h = new gve(5);

    /* renamed from: a, reason: collision with root package name */
    public static final gve f18802a = new gve(6);

    /* renamed from: e, reason: collision with root package name */
    public static final gve f18806e = new gve(7);

    public /* synthetic */ gve(int i) {
        this.i = i;
    }

    @Override // g.ebv
    public final boolean zza(int i) {
        switch (this.i) {
            case 0:
                switch (i) {
                }
            case 1:
                switch (i) {
                    default:
                        switch (i) {
                        }
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        return true;
                }
            case 2:
                if (hm.b(i) != null) {
                }
                break;
            case 3:
                if ((i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : apl.ALTERNATIVE_BILLING_ACTION : apl.LOCAL_PURCHASES_UPDATED_ACTION : apl.PURCHASES_UPDATED_ACTION : apl.BROADCAST_ACTION_UNSPECIFIED) != null) {
                }
                break;
            case 4:
                if (i == 0 || i == 1 || i == 2 || i == 3) {
                }
                break;
            case 5:
                switch (i) {
                }
            case 6:
                switch (i) {
                }
            default:
                if (i == 0 || i == 1) {
                }
                break;
        }
        return true;
    }
}
