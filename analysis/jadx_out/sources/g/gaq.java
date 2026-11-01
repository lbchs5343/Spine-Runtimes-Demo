package g;

import j$.util.StringJoiner;

/* loaded from: classes.dex */
public final class gaq {

    /* renamed from: a, reason: collision with root package name */
    public final int f17813a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17814b;

    public gaq(int i, int i2) {
        this.f17813a = i;
        this.f17814b = i2;
    }

    public final String toString() {
        return new StringJoiner(", ", gaq.class.getSimpleName().concat("["), "]").add("idx=" + this.f17813a).add("offset=" + this.f17814b).toString();
    }
}
