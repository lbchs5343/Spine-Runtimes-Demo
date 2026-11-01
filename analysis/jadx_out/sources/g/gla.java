package g;

/* loaded from: classes3.dex */
public final class gla extends exu {
    private final Object zza;

    public gla(Object obj) {
        this.zza = obj;
    }

    @Override // g.exu
    public final Object b() {
        return this.zza;
    }

    @Override // g.exu
    public final boolean c() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof gla) {
            return this.zza.equals(((gla) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza + ")";
    }
}
