package g;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class qs {

    /* renamed from: a, reason: collision with root package name */
    public static final Matrix f19874a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public float f19875b;

    /* renamed from: c, reason: collision with root package name */
    public float f19876c;

    /* renamed from: d, reason: collision with root package name */
    public final tl f19877d;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f19878e;

    /* renamed from: f, reason: collision with root package name */
    public Paint f19879f;

    /* renamed from: g, reason: collision with root package name */
    public int f19880g;
    public Paint h;
    public final Path i;
    public PathMeasure j;
    public String k;
    public float l;
    public final Path m;
    public float n;
    public final Matrix o;
    public final dmv p;

    public qs() {
        this.o = new Matrix();
        this.f19875b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.n = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f19876c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f19880g = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.k = null;
        this.f19878e = null;
        this.f19877d = new tl(0);
        this.p = new dmv();
        this.i = new Path();
        this.m = new Path();
    }

    public qs(qs qsVar) {
        this.o = new Matrix();
        this.f19875b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.l = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.n = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f19876c = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f19880g = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.k = null;
        this.f19878e = null;
        tl tlVar = new tl(0);
        this.f19877d = tlVar;
        this.p = new dmv(qsVar.p, tlVar);
        this.i = new Path(qsVar.i);
        this.m = new Path(qsVar.m);
        this.f19875b = qsVar.f19875b;
        this.l = qsVar.l;
        this.n = qsVar.n;
        this.f19876c = qsVar.f19876c;
        this.f19880g = qsVar.f19880g;
        this.k = qsVar.k;
        String str = qsVar.k;
        if (str != null) {
            tlVar.put(str, this);
        }
        this.f19878e = qsVar.f19878e;
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f19880g;
    }

    public final void q(dmv dmvVar, Matrix matrix, Canvas canvas, int i, int i2) {
        int i3;
        float f2;
        int i4;
        float f3;
        Matrix matrix2 = dmvVar.f14447e;
        ArrayList arrayList = dmvVar.h;
        matrix2.set(matrix);
        Matrix matrix3 = dmvVar.f14447e;
        matrix3.preConcat(dmvVar.i);
        canvas.save();
        char c2 = 0;
        int i5 = 0;
        while (i5 < arrayList.size()) {
            dtb dtbVar = (dtb) arrayList.get(i5);
            if (dtbVar instanceof dmv) {
                q((dmv) dtbVar, matrix3, canvas, i, i2);
            } else if (dtbVar instanceof rq) {
                rq rqVar = (rq) dtbVar;
                float f4 = i / this.n;
                float f5 = i2 / this.f19876c;
                float min = Math.min(f4, f5);
                Matrix matrix4 = this.o;
                matrix4.set(matrix3);
                matrix4.postScale(f4, f5);
                float[] fArr = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
                matrix3.mapVectors(fArr);
                float hypot = (float) Math.hypot(fArr[c2], fArr[1]);
                i3 = i5;
                float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                float f6 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                float max = Math.max(hypot, hypot2);
                float abs = max > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? Math.abs(f6) / max : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (abs != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    rqVar.getClass();
                    Path path = this.i;
                    path.reset();
                    jv[] jvVarArr = rqVar.f19917a;
                    if (jvVarArr != null) {
                        jv.d(jvVarArr, path);
                    }
                    Path path2 = this.m;
                    path2.reset();
                    if (rqVar instanceof aff) {
                        path2.setFillType(rqVar.f19919c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        path2.addPath(path, matrix4);
                        canvas.clipPath(path2);
                    } else {
                        atx atxVar = (atx) rqVar;
                        float f7 = atxVar.l;
                        if (f7 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || atxVar.m != 1.0f) {
                            float f8 = atxVar.f10840e;
                            float f9 = (f7 + f8) % 1.0f;
                            float f10 = (atxVar.m + f8) % 1.0f;
                            if (this.j == null) {
                                this.j = new PathMeasure();
                            }
                            this.j.setPath(path, false);
                            float length = this.j.getLength();
                            float f11 = f9 * length;
                            float f12 = f10 * length;
                            path.reset();
                            if (f11 > f12) {
                                this.j.getSegment(f11, length, path, true);
                                PathMeasure pathMeasure = this.j;
                                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                pathMeasure.getSegment(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f12, path, true);
                            } else {
                                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                this.j.getSegment(f11, f12, path, true);
                            }
                            path.rLineTo(f2, f2);
                        }
                        path2.addPath(path, matrix4);
                        dsg dsgVar = atxVar.j;
                        if (((Shader) dsgVar.f14704a) == null && dsgVar.f14707d == 0) {
                            i4 = 16777215;
                            f3 = 255.0f;
                        } else {
                            if (this.h == null) {
                                i4 = 16777215;
                                Paint paint = new Paint(1);
                                this.h = paint;
                                paint.setStyle(Paint.Style.FILL);
                            } else {
                                i4 = 16777215;
                            }
                            Paint paint2 = this.h;
                            Shader shader = (Shader) dsgVar.f14704a;
                            if (shader != null) {
                                shader.setLocalMatrix(matrix4);
                                paint2.setShader(shader);
                                paint2.setAlpha(Math.round(atxVar.f10839d * 255.0f));
                                f3 = 255.0f;
                            } else {
                                paint2.setShader(null);
                                paint2.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                                int i6 = dsgVar.f14707d;
                                float f13 = atxVar.f10839d;
                                PorterDuff.Mode mode = eia.f15573a;
                                f3 = 255.0f;
                                paint2.setColor((i6 & i4) | (((int) (Color.alpha(i6) * f13)) << 24));
                            }
                            paint2.setColorFilter(null);
                            path2.setFillType(atxVar.f19919c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            canvas.drawPath(path2, paint2);
                        }
                        dsg dsgVar2 = atxVar.f10842g;
                        if (((Shader) dsgVar2.f14704a) != null || dsgVar2.f14707d != 0) {
                            if (this.f19879f == null) {
                                Paint paint3 = new Paint(1);
                                this.f19879f = paint3;
                                paint3.setStyle(Paint.Style.STROKE);
                            }
                            Paint paint4 = this.f19879f;
                            Paint.Join join = atxVar.k;
                            if (join != null) {
                                paint4.setStrokeJoin(join);
                            }
                            Paint.Cap cap = atxVar.h;
                            if (cap != null) {
                                paint4.setStrokeCap(cap);
                            }
                            paint4.setStrokeMiter(atxVar.f10841f);
                            Shader shader2 = (Shader) dsgVar2.f14704a;
                            if (shader2 != null) {
                                shader2.setLocalMatrix(matrix4);
                                paint4.setShader(shader2);
                                paint4.setAlpha(Math.round(atxVar.n * f3));
                            } else {
                                paint4.setShader(null);
                                paint4.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                                int i7 = dsgVar2.f14707d;
                                float f14 = atxVar.n;
                                PorterDuff.Mode mode2 = eia.f15573a;
                                paint4.setColor((i7 & i4) | (((int) (Color.alpha(i7) * f14)) << 24));
                            }
                            paint4.setColorFilter(null);
                            paint4.setStrokeWidth(atxVar.i * min * abs);
                            canvas.drawPath(path2, paint4);
                        }
                    }
                }
                i5 = i3 + 1;
                c2 = 0;
            }
            i3 = i5;
            i5 = i3 + 1;
            c2 = 0;
        }
        canvas.restore();
    }

    public void setAlpha(float f2) {
        setRootAlpha((int) (f2 * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.f19880g = i;
    }
}
