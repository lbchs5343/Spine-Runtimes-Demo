package j$.util;

import java.io.Serializable;
import java.util.function.Function;

/* renamed from: j$.util.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0274d implements java.util.Comparator, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20787a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ java.util.Comparator f20788b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20789c;

    public /* synthetic */ C0274d(java.util.Comparator comparator, Object obj, int i) {
        this.f20787a = i;
        this.f20788b = comparator;
        this.f20789c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f20787a) {
            case 0:
                java.util.Comparator comparator = this.f20788b;
                java.util.Comparator comparator2 = (java.util.Comparator) this.f20789c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                java.util.Comparator comparator3 = this.f20788b;
                Function function = (Function) this.f20789c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
