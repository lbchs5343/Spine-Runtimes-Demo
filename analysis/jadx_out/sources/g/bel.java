package g;

import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class bel {

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f11379a;

    /* renamed from: b, reason: collision with root package name */
    public String f11380b;

    /* renamed from: c, reason: collision with root package name */
    public long f11381c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f11382d;

    /* renamed from: e, reason: collision with root package name */
    public ffr f11383e;

    /* renamed from: f, reason: collision with root package name */
    public long f11384f;

    /* renamed from: g, reason: collision with root package name */
    public int f11385g;
    public String h;

    public final String toString() {
        StringBuilder sb = new StringBuilder("AnimationModel{mKeyFramesMap=");
        sb.append(this.f11382d);
        sb.append(", mDuration=");
        sb.append(this.f11384f);
        sb.append(", mPlayCount=");
        sb.append(this.f11385g);
        sb.append(", mPlayDirection=");
        sb.append(this.f11380b);
        sb.append(", mDelay=");
        sb.append(this.f11381c);
        sb.append(", mTransformOrigin='");
        sb.append(this.f11383e);
        sb.append("', mTimingFunction='");
        return awf.ad(sb, this.h, "'}");
    }
}
