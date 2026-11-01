package g;

/* loaded from: classes3.dex */
public final class drg extends Exception {
    private final ety status;

    public drg(ety etyVar) {
        this.status = etyVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public drg(String str, ety etyVar) {
        super(str);
        ckd.j(str, "Detail message must not be empty");
        this.status = etyVar;
    }
}
