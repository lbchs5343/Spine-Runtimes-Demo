package g;

import com.google.android.gms.internal.ads.zzgcy;

/* loaded from: classes3.dex */
public final class eiq {

    /* renamed from: a, reason: collision with root package name */
    public static final eiq f15603a;

    /* renamed from: b, reason: collision with root package name */
    public static final eiq f15604b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f15605c;

    /* renamed from: d, reason: collision with root package name */
    public final Throwable f15606d;

    static {
        if (zzgcy.s) {
            f15603a = null;
            f15604b = null;
        } else {
            f15603a = new eiq(null, false);
            f15604b = new eiq(null, true);
        }
    }

    public eiq(Throwable th, boolean z) {
        this.f15605c = z;
        this.f15606d = th;
    }
}
