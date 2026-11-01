package g;

import android.graphics.Matrix;
import android.graphics.Path;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class cif {

    /* renamed from: a, reason: collision with root package name */
    public float f12922a;

    /* renamed from: b, reason: collision with root package name */
    public float f12923b;

    /* renamed from: c, reason: collision with root package name */
    public float f12924c;

    /* renamed from: e, reason: collision with root package name */
    public float f12926e;

    /* renamed from: f, reason: collision with root package name */
    public float f12927f;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f12925d = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f12928g = new ArrayList();

    public cif() {
        h(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 270.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    public final void h(float f2, float f3, float f4) {
        this.f12924c = f2;
        this.f12926e = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.f12927f = f2;
        this.f12922a = f3;
        this.f12923b = (f3 + f4) % 360.0f;
        this.f12925d.clear();
        this.f12928g.clear();
    }

    public final void i(float f2) {
        float f3 = this.f12922a;
        if (f3 == f2) {
            return;
        }
        float f4 = ((f2 - f3) + 360.0f) % 360.0f;
        if (f4 > 180.0f) {
            return;
        }
        float f5 = this.f12926e;
        float f6 = this.f12927f;
        wx wxVar = new wx(f5, f6, f5, f6);
        wxVar.f20254f = this.f12922a;
        wxVar.i = f4;
        this.f12928g.add(new bdb(wxVar));
        this.f12922a = f2;
    }

    public final void j(Matrix matrix, Path path) {
        ArrayList arrayList = this.f12925d;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((go) arrayList.get(i)).b(matrix, path);
        }
    }

    public final void k(float f2, float f3) {
        ele eleVar = new ele();
        eleVar.f15748c = f2;
        eleVar.f15749d = f3;
        this.f12925d.add(eleVar);
        ems emsVar = new ems(eleVar, this.f12926e, this.f12927f);
        float g2 = emsVar.g() + 270.0f;
        float g3 = emsVar.g() + 270.0f;
        i(g2);
        this.f12928g.add(emsVar);
        this.f12922a = g3;
        this.f12926e = f2;
        this.f12927f = f3;
    }
}
