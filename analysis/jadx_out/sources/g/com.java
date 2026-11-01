package g;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class com implements fyj, dvz, glt {

    /* renamed from: a, reason: collision with root package name */
    public final gqk f13223a;

    /* renamed from: b, reason: collision with root package name */
    public final exi f13224b;

    /* renamed from: c, reason: collision with root package name */
    public final bsb f13225c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13226d;

    /* renamed from: e, reason: collision with root package name */
    public final Path f13227e;

    /* renamed from: f, reason: collision with root package name */
    public final exi f13228f;

    /* renamed from: g, reason: collision with root package name */
    public final gee f13229g;
    public final boolean h;
    public final RectF i;
    public float j;
    public final fts k;
    public final exi o;
    public final dph q;
    public final gfy r;
    public final ArrayList t;
    public final LongSparseArray p = new LongSparseArray();
    public final LongSparseArray s = new LongSparseArray();

    public com(fts ftsVar, cgf cgfVar, grq grqVar, flm flmVar) {
        Path path = new Path();
        this.f13227e = path;
        this.f13229g = new gee(1, 0);
        this.i = new RectF();
        this.t = new ArrayList();
        this.j = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.h = flmVar.h;
        this.k = ftsVar;
        this.f13223a = flmVar.f16990c;
        path.setFillType(flmVar.f16992f);
        this.f13226d = (int) (cgfVar.v() / 32.0f);
        cej dq = flmVar.f16993g.dq();
        this.o = (exi) dq;
        dq.l(this);
        grqVar.bg(dq);
        cej dq2 = flmVar.f16988a.dq();
        this.q = (dph) dq2;
        dq2.l(this);
        grqVar.bg(dq2);
        cej dq3 = flmVar.f16989b.dq();
        this.f13224b = (exi) dq3;
        dq3.l(this);
        grqVar.bg(dq3);
        cej dq4 = flmVar.f16991d.dq();
        this.f13228f = (exi) dq4;
        dq4.l(this);
        grqVar.bg(dq4);
        if (grqVar.e() != null) {
            cej dq5 = ((cnc) grqVar.e().h).dq();
            this.f13225c = (bsb) dq5;
            dq5.l(this);
            grqVar.bg(dq5);
        }
        if (grqVar.c() != null) {
            this.r = new gfy(this, grqVar, grqVar.c());
        }
    }

    @Override // g.fyj
    public final void dq() {
        this.k.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fe  */
    @Override // g.glt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        float f2;
        bsb bsbVar;
        gfy gfyVar;
        if (this.h) {
            return;
        }
        Path path = this.f13227e;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.t;
            if (i2 >= arrayList.size()) {
                break;
            }
            path.addPath(((gjf) arrayList.get(i2)).p(), matrix);
            i2++;
        }
        path.computeBounds(this.i, false);
        gqk gqkVar = this.f13223a;
        gqk gqkVar2 = gqk.dq;
        exi exiVar = this.o;
        exi exiVar2 = this.f13228f;
        exi exiVar3 = this.f13224b;
        if (gqkVar == gqkVar2) {
            long u = u();
            LongSparseArray longSparseArray = this.p;
            shader = (LinearGradient) longSparseArray.get(u);
            if (shader == null) {
                PointF pointF = (PointF) exiVar3.m();
                PointF pointF2 = (PointF) exiVar2.m();
                fns fnsVar = (fns) exiVar.m();
                shader = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, fnsVar.f17106b, fnsVar.f17105a, Shader.TileMode.CLAMP);
                longSparseArray.put(u, shader);
            }
        } else {
            long u2 = u();
            LongSparseArray longSparseArray2 = this.s;
            shader = (RadialGradient) longSparseArray2.get(u2);
            if (shader == null) {
                PointF pointF3 = (PointF) exiVar3.m();
                PointF pointF4 = (PointF) exiVar2.m();
                fns fnsVar2 = (fns) exiVar.m();
                int[] iArr = fnsVar2.f17106b;
                float[] fArr = fnsVar2.f17105a;
                float f3 = pointF3.x;
                float f4 = pointF3.y;
                float f5 = pointF4.x;
                float f6 = pointF4.y;
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float hypot = (float) Math.hypot(f5 - f3, f6 - f4);
                shader = new RadialGradient(f3, f4, hypot <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 0.001f : hypot, iArr, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(u2, shader);
                shader.setLocalMatrix(matrix);
                gee geeVar = this.f13229g;
                geeVar.setShader(shader);
                bsbVar = this.f13225c;
                if (bsbVar != null) {
                    float floatValue = ((Float) bsbVar.m()).floatValue();
                    if (floatValue == f2) {
                        geeVar.setMaskFilter(null);
                    } else if (floatValue != this.j) {
                        geeVar.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
                    }
                    this.j = floatValue;
                }
                gfyVar = this.r;
                if (gfyVar != null) {
                    gfyVar.h(geeVar);
                }
                PointF pointF5 = din.f14231a;
                geeVar.setAlpha(Math.max(0, Math.min(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (int) ((((i / 255.0f) * ((Integer) this.q.m()).intValue()) / 100.0f) * 255.0f))));
                canvas.drawPath(path, geeVar);
                buj.bd();
            }
        }
        f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        shader.setLocalMatrix(matrix);
        gee geeVar2 = this.f13229g;
        geeVar2.setShader(shader);
        bsbVar = this.f13225c;
        if (bsbVar != null) {
        }
        gfyVar = this.r;
        if (gfyVar != null) {
        }
        PointF pointF52 = din.f14231a;
        geeVar2.setAlpha(Math.max(0, Math.min(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (int) ((((i / 255.0f) * ((Integer) this.q.m()).intValue()) / 100.0f) * 255.0f))));
        canvas.drawPath(path, geeVar2);
        buj.bd();
    }

    @Override // g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f13227e;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.t;
            if (i >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((gjf) arrayList.get(i)).p(), matrix);
                i++;
            }
        }
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            dvz dvzVar = (dvz) list2.get(i);
            if (dvzVar instanceof gjf) {
                this.t.add((gjf) dvzVar);
            }
        }
    }

    public final int u() {
        float f2 = this.f13224b.f12740d;
        float f3 = this.f13226d;
        int round = Math.round(f2 * f3);
        int round2 = Math.round(this.f13228f.f12740d * f3);
        int round3 = Math.round(this.o.f12740d * f3);
        int i = round != 0 ? round * 527 : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
    }
}
