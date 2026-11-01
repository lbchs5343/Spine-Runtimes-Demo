package g;

import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public final class fou {

    /* renamed from: a, reason: collision with root package name */
    public long f17161a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gmr f17162b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17163c;

    /* renamed from: d, reason: collision with root package name */
    public final long f17164d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17165e;

    public fou(gmr gmrVar, String str, long j) {
        this.f17162b = gmrVar;
        ckd.bf(str);
        this.f17163c = str;
        this.f17164d = j;
    }

    public final long f() {
        if (!this.f17165e) {
            this.f17165e = true;
            this.f17161a = this.f17162b.ar().getLong(this.f17163c, this.f17164d);
        }
        return this.f17161a;
    }

    public final void g(long j) {
        SharedPreferences.Editor edit = this.f17162b.ar().edit();
        edit.putLong(this.f17163c, j);
        edit.apply();
        this.f17161a = j;
    }
}
