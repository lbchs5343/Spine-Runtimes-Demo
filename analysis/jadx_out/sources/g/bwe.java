package g;

import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class bwe implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12306a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eak f12307b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ hed f12308c;

    public /* synthetic */ bwe(eak eakVar, hed hedVar, int i) {
        this.f12306a = i;
        this.f12307b = eakVar;
        this.f12308c = hedVar;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.f12306a) {
            case 0:
                this.f12307b.be(this.f12308c, (hcd) obj);
                break;
            default:
                this.f12307b.bd(this.f12308c, (ghr) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f12306a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
