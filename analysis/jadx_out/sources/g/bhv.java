package g;

import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class bhv extends ehi {

    /* renamed from: a, reason: collision with root package name */
    public final String f11612a;

    /* renamed from: b, reason: collision with root package name */
    public final deb f11613b;

    /* renamed from: f, reason: collision with root package name */
    public final px f11614f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11615g;

    public bhv(px pxVar, String str, String str2) {
        this.f11614f = pxVar;
        this.f11615g = str;
        this.f11612a = str2;
        this.f11613b = baf.ai(new ajo((cpv) pxVar.f19835a.get(1), this));
    }

    @Override // g.ehi
    public final dsy c() {
        return this.f11613b;
    }

    @Override // g.ehi
    public final long d() {
        String str = this.f11612a;
        if (str == null) {
            return -1L;
        }
        byte[] bArr = erq.f16043c;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    @Override // g.ehi
    public final dpd e() {
        String str = this.f11615g;
        if (str == null) {
            return null;
        }
        Pattern pattern = dpd.f14576a;
        try {
            return acr.bb(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
