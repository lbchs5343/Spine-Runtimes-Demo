package j$.util;

import a.u.e.NoItemAdapterException;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final Optional f20680b = new Optional();

    /* renamed from: a, reason: collision with root package name */
    public final Object f20681a;

    public Optional() {
        this.f20681a = null;
    }

    public Optional(Object obj) {
        this.f20681a = Objects.requireNonNull(obj);
    }

    public static <T> Optional<T> empty() {
        return f20680b;
    }

    public static <T> Optional<T> of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : of(t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return Objects.equals(this.f20681a, ((Optional) obj).f20681a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f20681a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public final int hashCode() {
        return Objects.hashCode(this.f20681a);
    }

    public void ifPresent(Consumer<? super T> consumer) {
        NoItemAdapterException noItemAdapterException = (Object) this.f20681a;
        if (noItemAdapterException != null) {
            consumer.accept(noItemAdapterException);
        }
    }

    public boolean isEmpty() {
        return this.f20681a == null;
    }

    public boolean isPresent() {
        return this.f20681a != null;
    }

    public <U> Optional<U> map(Function<? super T, ? extends U> function) {
        Objects.requireNonNull(function);
        return !isPresent() ? empty() : ofNullable(function.apply((Object) this.f20681a));
    }

    public T orElse(T t) {
        T t2 = (T) this.f20681a;
        return t2 != null ? t2 : t;
    }

    public final String toString() {
        Object obj = this.f20681a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
