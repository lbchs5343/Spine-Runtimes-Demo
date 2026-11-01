package g;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.BitSet;

/* loaded from: classes3.dex */
public final class ll {

    /* renamed from: f, reason: collision with root package name */
    public final cif[] f19603f = new cif[4];
    public final Matrix[] i = new Matrix[4];
    public final Matrix[] k = new Matrix[4];

    /* renamed from: c, reason: collision with root package name */
    public final PointF f19600c = new PointF();

    /* renamed from: e, reason: collision with root package name */
    public final Path f19602e = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final Path f19604g = new Path();
    public final cif l = new cif();

    /* renamed from: a, reason: collision with root package name */
    public final float[] f19598a = new float[2];
    public final float[] h = new float[2];
    public final Path j = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Path f19599b = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19601d = true;

    public ll() {
        for (int i = 0; i < 4; i++) {
            this.f19603f[i] = new cif();
            this.i[i] = new Matrix();
            this.k[i] = new Matrix();
        }
    }

    public final void m(cjg cjgVar, float[] fArr, float f2, RectF rectF, eie eieVar, Path path) {
        Matrix[] matrixArr;
        float[] fArr2;
        int i;
        cif[] cifVarArr;
        Matrix[] matrixArr2;
        char c2;
        float f3;
        int i2;
        path.rewind();
        Path path2 = this.f19602e;
        path2.rewind();
        Path path3 = this.f19604g;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = this.k;
            fArr2 = this.f19598a;
            i = 4;
            cifVarArr = this.f19603f;
            matrixArr2 = this.i;
            c2 = 0;
            if (i3 >= 4) {
                break;
            }
            gjn tfVar = fArr == null ? i3 != 1 ? i3 != 2 ? i3 != 3 ? cjgVar.f12977g : cjgVar.f12975e : cjgVar.f12971a : cjgVar.l : new tf(fArr[i3]);
            afo afoVar = i3 != 1 ? i3 != 2 ? i3 != 3 ? cjgVar.i : cjgVar.f12976f : cjgVar.f12973c : cjgVar.k;
            cif cifVar = cifVarArr[i3];
            afoVar.getClass();
            afoVar.bd(cifVar, f2, tfVar.b(rectF));
            int i4 = i3 + 1;
            float f4 = (i4 % 4) * 90;
            matrixArr2[i3].reset();
            PointF pointF = this.f19600c;
            if (i3 == 1) {
                i2 = i3;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i3 == 2) {
                i2 = i3;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i3 != 3) {
                i2 = i3;
                pointF.set(rectF.right, rectF.top);
            } else {
                i2 = i3;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f4);
            cif cifVar2 = cifVarArr[i2];
            fArr2[0] = cifVar2.f12926e;
            fArr2[1] = cifVar2.f12927f;
            matrixArr2[i2].mapPoints(fArr2);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr2[0], fArr2[1]);
            matrixArr[i2].preRotate(f4);
            i3 = i4;
        }
        int i5 = 0;
        while (i5 < i) {
            cif cifVar3 = cifVarArr[i5];
            cifVar3.getClass();
            fArr2[c2] = 0.0f;
            fArr2[1] = cifVar3.f12924c;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 == 0) {
                path.moveTo(fArr2[c2], fArr2[1]);
            } else {
                path.lineTo(fArr2[c2], fArr2[1]);
            }
            cifVarArr[i5].j(matrixArr2[i5], path);
            if (eieVar != null) {
                cif cifVar4 = cifVarArr[i5];
                Matrix matrix = matrixArr2[i5];
                ddm ddmVar = (ddm) eieVar.f15585g;
                f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                BitSet bitSet = ddmVar.dl;
                cifVar4.getClass();
                bitSet.set(i5, false);
                ajj[] ajjVarArr = ddmVar.df;
                cifVar4.i(cifVar4.f12923b);
                ajjVarArr[i5] = new cru(new ArrayList(cifVar4.f12928g), new Matrix(matrix));
            } else {
                f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            cif cifVar5 = cifVarArr[i5];
            fArr2[0] = cifVar5.f12926e;
            fArr2[1] = cifVar5.f12927f;
            matrixArr2[i5].mapPoints(fArr2);
            cif cifVar6 = cifVarArr[i7];
            cifVar6.getClass();
            float[] fArr3 = this.h;
            fArr3[0] = f3;
            fArr3[1] = cifVar6.f12924c;
            matrixArr2[i7].mapPoints(fArr3);
            Matrix[] matrixArr3 = matrixArr;
            cif[] cifVarArr2 = cifVarArr;
            float max = Math.max(((float) Math.hypot(fArr2[0] - fArr3[0], fArr2[1] - fArr3[1])) - 0.001f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            cif cifVar7 = cifVarArr2[i5];
            fArr2[0] = cifVar7.f12926e;
            fArr2[1] = cifVar7.f12927f;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 == 1 || i5 == 3) {
                Math.abs(rectF.centerX() - fArr2[0]);
            } else {
                Math.abs(rectF.centerY() - fArr2[1]);
            }
            cif cifVar8 = this.l;
            cifVar8.h(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 270.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            (i5 != 1 ? i5 != 2 ? i5 != 3 ? cjgVar.j : cjgVar.h : cjgVar.f12974d : cjgVar.f12972b).getClass();
            cifVar8.k(max, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            Path path4 = this.j;
            path4.reset();
            cifVar8.j(matrixArr3[i5], path4);
            if (this.f19601d && (n(path4, i5) || n(path4, i7))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = 0.0f;
                fArr2[1] = cifVar8.f12924c;
                matrixArr3[i5].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                cifVar8.j(matrixArr3[i5], path2);
            } else {
                cifVar8.j(matrixArr3[i5], path);
            }
            if (eieVar != null) {
                Matrix matrix2 = matrixArr3[i5];
                ddm ddmVar2 = (ddm) eieVar.f15585g;
                ddmVar2.dl.set(i5 + 4, false);
                ajj[] ajjVarArr2 = ddmVar2.dk;
                cifVar8.i(cifVar8.f12923b);
                ajjVarArr2[i5] = new cru(new ArrayList(cifVar8.f12928g), new Matrix(matrix2));
            }
            matrixArr = matrixArr3;
            i5 = i6;
            cifVarArr = cifVarArr2;
            i = 4;
            c2 = 0;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean n(Path path, int i) {
        Path path2 = this.f19599b;
        path2.reset();
        this.f19603f[i].j(this.i[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }
}
