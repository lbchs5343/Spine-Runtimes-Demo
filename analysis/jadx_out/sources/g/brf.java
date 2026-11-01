package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class brf {

    /* renamed from: a, reason: collision with root package name */
    public boolean f12068a;

    /* renamed from: b, reason: collision with root package name */
    public float f12069b;

    public final synchronized boolean c() {
        return this.f12068a;
    }

    public final synchronized boolean d() {
        return this.f12069b >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final synchronized float e() {
        if (!d()) {
            return 1.0f;
        }
        return this.f12069b;
    }

    public final synchronized void f(boolean z) {
        this.f12068a = z;
    }

    public final synchronized void g(float f2) {
        this.f12069b = f2;
    }
}
