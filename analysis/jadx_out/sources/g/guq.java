package g;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class guq {

    /* renamed from: a, reason: collision with root package name */
    public String f18780a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18781b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f18782c;

    public guq(String str, long j, HashMap hashMap) {
        this.f18780a = str;
        this.f18781b = j;
        HashMap hashMap2 = new HashMap();
        this.f18782c = hashMap2;
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final guq clone() {
        return new guq(this.f18780a, this.f18781b, new HashMap(this.f18782c));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof guq)) {
            return false;
        }
        guq guqVar = (guq) obj;
        if (this.f18781b == guqVar.f18781b && this.f18780a.equals(guqVar.f18780a)) {
            return this.f18782c.equals(guqVar.f18782c);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f18780a.hashCode() * 31;
        long j = this.f18781b;
        return this.f18782c.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31);
    }

    public final String toString() {
        String str = this.f18780a;
        String obj = this.f18782c.toString();
        StringBuilder sb = new StringBuilder("Event{name='");
        sb.append(str);
        sb.append("', timestamp=");
        sb.append(this.f18781b);
        return awf.f(", params=", obj, "}", sb);
    }
}
