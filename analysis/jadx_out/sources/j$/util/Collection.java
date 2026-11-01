package j$.util;

import j$.lang.Iterable;
import j$.util.List;
import j$.util.stream.C0307d2;
import j$.util.stream.EnumC0293a3;
import j$.util.stream.Stream;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.SortedSet;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public interface Collection<E> extends Iterable<E> {

    public final /* synthetic */ class a {
        public static Stream $default$parallelStream(java.util.Collection collection) {
            Spliterator a2 = b.a(collection);
            Objects.requireNonNull(a2);
            return new C0307d2(a2, EnumC0293a3.k(a2), true);
        }

        public static boolean $default$removeIf(java.util.Collection collection, Predicate predicate) {
            boolean removeIf;
            if (!DesugarCollections.f20665a.isInstance(collection)) {
                Objects.requireNonNull(predicate);
                Iterator<E> it = collection.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    if (predicate.test(it.next())) {
                        it.remove();
                        z = true;
                    }
                }
                return z;
            }
            Field field = DesugarCollections.f20666b;
            if (field == null) {
                try {
                    return b.removeIf((java.util.Collection) DesugarCollections.f20667c.get(collection), predicate);
                } catch (IllegalAccessException e2) {
                    throw new Error("Runtime illegal access in synchronized collection removeIf fall-back.", e2);
                }
            }
            try {
                synchronized (field.get(collection)) {
                    removeIf = b.removeIf((java.util.Collection) DesugarCollections.f20667c.get(collection), predicate);
                }
                return removeIf;
            } catch (IllegalAccessException e3) {
                throw new Error("Runtime illegal access in synchronized collection removeIf.", e3);
            }
        }

        public static Stream $default$stream(java.util.Collection collection) {
            Spliterator a2 = b.a(collection);
            Objects.requireNonNull(a2);
            return new C0307d2(a2, EnumC0293a3.k(a2), false);
        }

        public static Object[] $default$toArray(java.util.Collection collection, IntFunction intFunction) {
            return collection.toArray((Object[]) intFunction.apply(0));
        }
    }

    public final /* synthetic */ class b {
        public static Spliterator a(java.util.Collection collection) {
            if (collection instanceof Collection) {
                return ((Collection) collection).spliterator();
            }
            if (collection instanceof LinkedHashSet) {
                return Spliterators.spliterator((LinkedHashSet) collection, 17);
            }
            if (!(collection instanceof SortedSet)) {
                return collection instanceof java.util.Set ? Spliterators.spliterator((java.util.Set) collection, 1) : collection instanceof java.util.List ? List.a.$default$spliterator((java.util.List) collection) : Spliterators.spliterator(collection, 0);
            }
            SortedSet sortedSet = (SortedSet) collection;
            return new A(sortedSet, sortedSet);
        }

        public static /* synthetic */ Stream parallelStream(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).parallelStream() : a.$default$parallelStream(collection);
        }

        public static /* synthetic */ boolean removeIf(java.util.Collection collection, Predicate predicate) {
            return collection instanceof Collection ? ((Collection) collection).removeIf(predicate) : a.$default$removeIf(collection, predicate);
        }

        public static /* synthetic */ Stream stream(java.util.Collection collection) {
            return collection instanceof Collection ? ((Collection) collection).stream() : a.$default$stream(collection);
        }

        public static /* synthetic */ Object[] toArray(java.util.Collection collection, IntFunction intFunction) {
            return collection instanceof Collection ? ((Collection) collection).toArray(intFunction) : a.$default$toArray(collection, intFunction);
        }
    }

    @Override // j$.util.Collection, j$.lang.Iterable
    void forEach(Consumer<? super E> consumer);

    Stream<E> parallelStream();

    boolean removeIf(Predicate<? super E> predicate);

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    Spliterator<E> spliterator();

    Stream<E> stream();

    <T> T[] toArray(IntFunction<T[]> intFunction);
}
