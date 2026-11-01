package g;

import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public final class exi extends cav {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16320a;

    /* renamed from: c, reason: collision with root package name */
    public final Object f16321c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public exi(int i, List list) {
        super(list);
        this.f16320a = i;
        switch (i) {
            case 1:
                super(list);
                this.f16321c = new PointF();
                break;
            case 2:
                super(list);
                fns fnsVar = (fns) ((flj) list.get(0)).p;
                int length = fnsVar != null ? fnsVar.f17106b.length : 0;
                this.f16321c = new fns(new float[length], new int[length]);
                break;
            default:
                this.f16321c = new aof(1.0f, 1.0f);
                break;
        }
    }

    @Override // g.cej
    public final Object b(flj fljVar, float f2) {
        Object obj;
        switch (this.f16320a) {
            case 0:
                aof aofVar = (aof) this.f16321c;
                Object obj2 = fljVar.p;
                if (obj2 == null || (obj = fljVar.r) == null) {
                    throw new IllegalStateException("Missing values for keyframe.");
                }
                aof aofVar2 = (aof) obj2;
                aof aofVar3 = (aof) obj;
                float d2 = din.d(aofVar2.f10563a, aofVar3.f10563a, f2);
                float d3 = din.d(aofVar2.f10564b, aofVar3.f10564b, f2);
                aofVar.f10563a = d2;
                aofVar.f10564b = d3;
                return aofVar;
            case 1:
                return r(fljVar, f2, f2);
            default:
                fns fnsVar = (fns) this.f16321c;
                fns fnsVar2 = (fns) fljVar.p;
                fns fnsVar3 = (fns) fljVar.r;
                fnsVar.getClass();
                int[] iArr = fnsVar2.f17106b;
                int length = iArr.length;
                int[] iArr2 = fnsVar3.f17106b;
                if (length != iArr2.length) {
                    StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
                    sb.append(iArr.length);
                    sb.append(" vs ");
                    throw new IllegalArgumentException(awf.x(sb, iArr2.length, ")"));
                }
                for (int i = 0; i < iArr.length; i++) {
                    fnsVar.f17105a[i] = din.d(fnsVar2.f17105a[i], fnsVar3.f17105a[i], f2);
                    fnsVar.f17106b[i] = aky.g(iArr[i], f2, iArr2[i]);
                }
                return fnsVar;
        }
    }

    @Override // g.cej
    public /* synthetic */ Object o(flj fljVar, float f2, float f3, float f4) {
        switch (this.f16320a) {
            case 1:
                return r(fljVar, f3, f4);
            default:
                return super.o(fljVar, f2, f3, f4);
        }
    }

    public PointF r(flj fljVar, float f2, float f3) {
        Object obj;
        PointF pointF = (PointF) this.f16321c;
        Object obj2 = fljVar.p;
        if (obj2 == null || (obj = fljVar.r) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        float f4 = pointF2.x;
        float g2 = awf.g(pointF3.x, f4, f2, f4);
        float f5 = pointF2.y;
        pointF.set(g2, awf.g(pointF3.y, f5, f3, f5));
        return pointF;
    }
}
