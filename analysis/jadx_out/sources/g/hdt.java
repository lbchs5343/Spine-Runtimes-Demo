package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class hdt {

    /* renamed from: a, reason: collision with root package name */
    public enb f19293a;

    /* renamed from: b, reason: collision with root package name */
    public long f19294b;

    /* renamed from: c, reason: collision with root package name */
    public String f19295c;

    /* renamed from: d, reason: collision with root package name */
    public long f19296d;

    /* renamed from: e, reason: collision with root package name */
    public czl f19297e;

    /* renamed from: f, reason: collision with root package name */
    public daw f19298f;
    public aju h;
    public enb i;
    public aqt j;
    public enb k;
    public ehi m;
    public int l = -1;

    /* renamed from: g, reason: collision with root package name */
    public ais f19299g = new ais(0);

    public static void n(String str, enb enbVar) {
        if (enbVar != null) {
            if (enbVar.f15835b != null) {
                throw new IllegalArgumentException(str.concat(".body != null").toString());
            }
            if (enbVar.f15834a != null) {
                throw new IllegalArgumentException(str.concat(".networkResponse != null").toString());
            }
            if (enbVar.j != null) {
                throw new IllegalArgumentException(str.concat(".cacheResponse != null").toString());
            }
            if (enbVar.f15836c != null) {
                throw new IllegalArgumentException(str.concat(".priorResponse != null").toString());
            }
        }
    }

    public final enb o() {
        int i = this.l;
        if (i < 0) {
            throw new IllegalStateException(("code < 0: " + this.l).toString());
        }
        daw dawVar = this.f19298f;
        if (dawVar == null) {
            throw new IllegalStateException("request == null");
        }
        aqt aqtVar = this.j;
        if (aqtVar == null) {
            throw new IllegalStateException("protocol == null");
        }
        String str = this.f19295c;
        if (str != null) {
            return new enb(dawVar, aqtVar, str, i, this.f19297e, this.f19299g.d(), this.m, this.f19293a, this.i, this.k, this.f19294b, this.f19296d, this.h);
        }
        throw new IllegalStateException("message == null");
    }

    public final void p(dvq dvqVar) {
        bff.p(dvqVar, TTDownloadField.TT_HEADERS);
        this.f19299g = dvqVar.f();
    }
}
