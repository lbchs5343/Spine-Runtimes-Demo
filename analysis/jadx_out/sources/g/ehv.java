package g;

import g.dfg;
import g.gir;
import java.sql.Date;
import java.sql.Timestamp;

/* loaded from: classes3.dex */
public abstract class ehv {

    /* renamed from: a, reason: collision with root package name */
    public static final gir.a f15562a;

    /* renamed from: b, reason: collision with root package name */
    public static final dfg.a f15563b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f15564c;

    /* renamed from: d, reason: collision with root package name */
    public static final gep f15565d;

    /* renamed from: e, reason: collision with root package name */
    public static final fsx f15566e;

    /* renamed from: f, reason: collision with root package name */
    public static final fsx f15567f;

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f15564c = z;
        if (z) {
            f15566e = new fsx(Date.class);
            f15567f = new fsx(Timestamp.class);
            f15562a = gir.f18213b;
            f15563b = dfg.f14089b;
            f15565d = fxq.f17584b;
            return;
        }
        f15566e = null;
        f15567f = null;
        f15562a = null;
        f15563b = null;
        f15565d = null;
    }
}
