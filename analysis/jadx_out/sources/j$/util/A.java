package j$.util;

import java.util.SortedSet;

/* loaded from: classes2.dex */
public final class A extends a0 {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SortedSet f20662f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(SortedSet sortedSet, java.util.Collection collection) {
        super(collection, 21);
        this.f20662f = sortedSet;
    }

    @Override // j$.util.a0, j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        return this.f20662f.comparator();
    }
}
