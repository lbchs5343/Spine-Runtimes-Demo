package g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.LongSparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class aio extends grq {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f10271a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f10272b;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10273f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f10274g;
    public final Paint h;
    public final bsb i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v24, types: [g.hcl] */
    /* JADX WARN: Type inference failed for: r1v31, types: [g.hcl] */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v45, types: [g.grq, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v59 */
    /* JADX WARN: Type inference failed for: r1v60 */
    public aio(fts ftsVar, cbc cbcVar, List list, cgf cgfVar, Context context) {
        super(ftsVar, cbcVar);
        grq grqVar;
        ?? r1;
        this.f10274g = new ArrayList();
        this.f10272b = new RectF();
        this.f10271a = new RectF();
        this.h = new Paint();
        this.f10273f = true;
        cnc cncVar = cbcVar.m;
        Path path = null;
        if (cncVar != null) {
            cej dq = cncVar.dq();
            this.i = (bsb) dq;
            bg(dq);
            dq.l(this);
        } else {
            this.i = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(cgfVar.m.size());
        int size = list.size() - 1;
        grq grqVar2 = null;
        while (true) {
            if (size < 0) {
                for (int i = 0; i < longSparseArray.size(); i++) {
                    grq grqVar3 = (grq) longSparseArray.get(longSparseArray.keyAt(i));
                    if (grqVar3 != null && (grqVar = (grq) longSparseArray.get(grqVar3.au.l)) != null) {
                        grqVar3.bb = grqVar;
                    }
                }
                return;
            }
            cbc cbcVar2 = (cbc) list.get(size);
            int[] iArr = cjl.f12986a;
            ayj ayjVar = cbcVar2.f12583g;
            String str = cbcVar2.w;
            switch (iArr[ayjVar.ordinal()]) {
                case 1:
                    r1 = new rz(ftsVar, cbcVar2, this, cgfVar);
                    break;
                case 2:
                    r1 = new aio(ftsVar, cbcVar2, (List) cgfVar.q.get(str), cgfVar, context);
                    break;
                case 3:
                    r1 = new evm(ftsVar, cbcVar2);
                    break;
                case 4:
                    cgf cgfVar2 = ftsVar.x;
                    ?? r12 = cgfVar2 == null ? path : (hcl) cgfVar2.f12827e.get(str);
                    if (r12 != 0 ? "text:".equals(r12.f19223d) : false) {
                        r1 = new fis(ftsVar, cbcVar2, context);
                        break;
                    } else {
                        cgf cgfVar3 = ftsVar.x;
                        ?? r13 = cgfVar3 == null ? path : (hcl) cgfVar3.f12827e.get(str);
                        if (r13 != 0 ? "videoview:".equals(r13.f19223d) : false) {
                            bm bmVar = new bm(ftsVar, cbcVar2);
                            bmVar._n = path;
                            bmVar.f11812b = -1;
                            bmVar.f11811a = -1;
                            hcl hclVar = bmVar.f12908f;
                            r1 = bmVar;
                            if (hclVar != null) {
                                float h = ebx.h();
                                int i2 = (int) (hclVar.f19224e * h);
                                bmVar.f11812b = i2;
                                int i3 = (int) (hclVar.h * h);
                                bmVar.f11811a = i3;
                                RectF rectF = new RectF();
                                rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i2, i3);
                                Path path2 = new Path();
                                bmVar._n = path2;
                                float f2 = h * 40.0f;
                                path2.addRoundRect(rectF, f2, f2, Path.Direction.CW);
                                r1 = bmVar;
                                break;
                            }
                        } else {
                            r1 = new chy(ftsVar, cbcVar2);
                            break;
                        }
                    }
                    break;
                case 5:
                    r1 = new gda(ftsVar, cbcVar2);
                    break;
                case 6:
                    r1 = new dhr(ftsVar, cbcVar2);
                    break;
                default:
                    hbp.b("Unknown layer type " + cbcVar2.f12583g);
                    r1 = path;
                    break;
            }
            if (r1 != 0) {
                longSparseArray.put(r1.au.f12581e, r1);
                if (grqVar2 != null) {
                    grqVar2.at = r1;
                    grqVar2 = null;
                } else {
                    this.f10274g.add(0, r1);
                    bwd bwdVar = cbcVar2.i;
                    if (bwdVar != null) {
                        int i4 = ts.f20063a[bwdVar.ordinal()];
                        if (i4 == 1 || i4 == 2) {
                            grqVar2 = r1;
                        }
                    }
                }
                size--;
                path = null;
            }
            size--;
            path = null;
        }
    }

    @Override // g.grq
    public final void d(Canvas canvas, Matrix matrix, int i) {
        bj(i);
        cbc cbcVar = this.au;
        float f2 = cbcVar.f12579c;
        float f3 = cbcVar.n;
        RectF rectF = this.f10271a;
        rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2, f3);
        matrix.mapRect(rectF);
        boolean z = this.af.af;
        ArrayList arrayList = this.f10274g;
        boolean z2 = z && arrayList.size() > 1 && i != 255;
        if (z2) {
            Paint paint = this.h;
            paint.setAlpha(i);
            ebx.j(canvas, rectF, paint);
        } else {
            canvas.save();
        }
        if (z2) {
            i = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((this.f10273f || !"__container".equals(cbcVar.u)) && !rectF.isEmpty()) ? canvas.clipRect(rectF) : true) {
                ((grq) arrayList.get(size)).l(canvas, matrix, i);
            }
        }
        canvas.restore();
        buj.bd();
    }

    @Override // g.grq
    public final void j(float f2) {
        super.j(f2);
        cbc cbcVar = this.au;
        bsb bsbVar = this.i;
        if (bsbVar != null) {
            cgf cgfVar = this.af.x;
            f2 = ((((Float) bsbVar.m()).floatValue() * cbcVar.q.l) - cbcVar.q.f12824b) / ((cgfVar.f12828f - cgfVar.f12824b) + 0.01f);
        }
        if (bsbVar == null) {
            float f3 = cbcVar.f12580d;
            cgf cgfVar2 = cbcVar.q;
            f2 -= f3 / (cgfVar2.f12828f - cgfVar2.f12824b);
        }
        if (cbcVar.o != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && !"__container".equals(cbcVar.u)) {
            f2 /= cbcVar.o;
        }
        ArrayList arrayList = this.f10274g;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((grq) arrayList.get(size)).j(f2);
        }
    }

    @Override // g.grq
    public final void k(boolean z) {
        super.k(z);
        Iterator it = this.f10274g.iterator();
        while (it.hasNext()) {
            ((grq) it.next()).k(z);
        }
    }

    @Override // g.grq, g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        super.m(rectF, matrix, z);
        ArrayList arrayList = this.f10274g;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.f10272b;
            rectF2.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ((grq) arrayList.get(size)).m(rectF2, this.ah, true);
            rectF.union(rectF2);
        }
    }
}
