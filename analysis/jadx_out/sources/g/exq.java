package g;

import android.content.Context;

/* loaded from: classes.dex */
public final class exq implements fgd {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16331a;

    /* renamed from: b, reason: collision with root package name */
    public final dsg f16332b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16333c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16334d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f16335e;

    /* renamed from: f, reason: collision with root package name */
    public final String f16336f;

    /* renamed from: g, reason: collision with root package name */
    public final esn f16337g;

    public exq(Context context, String str, dsg dsgVar, boolean z, boolean z2) {
        bff.p(dsgVar, "callback");
        this.f16335e = context;
        this.f16336f = str;
        this.f16332b = dsgVar;
        this.f16333c = z;
        this.f16334d = z2;
        this.f16337g = new esn(new tc(this));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f16337g.b()) {
            h().close();
        }
    }

    public final got h() {
        return (got) this.f16337g.a();
    }

    @Override // g.fgd
    public final crd i() {
        return h().j(true);
    }

    @Override // g.fgd
    public final void setWriteAheadLoggingEnabled(boolean z) {
        if (this.f16337g.b()) {
            got h = h();
            bff.p(h, "sQLiteOpenHelper");
            h.setWriteAheadLoggingEnabled(z);
        }
        this.f16331a = z;
    }
}
