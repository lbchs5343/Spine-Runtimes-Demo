package g;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class eqa extends cav {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f15970a;

    /* renamed from: c, reason: collision with root package name */
    public epo f15971c;
    public final float[] r;
    public final PathMeasure s;

    public eqa(ArrayList arrayList) {
        super(arrayList);
        this.f15970a = new PointF();
        this.r = new float[2];
        this.s = new PathMeasure();
    }

    @Override // g.cej
    public final Object b(flj fljVar, float f2) {
        epo epoVar = (epo) fljVar;
        Path path = epoVar.f15943a;
        if (path == null) {
            return (PointF) fljVar.p;
        }
        epo epoVar2 = this.f15971c;
        PathMeasure pathMeasure = this.s;
        if (epoVar2 != epoVar) {
            pathMeasure.setPath(path, false);
            this.f15971c = epoVar;
        }
        float length = pathMeasure.getLength() * f2;
        float[] fArr = this.r;
        pathMeasure.getPosTan(length, fArr, null);
        float f3 = fArr[0];
        float f4 = fArr[1];
        PointF pointF = this.f15970a;
        pointF.set(f3, f4);
        return pointF;
    }
}
