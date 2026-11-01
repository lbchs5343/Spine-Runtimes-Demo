package g;

/* loaded from: classes3.dex */
public final class hbk extends RuntimeException {
    private final int code;
    private final String message;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public hbk(anx anxVar) {
        super(r0.toString());
        StringBuilder sb = new StringBuilder("HTTP ");
        enb enbVar = anxVar.f10539a;
        int i = enbVar.f15840g;
        sb.append(i);
        sb.append(" ");
        String str = enbVar.f15837d;
        sb.append(str);
        this.code = i;
        this.message = str;
    }
}
