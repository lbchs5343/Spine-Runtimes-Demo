package g;

import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class bhf implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11575a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11576b;

    public /* synthetic */ bhf(int i, Object obj) {
        this.f11575a = i;
        this.f11576b = obj;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        int i = this.f11575a;
        Object obj2 = this.f11576b;
        switch (i) {
            case 0:
                ((lh) ((cih) obj)).w((csv) obj2);
                return;
            default:
                dcq dcqVar = (dcq) obj2;
                String str = (String) obj;
                ckd.w(str, "Content URL must be non-null.");
                ckd.j(str, "Content URL must be non-empty.");
                int length = str.length();
                Object[] objArr = {512, Integer.valueOf(str.length())};
                if (!(length <= 512)) {
                    throw new IllegalArgumentException(String.format("Content URL must not exceed %d in length.  Provided length was %d.", objArr));
                }
                ((gxk) dcqVar.f13976f).m = str;
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f11575a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
