package g;

import android.content.Context;

/* loaded from: classes3.dex */
public final class azb extends bug {

    /* renamed from: a, reason: collision with root package name */
    public final String f11100a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f11101b;

    /* renamed from: c, reason: collision with root package name */
    public final cqi f11102c;

    /* renamed from: d, reason: collision with root package name */
    public final cqi f11103d;

    public azb(Context context, cqi cqiVar, cqi cqiVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f11101b = context;
        if (cqiVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f11102c = cqiVar;
        if (cqiVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f11103d = cqiVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f11100a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bug) {
            bug bugVar = (bug) obj;
            if (this.f11101b.equals(((azb) bugVar).f11101b)) {
                azb azbVar = (azb) bugVar;
                if (this.f11102c.equals(azbVar.f11102c) && this.f11103d.equals(azbVar.f11103d) && this.f11100a.equals(azbVar.f11100a)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f11101b.hashCode() ^ 1000003) * 1000003) ^ this.f11102c.hashCode()) * 1000003) ^ this.f11103d.hashCode()) * 1000003) ^ this.f11100a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f11101b);
        sb.append(", wallClock=");
        sb.append(this.f11102c);
        sb.append(", monotonicClock=");
        sb.append(this.f11103d);
        sb.append(", backendName=");
        return awf.ad(sb, this.f11100a, "}");
    }
}
