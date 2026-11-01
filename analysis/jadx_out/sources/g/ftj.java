package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class ftj {

    /* renamed from: a, reason: collision with root package name */
    public float f17378a;

    /* renamed from: b, reason: collision with root package name */
    public float f17379b;

    /* renamed from: c, reason: collision with root package name */
    public long f17380c;

    /* renamed from: d, reason: collision with root package name */
    public int f17381d;

    /* renamed from: e, reason: collision with root package name */
    public long f17382e;

    /* renamed from: f, reason: collision with root package name */
    public int f17383f;

    /* renamed from: g, reason: collision with root package name */
    public int f17384g;
    public float h;
    public long i;

    public final float j(long j) {
        if (j < this.f17380c) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        long j2 = this.i;
        if (j2 < 0 || j < j2) {
            return fbo.s((j - r0) / this.f17381d, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f) * 0.5f;
        }
        float f2 = this.f17378a;
        return (fbo.s((j - j2) / this.f17383f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f) * f2) + (1.0f - f2);
    }
}
