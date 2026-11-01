package g;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public final class bj implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public jv[] f11685a;

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f2, Object obj, Object obj2) {
        jv[] jvVarArr = (jv[]) obj;
        jv[] jvVarArr2 = (jv[]) obj2;
        if (!dzm.ay(jvVarArr, jvVarArr2)) {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (!dzm.ay(this.f11685a, jvVarArr)) {
            this.f11685a = dzm.u(jvVarArr);
        }
        for (int i = 0; i < jvVarArr.length; i++) {
            jv jvVar = this.f11685a[i];
            jv jvVar2 = jvVarArr[i];
            jv jvVar3 = jvVarArr2[i];
            jvVar.getClass();
            jvVar.f19514a = jvVar2.f19514a;
            int i2 = 0;
            while (true) {
                float[] fArr = jvVar2.f19515b;
                if (i2 < fArr.length) {
                    jvVar.f19515b[i2] = (jvVar3.f19515b[i2] * f2) + ((1.0f - f2) * fArr[i2]);
                    i2++;
                }
            }
        }
        return this.f11685a;
    }
}
