package g;

/* loaded from: classes3.dex */
public final class dfh extends exu {

    /* renamed from: a, reason: collision with root package name */
    public static final dfh f14091a = new dfh();

    @Override // g.exu
    public final Object b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // g.exu
    public final boolean c() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
