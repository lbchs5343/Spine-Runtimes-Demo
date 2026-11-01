package g;

import android.os.Build;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class flk {

    /* renamed from: b, reason: collision with root package name */
    public final int f16980b;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16982d;
    public final ao h;
    public final int k;

    /* renamed from: f, reason: collision with root package name */
    public final ExecutorService f16984f = baf.at(false);
    public final nt j = uj.f20095a;
    public final ExecutorService l = baf.at(true);

    /* renamed from: c, reason: collision with root package name */
    public final dwm f16981c = new dwm(0);

    /* renamed from: e, reason: collision with root package name */
    public final gjq f16983e = gjq.f18264a;

    /* renamed from: g, reason: collision with root package name */
    public final bfy f16985g = bfy.aa;
    public final fnq m = new fnq();

    /* renamed from: a, reason: collision with root package name */
    public final int f16979a = 4;
    public final int i = he.UNDEFINED_ITEM_ID;

    public flk(bmr bmrVar) {
        this.f16980b = Build.VERSION.SDK_INT == 23 ? 10 : 20;
        this.k = 8;
        this.f16982d = true;
        this.h = new ao(27);
    }
}
