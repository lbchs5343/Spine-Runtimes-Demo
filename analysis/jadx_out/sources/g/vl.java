package g;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class vl implements fyj, dvz, glt {

    /* renamed from: a, reason: collision with root package name */
    public final fts f20168a;

    /* renamed from: b, reason: collision with root package name */
    public final gfy f20169b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f20170c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f20171d;

    /* renamed from: e, reason: collision with root package name */
    public final Path f20172e;

    /* renamed from: f, reason: collision with root package name */
    public final dph f20173f;

    /* renamed from: g, reason: collision with root package name */
    public final bsb f20174g;
    public final gee h;
    public float i;
    public final grq j;
    public final dph k;

    public vl(fts ftsVar, grq grqVar, gjw gjwVar) {
        Path path = new Path();
        this.f20172e = path;
        this.h = new gee(1, 0);
        this.f20171d = new ArrayList();
        this.j = grqVar;
        dlz dlzVar = gjwVar.f18273a;
        dlz dlzVar2 = gjwVar.f18277f;
        this.f20170c = gjwVar.f18274b;
        this.f20168a = ftsVar;
        if (grqVar.e() != null) {
            cej dq = ((cnc) grqVar.e().h).dq();
            this.f20174g = (bsb) dq;
            dq.l(this);
            grqVar.bg(dq);
        }
        if (grqVar.c() != null) {
            this.f20169b = new gfy(this, grqVar, grqVar.c());
        }
        if (dlzVar2 == null) {
            this.f20173f = null;
            this.k = null;
            return;
        }
        path.setFillType(gjwVar.f18276d);
        cej dq2 = dlzVar2.dq();
        this.f20173f = (dph) dq2;
        dq2.l(this);
        grqVar.bg(dq2);
        cej dq3 = dlzVar.dq();
        this.k = (dph) dq3;
        dq3.l(this);
        grqVar.bg(dq3);
    }

    @Override // g.fyj
    public final void dq() {
        this.f20168a.invalidateSelf();
    }

    @Override // g.glt
    public final void l(Canvas canvas, Matrix matrix, int i) {
        BlurMaskFilter blurMaskFilter;
        if (this.f20170c) {
            return;
        }
        dph dphVar = this.f20173f;
        int i2 = 0;
        int max = (Math.max(0, Math.min(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, (int) ((((i / 255.0f) * ((Integer) this.k.m()).intValue()) / 100.0f) * 255.0f))) << 24) | (dphVar.c(dphVar.n(), dphVar.k()) & 16777215);
        gee geeVar = this.h;
        geeVar.setColor(max);
        bsb bsbVar = this.f20174g;
        if (bsbVar != null) {
            float floatValue = ((Float) bsbVar.m()).floatValue();
            if (floatValue == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                geeVar.setMaskFilter(null);
            } else if (floatValue != this.i) {
                grq grqVar = this.j;
                if (grqVar.ba == floatValue) {
                    blurMaskFilter = grqVar.aj;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(floatValue / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    grqVar.aj = blurMaskFilter2;
                    grqVar.ba = floatValue;
                    blurMaskFilter = blurMaskFilter2;
                }
                geeVar.setMaskFilter(blurMaskFilter);
            }
            this.i = floatValue;
        }
        gfy gfyVar = this.f20169b;
        if (gfyVar != null) {
            gfyVar.h(geeVar);
        }
        Path path = this.f20172e;
        path.reset();
        while (true) {
            ArrayList arrayList = this.f20171d;
            if (i2 >= arrayList.size()) {
                canvas.drawPath(path, geeVar);
                buj.bd();
                return;
            } else {
                path.addPath(((gjf) arrayList.get(i2)).p(), matrix);
                i2++;
            }
        }
    }

    @Override // g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f20172e;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f20171d;
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
                this.f20171d.add((gjf) dvzVar);
            }
        }
    }
}
