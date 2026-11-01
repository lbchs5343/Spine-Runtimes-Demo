package g;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class grq implements fyj, glt {
    public gee ac;
    public final gee ad;
    public final RectF ae;
    public final fts af;
    public boolean ag;
    public final Matrix ah;
    public BlurMaskFilter aj;
    public final RectF ak;
    public final gee al;
    public List an;
    public float ao;
    public final Matrix ap;
    public final ArrayList aq;
    public final amp ar;
    public final gee as;
    public grq at;
    public final cbc au;
    public final RectF av;
    public final RectF aw;
    public final RectF ay;
    public final fpd az;
    public float ba;
    public grq bb;
    public boolean bd;
    public final gee be;
    public final bsb bf;
    public final Path am = new Path();
    public final Matrix ax = new Matrix();
    public final Matrix bc = new Matrix();
    public final gee ai = new gee(1, 0);

    public grq(fts ftsVar, cbc cbcVar) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.al = new gee(mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.as = new gee(mode2);
        gee geeVar = new gee(1, 0);
        this.be = geeVar;
        PorterDuff.Mode mode3 = PorterDuff.Mode.CLEAR;
        gee geeVar2 = new gee();
        geeVar2.setXfermode(new PorterDuffXfermode(mode3));
        this.ad = geeVar2;
        this.aw = new RectF();
        this.ay = new RectF();
        this.ae = new RectF();
        this.ak = new RectF();
        this.av = new RectF();
        this.ah = new Matrix();
        this.aq = new ArrayList();
        this.bd = true;
        this.ba = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.ap = new Matrix();
        this.ao = 1.0f;
        this.af = ftsVar;
        this.au = cbcVar;
        String str = cbcVar.u;
        List list = cbcVar.f12577a;
        str.concat("#draw");
        if (cbcVar.i == bwd.ox) {
            geeVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            geeVar.setXfermode(new PorterDuffXfermode(mode));
        }
        eld eldVar = cbcVar.p;
        eldVar.getClass();
        amp ampVar = new amp(eldVar);
        this.ar = ampVar;
        ampVar.r(this);
        if (list != null && !list.isEmpty()) {
            fpd fpdVar = new fpd(list);
            this.az = fpdVar;
            Iterator it = ((ArrayList) fpdVar.f17190f).iterator();
            while (it.hasNext()) {
                ((cej) it.next()).l(this);
            }
            Iterator it2 = ((ArrayList) this.az.f17187c).iterator();
            while (it2.hasNext()) {
                cej cejVar = (cej) it2.next();
                bg(cejVar);
                cejVar.l(this);
            }
        }
        cbc cbcVar2 = this.au;
        if (cbcVar2.t.isEmpty()) {
            if (true != this.bd) {
                this.bd = true;
                this.af.invalidateSelf();
                return;
            }
            return;
        }
        bsb bsbVar = new bsb(cbcVar2.t);
        this.bf = bsbVar;
        bsbVar.h = true;
        bsbVar.l(new ddn(this));
        boolean z = ((Float) this.bf.m()).floatValue() == 1.0f;
        if (z != this.bd) {
            this.bd = z;
            this.af.invalidateSelf();
        }
        bg(this.bf);
    }

    public final void bg(cej cejVar) {
        if (cejVar == null) {
            return;
        }
        this.aq.add(cejVar);
    }

    public final boolean bh() {
        fpd fpdVar = this.az;
        return (fpdVar == null || ((ArrayList) fpdVar.f17190f).isEmpty()) ? false : true;
    }

    public final void bi() {
        ejl ejlVar = this.af.x.h;
        String str = this.au.u;
        HashMap hashMap = ejlVar.f15666c;
        if (!ejlVar.f15664a) {
            return;
        }
        fbq fbqVar = (fbq) hashMap.get(str);
        if (fbqVar == null) {
            fbqVar = new fbq();
            hashMap.put(str, fbqVar);
        }
        int i = fbqVar.f16529a + 1;
        fbqVar.f16529a = i;
        if (i == Integer.MAX_VALUE) {
            fbqVar.f16529a = i / 2;
        }
        if (!str.equals("__container")) {
            return;
        }
        Iterator it = ejlVar.f15665b.iterator();
        while (true) {
            duj dujVar = (duj) it;
            if (!dujVar.hasNext()) {
                return;
            } else {
                dujVar.next();
            }
        }
    }

    public final void bj(int i) {
        this.ao = (i / 255.0f) * ((this.ar.l != null ? ((Integer) r0.m()).intValue() : 100) / 100.0f);
    }

    public final void bk() {
        if (this.an != null) {
            return;
        }
        if (this.bb == null) {
            this.an = Collections.EMPTY_LIST;
            return;
        }
        this.an = new ArrayList();
        for (grq grqVar = this.bb; grqVar != null; grqVar = grqVar.bb) {
            this.an.add(grqVar);
        }
    }

    public final void bl(Canvas canvas) {
        RectF rectF = this.aw;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.ad);
        buj.bd();
    }

    public fzn c() {
        return this.au.v;
    }

    public abstract void d(Canvas canvas, Matrix matrix, int i);

    @Override // g.fyj
    public final void dq() {
        this.af.invalidateSelf();
    }

    public aoy e() {
        return this.au.k;
    }

    public void j(float f2) {
        amp ampVar = this.ar;
        dph dphVar = ampVar.l;
        if (dphVar != null) {
            dphVar.p(f2);
        }
        bsb bsbVar = ampVar.i;
        if (bsbVar != null) {
            bsbVar.p(f2);
        }
        bsb bsbVar2 = ampVar.f10480c;
        if (bsbVar2 != null) {
            bsbVar2.p(f2);
        }
        cav cavVar = ampVar.h;
        if (cavVar != null) {
            cavVar.p(f2);
        }
        cej cejVar = ampVar.n;
        if (cejVar != null) {
            cejVar.p(f2);
        }
        exi exiVar = ampVar.f10478a;
        if (exiVar != null) {
            exiVar.p(f2);
        }
        bsb bsbVar3 = ampVar.j;
        if (bsbVar3 != null) {
            bsbVar3.p(f2);
        }
        bsb bsbVar4 = ampVar.f10479b;
        if (bsbVar4 != null) {
            bsbVar4.p(f2);
        }
        bsb bsbVar5 = ampVar.f10482e;
        if (bsbVar5 != null) {
            bsbVar5.p(f2);
        }
        int i = 0;
        fpd fpdVar = this.az;
        if (fpdVar != null) {
            ArrayList arrayList = (ArrayList) fpdVar.f17190f;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((cej) arrayList.get(i2)).p(f2);
            }
        }
        bsb bsbVar6 = this.bf;
        if (bsbVar6 != null) {
            bsbVar6.p(f2);
        }
        grq grqVar = this.at;
        if (grqVar != null) {
            grqVar.j(f2);
        }
        while (true) {
            ArrayList arrayList2 = this.aq;
            if (i >= arrayList2.size()) {
                return;
            }
            ((cej) arrayList2.get(i)).p(f2);
            i++;
        }
    }

    public void k(boolean z) {
        if (z && this.ac == null) {
            this.ac = new gee();
        }
        this.ag = z;
    }

    @Override // g.glt
    public final void l(Canvas canvas, Matrix matrix, int i) {
        float f2;
        gee geeVar;
        Integer num;
        if (this.bd) {
            cbc cbcVar = this.au;
            if (!cbcVar.j) {
                bk();
                this.ap.set(matrix);
                Matrix matrix2 = this.ax;
                matrix2.reset();
                matrix2.set(matrix);
                int i2 = 1;
                for (int size = this.an.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((grq) this.an.get(size)).ar.o());
                }
                buj.bd();
                amp ampVar = this.ar;
                dph dphVar = ampVar.l;
                int intValue = (int) ((((i / 255.0f) * ((dphVar == null || (num = (Integer) dphVar.m()) == null) ? 100 : num.intValue())) / 100.0f) * 255.0f);
                if (this.at == null && !bh()) {
                    matrix2.preConcat(ampVar.o());
                    d(canvas, matrix2, intValue);
                    buj.bd();
                    buj.bd();
                    bi();
                    return;
                }
                RectF rectF = this.aw;
                m(rectF, matrix2, false);
                if (this.at != null && cbcVar.i != bwd.ox) {
                    RectF rectF2 = this.ak;
                    rectF2.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    this.at.m(rectF2, matrix, true);
                    if (!rectF.intersect(rectF2)) {
                        rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    }
                }
                matrix2.preConcat(ampVar.o());
                RectF rectF3 = this.ae;
                rectF3.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                boolean bh = bh();
                int i3 = 2;
                fpd fpdVar = this.az;
                Path path = this.am;
                if (bh) {
                    int size2 = ((List) fpdVar.f17188d).size();
                    int i4 = 0;
                    while (true) {
                        if (i4 < size2) {
                            fiz fizVar = (fiz) ((List) fpdVar.f17188d).get(i4);
                            Path path2 = (Path) ((cej) ((ArrayList) fpdVar.f17190f).get(i4)).m();
                            if (path2 != null) {
                                path.set(path2);
                                path.transform(matrix2);
                                int i5 = cjl.f12987b[fizVar.f16872b.ordinal()];
                                if (i5 == i2 || i5 == i3 || ((i5 == 3 || i5 == 4) && fizVar.f16871a)) {
                                    break;
                                }
                                RectF rectF4 = this.av;
                                path.computeBounds(rectF4, false);
                                if (i4 == 0) {
                                    rectF3.set(rectF4);
                                } else {
                                    rectF3.set(Math.min(rectF3.left, rectF4.left), Math.min(rectF3.top, rectF4.top), Math.max(rectF3.right, rectF4.right), Math.max(rectF3.bottom, rectF4.bottom));
                                }
                            }
                            i4++;
                            i2 = 1;
                            i3 = 2;
                        } else if (!rectF.intersect(rectF3)) {
                            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                            rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        }
                    }
                }
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float width = canvas.getWidth();
                float height = canvas.getHeight();
                RectF rectF5 = this.ay;
                rectF5.set(f2, f2, width, height);
                Matrix matrix3 = this.bc;
                canvas.getMatrix(matrix3);
                if (!matrix3.isIdentity()) {
                    matrix3.invert(matrix3);
                    matrix3.mapRect(rectF5);
                }
                if (!rectF.intersect(rectF5)) {
                    rectF.set(f2, f2, f2, f2);
                }
                buj.bd();
                if (rectF.width() >= 1.0f && rectF.height() >= 1.0f) {
                    gee geeVar2 = this.ai;
                    geeVar2.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    ebx.f(canvas, rectF, geeVar2, 31);
                    buj.bd();
                    bl(canvas);
                    d(canvas, matrix2, intValue);
                    buj.bd();
                    if (bh()) {
                        gee geeVar3 = this.al;
                        ebx.f(canvas, rectF, geeVar3, 19);
                        if (Build.VERSION.SDK_INT < 28) {
                            bl(canvas);
                        }
                        buj.bd();
                        int i6 = 0;
                        while (true) {
                            List list = (List) fpdVar.f17188d;
                            ArrayList arrayList = (ArrayList) fpdVar.f17190f;
                            List list2 = (List) fpdVar.f17188d;
                            if (i6 >= list.size()) {
                                break;
                            }
                            fiz fizVar2 = (fiz) list2.get(i6);
                            cej cejVar = (cej) arrayList.get(i6);
                            cej cejVar2 = (cej) ((ArrayList) fpdVar.f17187c).get(i6);
                            int[] iArr = cjl.f12987b;
                            exf exfVar = fizVar2.f16872b;
                            boolean z = fizVar2.f16871a;
                            int i7 = iArr[exfVar.ordinal()];
                            if (i7 == 1) {
                                if (!arrayList.isEmpty()) {
                                    for (int i8 = 0; i8 < list2.size(); i8++) {
                                        if (((fiz) list2.get(i8)).f16872b == exf.p) {
                                        }
                                    }
                                    geeVar2.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                                    canvas.drawRect(rectF, geeVar2);
                                }
                                break;
                                break;
                            }
                            gee geeVar4 = this.as;
                            if (i7 == 2) {
                                if (i6 == 0) {
                                    geeVar2.setColor(-16777216);
                                    geeVar2.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                                    canvas.drawRect(rectF, geeVar2);
                                }
                                if (z) {
                                    ebx.f(canvas, rectF, geeVar4, 31);
                                    canvas.drawRect(rectF, geeVar2);
                                    geeVar4.setAlpha((int) (((Integer) cejVar2.m()).intValue() * 2.55f));
                                    path.set((Path) cejVar.m());
                                    path.transform(matrix2);
                                    canvas.drawPath(path, geeVar4);
                                    canvas.restore();
                                } else {
                                    path.set((Path) cejVar.m());
                                    path.transform(matrix2);
                                    canvas.drawPath(path, geeVar4);
                                }
                                break;
                            }
                            if (i7 != 3) {
                                if (i7 == 4) {
                                    if (z) {
                                        ebx.f(canvas, rectF, geeVar2, 31);
                                        canvas.drawRect(rectF, geeVar2);
                                        path.set((Path) cejVar.m());
                                        path.transform(matrix2);
                                        geeVar2.setAlpha((int) (((Integer) cejVar2.m()).intValue() * 2.55f));
                                        canvas.drawPath(path, geeVar4);
                                        canvas.restore();
                                    } else {
                                        path.set((Path) cejVar.m());
                                        path.transform(matrix2);
                                        geeVar2.setAlpha((int) (((Integer) cejVar2.m()).intValue() * 2.55f));
                                        canvas.drawPath(path, geeVar2);
                                    }
                                }
                            } else if (z) {
                                ebx.f(canvas, rectF, geeVar3, 31);
                                canvas.drawRect(rectF, geeVar2);
                                geeVar4.setAlpha((int) (((Integer) cejVar2.m()).intValue() * 2.55f));
                                path.set((Path) cejVar.m());
                                path.transform(matrix2);
                                canvas.drawPath(path, geeVar4);
                                canvas.restore();
                            } else {
                                ebx.f(canvas, rectF, geeVar3, 31);
                                path.set((Path) cejVar.m());
                                path.transform(matrix2);
                                geeVar2.setAlpha((int) (((Integer) cejVar2.m()).intValue() * 2.55f));
                                canvas.drawPath(path, geeVar2);
                                canvas.restore();
                            }
                            i6++;
                        }
                        canvas.restore();
                        buj.bd();
                    }
                    if (this.at != null) {
                        ebx.f(canvas, rectF, this.be, 19);
                        buj.bd();
                        bl(canvas);
                        this.at.l(canvas, matrix, intValue);
                        canvas.restore();
                        buj.bd();
                        buj.bd();
                    }
                    canvas.restore();
                    buj.bd();
                }
                if (this.ag && (geeVar = this.ac) != null) {
                    geeVar.setStyle(Paint.Style.STROKE);
                    this.ac.setColor(-251901);
                    this.ac.setStrokeWidth(4.0f);
                    canvas.drawRect(rectF, this.ac);
                    this.ac.setStyle(Paint.Style.FILL);
                    this.ac.setColor(1357638635);
                    canvas.drawRect(rectF, this.ac);
                }
                buj.bd();
                bi();
                return;
            }
        }
        buj.bd();
    }

    public void m(RectF rectF, Matrix matrix, boolean z) {
        this.aw.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        bk();
        Matrix matrix2 = this.ah;
        matrix2.set(matrix);
        if (z) {
            List list = this.an;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((grq) this.an.get(size)).ar.o());
                }
            } else {
                grq grqVar = this.bb;
                if (grqVar != null) {
                    matrix2.preConcat(grqVar.ar.o());
                }
            }
        }
        matrix2.preConcat(this.ar.o());
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
    }
}
