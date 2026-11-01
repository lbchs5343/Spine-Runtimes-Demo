package com.ss.android.socialbase.appdownloader.iw.dq;

/* loaded from: classes.dex */
public class ia extends Exception {

    /* renamed from: d, reason: collision with root package name */
    protected int f9284d;
    protected Throwable dq;
    protected int ox;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ia(String str, mn mnVar, Throwable th) {
        super(r0.toString());
        String str2;
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        sb.append(str == null ? "" : str.concat(" "));
        if (mnVar == null) {
            str2 = "";
        } else {
            str2 = "(position:" + mnVar.p() + ") ";
        }
        sb.append(str2);
        if (th != null) {
            str3 = "caused by: " + th;
        }
        sb.append(str3);
        this.f9284d = -1;
        this.ox = -1;
        if (mnVar != null) {
            this.f9284d = mnVar.ox();
            this.ox = mnVar.iw();
        }
        this.dq = th;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        if (this.dq == null) {
            super.printStackTrace();
            return;
        }
        synchronized (System.err) {
            System.err.println(super.getMessage() + "; nested exception is:");
            this.dq.printStackTrace();
        }
    }
}
