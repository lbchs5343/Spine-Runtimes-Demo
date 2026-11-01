package g;

import java.util.Map;

/* loaded from: classes.dex */
public final class ewx implements faq {

    /* renamed from: a, reason: collision with root package name */
    public faq f16299a;

    /* renamed from: b, reason: collision with root package name */
    public faq f16300b;

    /* renamed from: c, reason: collision with root package name */
    public faq f16301c;

    @Override // g.faq
    public final String d() {
        return this.f16299a.d() + "?" + this.f16300b.d() + ":" + this.f16301c.d();
    }

    @Override // g.faq
    public final axb dq() {
        return gt.dq;
    }

    @Override // g.faq
    public final Object dq(Map map) {
        Object dq = this.f16299a.dq(map);
        if (dq == null) {
            return null;
        }
        return ((Boolean) dq).booleanValue() ? this.f16300b.dq(map) : this.f16301c.dq(map);
    }

    public final String toString() {
        return d();
    }
}
