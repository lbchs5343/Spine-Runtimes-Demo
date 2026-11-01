package g;

/* loaded from: classes3.dex */
public final class dkf extends UnsupportedOperationException {
    private final cqg zza;

    public dkf(cqg cqgVar) {
        this.zza = cqgVar;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return "Missing ".concat(String.valueOf(this.zza));
    }
}
