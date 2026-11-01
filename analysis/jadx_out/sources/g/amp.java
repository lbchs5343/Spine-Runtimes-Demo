package g;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class amp {

    /* renamed from: a, reason: collision with root package name */
    public final exi f10478a;

    /* renamed from: b, reason: collision with root package name */
    public final bsb f10479b;

    /* renamed from: c, reason: collision with root package name */
    public final bsb f10480c;

    /* renamed from: d, reason: collision with root package name */
    public final Matrix f10481d;

    /* renamed from: e, reason: collision with root package name */
    public final bsb f10482e;

    /* renamed from: f, reason: collision with root package name */
    public final float[] f10483f;

    /* renamed from: g, reason: collision with root package name */
    public final Matrix f10484g = new Matrix();
    public final cav h;
    public final bsb i;
    public final bsb j;
    public final Matrix k;
    public final dph l;
    public final Matrix m;
    public final cej n;

    public amp(eld eldVar) {
        fc fcVar = eldVar.f15745d;
        this.h = (cav) (fcVar == null ? null : fcVar.dq());
        eqn eqnVar = eldVar.h;
        this.n = eqnVar == null ? null : eqnVar.dq();
        dlz dlzVar = eldVar.i;
        this.f10478a = (exi) (dlzVar == null ? null : dlzVar.dq());
        cnc cncVar = eldVar.f15743b;
        this.j = (bsb) (cncVar == null ? null : cncVar.dq());
        cnc cncVar2 = eldVar.f15746f;
        bsb bsbVar = cncVar2 == null ? null : (bsb) cncVar2.dq();
        this.f10479b = bsbVar;
        if (bsbVar != null) {
            this.k = new Matrix();
            this.m = new Matrix();
            this.f10481d = new Matrix();
            this.f10483f = new float[9];
        } else {
            this.k = null;
            this.m = null;
            this.f10481d = null;
            this.f10483f = null;
        }
        cnc cncVar3 = eldVar.j;
        this.f10482e = cncVar3 == null ? null : (bsb) cncVar3.dq();
        dlz dlzVar2 = eldVar.f15744c;
        if (dlzVar2 != null) {
            this.l = (dph) dlzVar2.dq();
        }
        cnc cncVar4 = eldVar.f15742a;
        if (cncVar4 != null) {
            this.i = (bsb) cncVar4.dq();
        } else {
            this.i = null;
        }
        cnc cncVar5 = eldVar.f15747g;
        if (cncVar5 != null) {
            this.f10480c = (bsb) cncVar5.dq();
        } else {
            this.f10480c = null;
        }
    }

    public final Matrix o() {
        PointF pointF;
        PointF pointF2;
        Matrix matrix = this.f10484g;
        matrix.reset();
        cej cejVar = this.n;
        if (cejVar != null && (pointF2 = (PointF) cejVar.m()) != null) {
            float f2 = pointF2.x;
            if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || pointF2.y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                matrix.preTranslate(f2, pointF2.y);
            }
        }
        bsb bsbVar = this.j;
        if (bsbVar != null) {
            float c2 = bsbVar.c();
            if (c2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                matrix.preRotate(c2);
            }
        }
        if (this.f10479b != null) {
            bsb bsbVar2 = this.f10482e;
            float cos = bsbVar2 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : (float) Math.cos(Math.toRadians((-bsbVar2.c()) + 90.0f));
            float sin = bsbVar2 == null ? 1.0f : (float) Math.sin(Math.toRadians((-bsbVar2.c()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(r3.c()));
            p();
            float[] fArr = this.f10483f;
            fArr[0] = cos;
            fArr[1] = sin;
            float f3 = -sin;
            fArr[3] = f3;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            Matrix matrix2 = this.k;
            matrix2.setValues(fArr);
            p();
            fArr[0] = 1.0f;
            fArr[3] = tan;
            fArr[4] = 1.0f;
            fArr[8] = 1.0f;
            Matrix matrix3 = this.m;
            matrix3.setValues(fArr);
            p();
            fArr[0] = cos;
            fArr[1] = f3;
            fArr[3] = sin;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            Matrix matrix4 = this.f10481d;
            matrix4.setValues(fArr);
            matrix3.preConcat(matrix2);
            matrix4.preConcat(matrix3);
            matrix.preConcat(matrix4);
        }
        exi exiVar = this.f10478a;
        if (exiVar != null) {
            aof aofVar = (aof) exiVar.m();
            float f4 = aofVar.f10563a;
            if (f4 != 1.0f || aofVar.f10564b != 1.0f) {
                matrix.preScale(f4, aofVar.f10564b);
            }
        }
        cav cavVar = this.h;
        if (cavVar != null && (((pointF = (PointF) cavVar.m()) != null && pointF.x != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) || pointF.y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            matrix.preTranslate(-pointF.x, -pointF.y);
        }
        return matrix;
    }

    public final void p() {
        for (int i = 0; i < 9; i++) {
            this.f10483f[i] = 0.0f;
        }
    }

    public final Matrix q(float f2) {
        cej cejVar = this.n;
        PointF pointF = cejVar == null ? null : (PointF) cejVar.m();
        exi exiVar = this.f10478a;
        aof aofVar = exiVar == null ? null : (aof) exiVar.m();
        Matrix matrix = this.f10484g;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f2, pointF.y * f2);
        }
        if (aofVar != null) {
            double d2 = f2;
            matrix.preScale((float) Math.pow(aofVar.f10563a, d2), (float) Math.pow(aofVar.f10564b, d2));
        }
        bsb bsbVar = this.j;
        if (bsbVar != null) {
            float floatValue = ((Float) bsbVar.m()).floatValue();
            cav cavVar = this.h;
            PointF pointF2 = cavVar != null ? (PointF) cavVar.m() : null;
            float f3 = floatValue * f2;
            float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float f5 = pointF2 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : pointF2.x;
            if (pointF2 != null) {
                f4 = pointF2.y;
            }
            matrix.preRotate(f3, f5, f4);
        }
        return matrix;
    }

    public final void r(fyj fyjVar) {
        dph dphVar = this.l;
        if (dphVar != null) {
            dphVar.l(fyjVar);
        }
        bsb bsbVar = this.i;
        if (bsbVar != null) {
            bsbVar.l(fyjVar);
        }
        bsb bsbVar2 = this.f10480c;
        if (bsbVar2 != null) {
            bsbVar2.l(fyjVar);
        }
        cav cavVar = this.h;
        if (cavVar != null) {
            cavVar.l(fyjVar);
        }
        cej cejVar = this.n;
        if (cejVar != null) {
            cejVar.l(fyjVar);
        }
        exi exiVar = this.f10478a;
        if (exiVar != null) {
            exiVar.l(fyjVar);
        }
        bsb bsbVar3 = this.j;
        if (bsbVar3 != null) {
            bsbVar3.l(fyjVar);
        }
        bsb bsbVar4 = this.f10479b;
        if (bsbVar4 != null) {
            bsbVar4.l(fyjVar);
        }
        bsb bsbVar5 = this.f10482e;
        if (bsbVar5 != null) {
            bsbVar5.l(fyjVar);
        }
    }

    public final void s(grq grqVar) {
        grqVar.bg(this.l);
        grqVar.bg(this.i);
        grqVar.bg(this.f10480c);
        grqVar.bg(this.h);
        grqVar.bg(this.n);
        grqVar.bg(this.f10478a);
        grqVar.bg(this.j);
        grqVar.bg(this.f10479b);
        grqVar.bg(this.f10482e);
    }
}
