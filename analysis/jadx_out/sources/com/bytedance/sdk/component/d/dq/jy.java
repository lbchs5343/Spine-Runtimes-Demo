package com.bytedance.sdk.component.d.dq;

/* loaded from: classes.dex */
public class jy {

    /* renamed from: d, reason: collision with root package name */
    private String f1848d;
    private String dq;
    public dq iw;
    public o ox;
    public String p;
    public byte[] s;

    public enum dq {
        STRING_TYPE,
        BYTE_ARRAY_TYPE,
        FILE_TYPE
    }

    public jy() {
    }

    public jy(o oVar, String str, dq dqVar) {
        this.ox = oVar;
        this.p = str;
        this.iw = dqVar;
    }

    public jy(o oVar, byte[] bArr, dq dqVar) {
        this.ox = oVar;
        this.s = bArr;
        this.iw = dqVar;
    }

    public jy(o oVar, byte[] bArr, String str, String str2, dq dqVar) {
        this.ox = oVar;
        this.s = bArr;
        this.f1848d = str;
        this.dq = str2;
        this.iw = dqVar;
    }

    public static jy dq(o oVar, String str) {
        return new jy(oVar, str, dq.STRING_TYPE);
    }

    public static jy dq(o oVar, byte[] bArr) {
        return new jy(oVar, bArr, dq.BYTE_ARRAY_TYPE);
    }

    public static jy dq(o oVar, byte[] bArr, String str, String str2) {
        return new jy(oVar, bArr, str, str2, dq.FILE_TYPE);
    }

    public String d() {
        return this.f1848d;
    }

    public String dq() {
        return this.dq;
    }
}
