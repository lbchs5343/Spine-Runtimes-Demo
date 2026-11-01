package g;

/* loaded from: classes.dex */
public abstract class rq extends dtb {

    /* renamed from: a, reason: collision with root package name */
    public jv[] f19917a;

    /* renamed from: b, reason: collision with root package name */
    public String f19918b;

    /* renamed from: c, reason: collision with root package name */
    public int f19919c;

    public rq() {
        this.f19917a = null;
        this.f19919c = 0;
    }

    public rq(rq rqVar) {
        this.f19917a = null;
        this.f19919c = 0;
        this.f19918b = rqVar.f19918b;
        this.f19917a = dzm.u(rqVar.f19917a);
    }

    public jv[] getPathData() {
        return this.f19917a;
    }

    public String getPathName() {
        return this.f19918b;
    }

    public void setPathData(jv[] jvVarArr) {
        if (!dzm.ay(this.f19917a, jvVarArr)) {
            this.f19917a = dzm.u(jvVarArr);
            return;
        }
        jv[] jvVarArr2 = this.f19917a;
        for (int i = 0; i < jvVarArr.length; i++) {
            jvVarArr2[i].f19514a = jvVarArr[i].f19514a;
            int i2 = 0;
            while (true) {
                float[] fArr = jvVarArr[i].f19515b;
                if (i2 < fArr.length) {
                    jvVarArr2[i].f19515b[i2] = fArr[i2];
                    i2++;
                }
            }
        }
    }
}
