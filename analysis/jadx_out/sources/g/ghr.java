package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class ghr extends fox {

    /* renamed from: a, reason: collision with root package name */
    public static final ghr f18174a = new ghr(dnd.ENCODED_NULL, null);

    /* renamed from: b, reason: collision with root package name */
    public final dnd f18175b;

    /* renamed from: f, reason: collision with root package name */
    public final Object f18176f;

    public ghr(dnd dndVar, Object obj) {
        this.f18175b = dndVar;
        this.f18176f = obj;
    }

    @Override // g.eue
    public final fky d() {
        return ao.x;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ghr.class == obj.getClass()) {
            ghr ghrVar = (ghr) obj;
            if (this.f18175b == ghrVar.f18175b && Objects.equals(this.f18176f, ghrVar.f18176f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f18175b, this.f18176f);
    }

    public final String toString() {
        int[] iArr = aee.f10087a;
        dnd dndVar = this.f18175b;
        int i = iArr[dndVar.ordinal()];
        if (i == 1) {
            return "null";
        }
        Object obj = this.f18176f;
        if (i == 2) {
            return "[" + obj + "]";
        }
        if (i == 3) {
            return "{STRING: \"" + obj + "\"}";
        }
        return "{" + dndVar.toString().substring(8) + ": " + obj + '}';
    }
}
