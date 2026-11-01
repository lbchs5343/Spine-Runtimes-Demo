package g;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class awo implements fyj, dvz, glt {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f10979a;

    /* renamed from: b, reason: collision with root package name */
    public final dph f10980b;

    /* renamed from: c, reason: collision with root package name */
    public float f10981c;

    /* renamed from: d, reason: collision with root package name */
    public final bsb f10982d;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f10984f;

    /* renamed from: g, reason: collision with root package name */
    public final fts f10985g;
    public final grq i;
    public final gfy j;
    public final bsb k;
    public final gee o;
    public final bsb q;
    public final PathMeasure h = new PathMeasure();
    public final Path p = new Path();
    public final Path r = new Path();

    /* renamed from: e, reason: collision with root package name */
    public final RectF f10983e = new RectF();
    public final ArrayList s = new ArrayList();

    public awo(fts ftsVar, grq grqVar, Paint.Cap cap, Paint.Join join, float f2, dlz dlzVar, cnc cncVar, ArrayList arrayList, cnc cncVar2) {
        gee geeVar = new gee(1, 0);
        this.o = geeVar;
        this.f10981c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f10985g = ftsVar;
        this.i = grqVar;
        geeVar.setStyle(Paint.Style.STROKE);
        geeVar.setStrokeCap(cap);
        geeVar.setStrokeJoin(join);
        geeVar.setStrokeMiter(f2);
        this.f10980b = (dph) dlzVar.dq();
        this.q = (bsb) cncVar.dq();
        if (cncVar2 == null) {
            this.k = null;
        } else {
            this.k = (bsb) cncVar2.dq();
        }
        this.f10984f = new ArrayList(arrayList.size());
        this.f10979a = new float[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            this.f10984f.add(((cnc) arrayList.get(i)).dq());
        }
        grqVar.bg(this.f10980b);
        grqVar.bg(this.q);
        for (int i2 = 0; i2 < this.f10984f.size(); i2++) {
            grqVar.bg((cej) this.f10984f.get(i2));
        }
        bsb bsbVar = this.k;
        if (bsbVar != null) {
            grqVar.bg(bsbVar);
        }
        this.f10980b.l(this);
        this.q.l(this);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ((cej) this.f10984f.get(i3)).l(this);
        }
        bsb bsbVar2 = this.k;
        if (bsbVar2 != null) {
            bsbVar2.l(this);
        }
        if (grqVar.e() != null) {
            cej dq = ((cnc) grqVar.e().h).dq();
            this.f10982d = (bsb) dq;
            dq.l(this);
            grqVar.bg(dq);
        }
        if (grqVar.c() != null) {
            this.j = new gfy(this, grqVar, grqVar.c());
        }
    }

    @Override // g.fyj
    public final void dq() {
        this.f10985g.invalidateSelf();
    }

    @Override // g.glt
    public void l(Canvas canvas, Matrix matrix, int i) {
        float[] fArr;
        float f2;
        float f3;
        float f4;
        BlurMaskFilter blurMaskFilter;
        float[] fArr2 = (float[]) ebx.f15267a.get();
        boolean z = false;
        fArr2[0] = 0.0f;
        int i2 = 1;
        fArr2[1] = 0.0f;
        fArr2[2] = 37394.73f;
        fArr2[3] = 39575.234f;
        matrix.mapPoints(fArr2);
        if (fArr2[0] == fArr2[2] || fArr2[1] == fArr2[3]) {
            buj.bd();
            return;
        }
        dph dphVar = this.f10980b;
        float c2 = (i / 255.0f) * dphVar.c(dphVar.n(), dphVar.k());
        float f5 = 100.0f;
        PointF pointF = din.f14231a;
        int max = Math.max(0, Math.min(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (int) ((c2 / 100.0f) * 255.0f)));
        gee geeVar = this.o;
        geeVar.setAlpha(max);
        geeVar.setStrokeWidth(ebx.i(matrix) * this.q.c());
        if (geeVar.getStrokeWidth() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            buj.bd();
            return;
        }
        ArrayList arrayList = this.f10984f;
        float f6 = 1.0f;
        if (arrayList.isEmpty()) {
            buj.bd();
        } else {
            float i3 = ebx.i(matrix);
            int i4 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = this.f10979a;
                if (i4 >= size) {
                    break;
                }
                float floatValue = ((Float) ((cej) arrayList.get(i4)).m()).floatValue();
                fArr[i4] = floatValue;
                if (i4 % 2 == 0) {
                    if (floatValue < 1.0f) {
                        fArr[i4] = 1.0f;
                    }
                } else if (floatValue < 0.1f) {
                    fArr[i4] = 0.1f;
                }
                fArr[i4] = fArr[i4] * i3;
                i4++;
            }
            bsb bsbVar = this.k;
            geeVar.setPathEffect(new DashPathEffect(fArr, bsbVar == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : ((Float) bsbVar.m()).floatValue() * i3));
            buj.bd();
        }
        bsb bsbVar2 = this.f10982d;
        if (bsbVar2 != null) {
            float floatValue2 = ((Float) bsbVar2.m()).floatValue();
            if (floatValue2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                geeVar.setMaskFilter(null);
            } else if (floatValue2 != this.f10981c) {
                grq grqVar = this.i;
                if (grqVar.ba == floatValue2) {
                    blurMaskFilter = grqVar.aj;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(floatValue2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    grqVar.aj = blurMaskFilter2;
                    grqVar.ba = floatValue2;
                    blurMaskFilter = blurMaskFilter2;
                }
                geeVar.setMaskFilter(blurMaskFilter);
            }
            this.f10981c = floatValue2;
        }
        gfy gfyVar = this.j;
        if (gfyVar != null) {
            gfyVar.h(geeVar);
        }
        int i5 = 0;
        while (true) {
            ArrayList arrayList2 = this.s;
            if (i5 >= arrayList2.size()) {
                buj.bd();
                return;
            }
            ln lnVar = (ln) arrayList2.get(i5);
            ejw ejwVar = lnVar.f19608b;
            ArrayList arrayList3 = lnVar.f19607a;
            Path path = this.p;
            if (ejwVar != null) {
                path.reset();
                for (int size2 = arrayList3.size() - i2; size2 >= 0; size2--) {
                    path.addPath(((gjf) arrayList3.get(size2)).p(), matrix);
                }
                float floatValue3 = ((Float) ejwVar.f15685a.m()).floatValue() / f5;
                float floatValue4 = ((Float) ejwVar.f15686b.m()).floatValue() / f5;
                float floatValue5 = ((Float) ejwVar.f15688d.m()).floatValue() / 360.0f;
                if (floatValue3 >= 0.01f || floatValue4 <= 0.99f) {
                    PathMeasure pathMeasure = this.h;
                    pathMeasure.setPath(path, z);
                    float length = pathMeasure.getLength();
                    while (pathMeasure.nextContour()) {
                        length = pathMeasure.getLength() + length;
                    }
                    float f7 = floatValue5 * length;
                    float f8 = (floatValue3 * length) + f7;
                    float min = Math.min((floatValue4 * length) + f7, (f8 + length) - f6);
                    int size3 = arrayList3.size() - i2;
                    float f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    while (size3 >= 0) {
                        Path p = ((gjf) arrayList3.get(size3)).p();
                        Path path2 = this.r;
                        path2.set(p);
                        path2.transform(matrix);
                        pathMeasure.setPath(path2, z);
                        float length2 = pathMeasure.getLength();
                        if (min > length) {
                            float f10 = min - length;
                            if (f10 < f9 + length2 && f9 < f10) {
                                f2 = f8 > length ? (f8 - length) / length2 : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                f3 = Math.min(f10 / length2, f6);
                                f4 = f2;
                                ebx.g(path2, f4, f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                canvas.drawPath(path2, geeVar);
                                f9 += length2;
                                size3--;
                                z = false;
                                f6 = 1.0f;
                            }
                        }
                        float f11 = f9 + length2;
                        if (f11 >= f8 && f9 <= min) {
                            if (f11 > min || f8 >= f9) {
                                f2 = f8 < f9 ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : (f8 - f9) / length2;
                                if (min > f11) {
                                    f4 = f2;
                                    f3 = 1.0f;
                                    ebx.g(path2, f4, f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                    canvas.drawPath(path2, geeVar);
                                } else {
                                    f3 = (min - f9) / length2;
                                    f4 = f2;
                                    ebx.g(path2, f4, f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                    canvas.drawPath(path2, geeVar);
                                }
                            } else {
                                canvas.drawPath(path2, geeVar);
                            }
                        }
                        f9 += length2;
                        size3--;
                        z = false;
                        f6 = 1.0f;
                    }
                    buj.bd();
                } else {
                    canvas.drawPath(path, geeVar);
                    buj.bd();
                }
            } else {
                path.reset();
                for (int size4 = arrayList3.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((gjf) arrayList3.get(size4)).p(), matrix);
                }
                buj.bd();
                canvas.drawPath(path, geeVar);
                buj.bd();
            }
            i5++;
            z = false;
            i2 = 1;
            f5 = 100.0f;
            f6 = 1.0f;
        }
    }

    @Override // g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.p;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.s;
            if (i >= arrayList.size()) {
                RectF rectF2 = this.f10983e;
                path.computeBounds(rectF2, false);
                float c2 = this.q.c() / 2.0f;
                rectF2.set(rectF2.left - c2, rectF2.top - c2, rectF2.right + c2, rectF2.bottom + c2);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                buj.bd();
                return;
            }
            ln lnVar = (ln) arrayList.get(i);
            for (int i2 = 0; i2 < lnVar.f19607a.size(); i2++) {
                path.addPath(((gjf) lnVar.f19607a.get(i2)).p(), matrix);
            }
            i++;
        }
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        ArrayList arrayList;
        ArrayList arrayList2 = (ArrayList) list;
        ln lnVar = null;
        ejw ejwVar = null;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            dvz dvzVar = (dvz) arrayList2.get(size);
            if (dvzVar instanceof ejw) {
                ejw ejwVar2 = (ejw) dvzVar;
                if (ejwVar2.getType() == eyu.f16389d) {
                    ejwVar = ejwVar2;
                }
            }
        }
        if (ejwVar != null) {
            ejwVar.g(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.s;
            if (size2 < 0) {
                break;
            }
            dvz dvzVar2 = (dvz) list2.get(size2);
            if (dvzVar2 instanceof ejw) {
                ejw ejwVar3 = (ejw) dvzVar2;
                if (ejwVar3.getType() == eyu.f16389d) {
                    if (lnVar != null) {
                        arrayList.add(lnVar);
                    }
                    ln lnVar2 = new ln(ejwVar3);
                    ejwVar3.g(this);
                    lnVar = lnVar2;
                }
            }
            if (dvzVar2 instanceof gjf) {
                if (lnVar == null) {
                    lnVar = new ln(ejwVar);
                }
                lnVar.f19607a.add((gjf) dvzVar2);
            }
        }
        if (lnVar != null) {
            arrayList.add(lnVar);
        }
    }
}
