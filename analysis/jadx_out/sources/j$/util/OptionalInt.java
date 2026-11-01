package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class OptionalInt {

    /* renamed from: c, reason: collision with root package name */
    public static final OptionalInt f20682c = new OptionalInt();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20683a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20684b;

    public OptionalInt() {
        this.f20683a = false;
        this.f20684b = 0;
    }

    public OptionalInt(int i) {
        this.f20683a = true;
        this.f20684b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OptionalInt)) {
            return false;
        }
        OptionalInt optionalInt = (OptionalInt) obj;
        boolean z = this.f20683a;
        return (z && optionalInt.f20683a) ? this.f20684b == optionalInt.f20684b : z == optionalInt.f20683a;
    }

    public int getAsInt() {
        if (this.f20683a) {
            return this.f20684b;
        }
        throw new NoSuchElementException("No value present");
    }

    public final int hashCode() {
        if (this.f20683a) {
            return this.f20684b;
        }
        return 0;
    }

    public boolean isEmpty() {
        return !this.f20683a;
    }

    public int orElse(int i) {
        return this.f20683a ? this.f20684b : i;
    }

    public <X extends Throwable> int orElseThrow(Supplier<? extends X> supplier) {
        if (this.f20683a) {
            return this.f20684b;
        }
        throw supplier.get();
    }

    public final String toString() {
        if (!this.f20683a) {
            return "OptionalInt.empty";
        }
        return "OptionalInt[" + this.f20684b + "]";
    }
}
