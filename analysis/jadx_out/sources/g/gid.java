package g;

import android.content.Context;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class gid {

    /* renamed from: a, reason: collision with root package name */
    public static final int f18189a = (int) Math.round(5.1000000000000005d);

    /* renamed from: b, reason: collision with root package name */
    public final int f18190b;

    /* renamed from: c, reason: collision with root package name */
    public final float f18191c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18192d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18193e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18194f;

    public gid(Context context) {
        boolean d2 = bfc.d(context, R.attr.elevationOverlayEnabled, false);
        int z = eyt.z(context, R.attr.elevationOverlayColor, 0);
        int z2 = eyt.z(context, R.attr.elevationOverlayAccentColor, 0);
        int z3 = eyt.z(context, R.attr.colorSurface, 0);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f18192d = d2;
        this.f18193e = z;
        this.f18194f = z2;
        this.f18190b = z3;
        this.f18191c = f2;
    }
}
