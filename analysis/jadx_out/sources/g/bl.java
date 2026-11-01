package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class bl implements fyj, gjf, glt {

    /* renamed from: a, reason: collision with root package name */
    public final fts f11774a;

    /* renamed from: b, reason: collision with root package name */
    public final Path f11775b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f11776c;

    /* renamed from: d, reason: collision with root package name */
    public final gee f11777d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11778e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f11779f;

    /* renamed from: g, reason: collision with root package name */
    public final RectF f11780g;
    public final amp h;
    public final Matrix i;
    public final ArrayList j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public bl(fts ftsVar, grq grqVar, ewz ewzVar, cgf cgfVar) {
        this(ftsVar, grqVar, r4, r5, r11);
        eld eldVar;
        String str = ewzVar.f16304a;
        boolean z = ewzVar.f16306c;
        List list = ewzVar.f16305b;
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            dvz e2 = ((dpy) list.get(i2)).e(ftsVar, cgfVar, grqVar);
            if (e2 != null) {
                arrayList.add(e2);
            }
        }
        while (true) {
            if (i >= list.size()) {
                eldVar = null;
                break;
            }
            dpy dpyVar = (dpy) list.get(i);
            if (dpyVar instanceof eld) {
                eldVar = (eld) dpyVar;
                break;
            }
            i++;
        }
    }

    public bl(fts ftsVar, grq grqVar, boolean z, ArrayList arrayList, eld eldVar) {
        this.f11777d = new gee();
        this.f11780g = new RectF();
        this.i = new Matrix();
        this.f11775b = new Path();
        this.f11776c = new RectF();
        this.f11774a = ftsVar;
        this.f11778e = z;
        this.j = arrayList;
        if (eldVar != null) {
            amp ampVar = new amp(eldVar);
            this.h = ampVar;
            ampVar.s(grqVar);
            ampVar.r(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            dvz dvzVar = (dvz) arrayList.get(size);
            if (dvzVar instanceof jq) {
                arrayList2.add((jq) dvzVar);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((jq) arrayList2.get(size2)).a(arrayList.listIterator(arrayList.size()));
        }
    }

    @Override // g.fyj
    public final void dq() {
        this.f11774a.invalidateSelf();
    }

    public final List k() {
        if (this.f11779f == null) {
            this.f11779f = new ArrayList();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.j;
                if (i >= arrayList.size()) {
                    break;
                }
                dvz dvzVar = (dvz) arrayList.get(i);
                if (dvzVar instanceof gjf) {
                    this.f11779f.add((gjf) dvzVar);
                }
                i++;
            }
        }
        return this.f11779f;
    }

    @Override // g.glt
    public final void l(Canvas canvas, Matrix matrix, int i) {
        if (this.f11778e) {
            return;
        }
        Matrix matrix2 = this.i;
        matrix2.set(matrix);
        amp ampVar = this.h;
        if (ampVar != null) {
            matrix2.preConcat(ampVar.o());
            i = (int) (((((ampVar.l == null ? 100 : ((Integer) r9.m()).intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        boolean z = this.f11774a.af;
        boolean z2 = false;
        ArrayList arrayList = this.j;
        if (z) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    break;
                }
                if (!(arrayList.get(i2) instanceof glt) || (i3 = i3 + 1) < 2) {
                    i2++;
                } else if (i != 255) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            RectF rectF = this.f11780g;
            rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            m(rectF, matrix2, true);
            gee geeVar = this.f11777d;
            geeVar.setAlpha(i);
            ebx.j(canvas, rectF, geeVar);
        }
        if (z2) {
            i = MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof glt) {
                ((glt) obj).l(canvas, matrix2, i);
            }
        }
        if (z2) {
            canvas.restore();
        }
    }

    @Override // g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        Matrix matrix2 = this.i;
        matrix2.set(matrix);
        amp ampVar = this.h;
        if (ampVar != null) {
            matrix2.preConcat(ampVar.o());
        }
        RectF rectF2 = this.f11776c;
        rectF2.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ArrayList arrayList = this.j;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            dvz dvzVar = (dvz) arrayList.get(size);
            if (dvzVar instanceof glt) {
                ((glt) dvzVar).m(rectF2, matrix2, z);
                rectF.union(rectF2);
            }
        }
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        int size = list.size();
        ArrayList arrayList = this.j;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            dvz dvzVar = (dvz) arrayList.get(size2);
            dvzVar.n(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(dvzVar);
        }
    }

    @Override // g.gjf
    public final Path p() {
        Matrix matrix = this.i;
        matrix.reset();
        amp ampVar = this.h;
        if (ampVar != null) {
            matrix.set(ampVar.o());
        }
        Path path = this.f11775b;
        path.reset();
        if (!this.f11778e) {
            ArrayList arrayList = this.j;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                dvz dvzVar = (dvz) arrayList.get(size);
                if (dvzVar instanceof gjf) {
                    path.addPath(((gjf) dvzVar).p(), matrix);
                }
            }
        }
        return path;
    }
}
