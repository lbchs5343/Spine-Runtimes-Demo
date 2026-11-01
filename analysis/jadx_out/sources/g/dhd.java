package g;

import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class dhd extends ehi {

    /* renamed from: a, reason: collision with root package name */
    public final Object f14163a;

    /* renamed from: b, reason: collision with root package name */
    public final dsy f14164b;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f14165f;

    /* renamed from: g, reason: collision with root package name */
    public final long f14166g;

    public /* synthetic */ dhd(Object obj, long j, dsy dsyVar, int i) {
        this.f14165f = i;
        this.f14163a = obj;
        this.f14166g = j;
        this.f14164b = dsyVar;
    }

    @Override // g.ehi
    public final dsy c() {
        switch (this.f14165f) {
            case 0:
                return (deb) this.f14164b;
            default:
                return (clq) this.f14164b;
        }
    }

    @Override // g.ehi
    public final long d() {
        switch (this.f14165f) {
        }
        return this.f14166g;
    }

    @Override // g.ehi
    public final dpd e() {
        int i = this.f14165f;
        Object obj = this.f14163a;
        switch (i) {
            case 0:
                String str = (String) obj;
                if (str == null) {
                    return null;
                }
                Pattern pattern = dpd.f14576a;
                try {
                    return acr.bb(str);
                } catch (IllegalArgumentException unused) {
                    return null;
                }
            default:
                return (dpd) obj;
        }
    }
}
