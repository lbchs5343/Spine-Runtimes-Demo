package g;

import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class gch extends cej {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f17883a;

    /* renamed from: c, reason: collision with root package name */
    public final bsb f17884c;
    public final PointF r;
    public final bsb s;

    public gch(bsb bsbVar, bsb bsbVar2) {
        super(Collections.EMPTY_LIST);
        this.f17883a = new PointF();
        this.r = new PointF();
        this.s = bsbVar;
        this.f17884c = bsbVar2;
        p(this.f12740d);
    }

    @Override // g.cej
    public final Object b(flj fljVar, float f2) {
        PointF pointF = this.f17883a;
        float f3 = pointF.x;
        PointF pointF2 = this.r;
        pointF2.set(f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        pointF2.set(pointF2.x, pointF.y);
        return pointF2;
    }

    @Override // g.cej
    public final Object m() {
        PointF pointF = this.f17883a;
        float f2 = pointF.x;
        PointF pointF2 = this.r;
        pointF2.set(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        pointF2.set(pointF2.x, pointF.y);
        return pointF2;
    }

    @Override // g.cej
    public final void p(float f2) {
        bsb bsbVar = this.s;
        bsbVar.p(f2);
        bsb bsbVar2 = this.f17884c;
        bsbVar2.p(f2);
        this.f17883a.set(((Float) bsbVar.m()).floatValue(), ((Float) bsbVar2.m()).floatValue());
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f12742f;
            if (i >= arrayList.size()) {
                return;
            }
            ((fyj) arrayList.get(i)).dq();
            i++;
        }
    }
}
