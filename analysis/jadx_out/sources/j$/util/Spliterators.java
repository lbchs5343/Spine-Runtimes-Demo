package j$.util;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class Spliterators {

    /* renamed from: a, reason: collision with root package name */
    public static final Y f20695a = new Y();

    /* renamed from: b, reason: collision with root package name */
    public static final W f20696b = new W();

    /* renamed from: c, reason: collision with root package name */
    public static final X f20697c = new X();

    /* renamed from: d, reason: collision with root package name */
    public static final V f20698d = new V();

    public static void a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new a0((java.util.Collection) Objects.requireNonNull(collection), i);
    }

    public static <T> Spliterator<T> spliterator(Iterator<? extends T> it, long j, int i) {
        return new a0((Iterator) Objects.requireNonNull(it), j, i);
    }
}
